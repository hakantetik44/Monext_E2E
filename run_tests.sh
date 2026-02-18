#!/bin/bash
# =============================================================================
# Script d'exécution des tests Robot Framework avec Allure Report
# Framework de test automatisé pour Monext
# =============================================================================

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Configuration
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
TESTS_DIR="${PROJECT_DIR}/tests"
REPORTS_DIR="${PROJECT_DIR}/reports"
ALLURE_RESULTS="${PROJECT_DIR}/allure-results"
ALLURE_REPORT="${PROJECT_DIR}/allure-report"
SCREENSHOTS_DIR="${PROJECT_DIR}/screenshots"
VIDEOS_DIR="${PROJECT_DIR}/videos"

# Créer les répertoires nécessaires
mkdir -p "${REPORTS_DIR}" "${ALLURE_RESULTS}" "${SCREENSHOTS_DIR}" "${VIDEOS_DIR}"

# Fonction d'affichage du header
print_header() {
    echo -e "${CYAN}"
    echo "╔══════════════════════════════════════════════════════════════════╗"
    echo "║                                                                  ║"
    echo "║          🧪 MONEXT - Framework de Tests E2E 🧪                   ║"
    echo "║                                                                  ║"
    echo "║          Robot Framework + Allure Report + Vidéo                 ║"
    echo "║                                                                  ║"
    echo "╚══════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
}

# Fonction d'aide
show_help() {
    echo -e "${YELLOW}Usage:${NC} $0 [OPTIONS]"
    echo ""
    echo -e "${GREEN}Options:${NC}"
    echo "  -a, --all             Exécuter tous les tests"
    echo "  -s, --smoke           Exécuter les tests de fumée uniquement"
    echo "  -t, --test FILE       Exécuter un fichier de test spécifique"
    echo "  -i, --include TAG     Inclure les tests avec un tag spécifique"
    echo "  -e, --exclude TAG     Exclure les tests avec un tag spécifique"
    echo "  -r, --report          Générer et ouvrir le rapport Allure"
    echo "  -c, --clean           Nettoyer les anciens rapports"
    echo "  -h, --help            Afficher cette aide"
    echo ""
    echo -e "${BLUE}Exemples:${NC}"
    echo "  $0 --all              # Tous les tests"
    echo "  $0 --smoke            # Tests de fumée"
    echo "  $0 -t test_page_accueil.robot"
    echo "  $0 -i critical        # Tests critiques"
    echo "  $0 --all --report     # Tous les tests + rapport"
}

# Nettoyer les anciens rapports
clean_reports() {
    echo -e "${YELLOW}🧹 Nettoyage des anciens rapports...${NC}"
    rm -rf "${ALLURE_RESULTS}"/*
    rm -rf "${ALLURE_REPORT}"/*
    rm -rf "${REPORTS_DIR}"/*
    rm -rf "${SCREENSHOTS_DIR}"/*
    echo -e "${GREEN}✅ Nettoyage terminé${NC}"
}

# Exécuter les tests
run_tests() {
    local test_args="$1"
    local timestamp=$(date +"%Y%m%d_%H%M%S")
    
    echo -e "${BLUE}🚀 Lancement des tests...${NC}"
    echo -e "${CYAN}Arguments: ${test_args}${NC}"
    echo ""
    
    # Commande Robot Framework avec Allure
    robot \
        --listener allure_robotframework \
        --outputdir "${REPORTS_DIR}" \
        --report report_${timestamp}.html \
        --log log_${timestamp}.html \
        --output output_${timestamp}.xml \
        --variable ALLURE_RESULTS:${ALLURE_RESULTS} \
        --loglevel INFO \
        ${test_args}
    
    local exit_code=$?
    
    if [ $exit_code -eq 0 ]; then
        echo -e "${GREEN}✅ Tous les tests sont passés !${NC}"
    else
        echo -e "${RED}❌ Certains tests ont échoué (code: ${exit_code})${NC}"
    fi
    
    return $exit_code
}

# Générer le rapport Allure
generate_allure_report() {
    echo -e "${MAGENTA}📊 Génération du rapport Allure...${NC}"
    
    # Vérifier si allure est installé
    if ! command -v allure &> /dev/null; then
        echo -e "${RED}❌ Allure n'est pas installé.${NC}"
        echo -e "${YELLOW}Installez-le avec: brew install allure${NC}"
        return 1
    fi
    
    # Générer le rapport
    allure generate "${ALLURE_RESULTS}" --clean -o "${ALLURE_REPORT}"
    
    echo -e "${GREEN}✅ Rapport généré: ${ALLURE_REPORT}${NC}"
}

# Ouvrir le rapport Allure
open_allure_report() {
    echo -e "${CYAN}🌐 Ouverture du rapport Allure...${NC}"
    
    if [ -d "${ALLURE_REPORT}" ]; then
        allure open "${ALLURE_REPORT}"
    else
        echo -e "${RED}❌ Aucun rapport trouvé. Exécutez d'abord les tests.${NC}"
    fi
}

# Script principal
main() {
    print_header
    
    # Paramètres par défaut
    local run_all=false
    local run_smoke=false
    local test_file=""
    local include_tag=""
    local exclude_tag=""
    local generate_report=false
    local do_clean=false
    
    # Parser les arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -a|--all)
                run_all=true
                shift
                ;;
            -s|--smoke)
                run_smoke=true
                shift
                ;;
            -t|--test)
                test_file="$2"
                shift 2
                ;;
            -i|--include)
                include_tag="$2"
                shift 2
                ;;
            -e|--exclude)
                exclude_tag="$2"
                shift 2
                ;;
            -r|--report)
                generate_report=true
                shift
                ;;
            -c|--clean)
                do_clean=true
                shift
                ;;
            -h|--help)
                show_help
                exit 0
                ;;
            *)
                echo -e "${RED}❌ Option inconnue: $1${NC}"
                show_help
                exit 1
                ;;
        esac
    done
    
    # Nettoyer si demandé
    if [ "$do_clean" = true ]; then
        clean_reports
    fi
    
    # Construire les arguments de test
    local test_args=""
    
    if [ -n "$include_tag" ]; then
        test_args="--include ${include_tag}"
    fi
    
    if [ -n "$exclude_tag" ]; then
        test_args="${test_args} --exclude ${exclude_tag}"
    fi
    
    # Exécuter les tests
    if [ "$run_smoke" = true ]; then
        echo -e "${YELLOW}🔥 Exécution des tests de fumée...${NC}"
        run_tests "${test_args} ${TESTS_DIR}/test_smoke.robot"
    elif [ -n "$test_file" ]; then
        echo -e "${YELLOW}📄 Exécution du fichier: ${test_file}${NC}"
        run_tests "${test_args} ${TESTS_DIR}/${test_file}"
    elif [ "$run_all" = true ]; then
        echo -e "${YELLOW}🔄 Exécution de tous les tests...${NC}"
        run_tests "${test_args} ${TESTS_DIR}"
    else
        echo -e "${YELLOW}ℹ️  Aucun test spécifié. Utilisation de --smoke par défaut.${NC}"
        run_tests "${test_args} --include smoke ${TESTS_DIR}"
    fi
    
    local test_exit_code=$?
    
    # Générer le rapport si demandé
    if [ "$generate_report" = true ]; then
        generate_allure_report
        open_allure_report
    fi
    
    exit $test_exit_code
}

# Point d'entrée
main "$@"
