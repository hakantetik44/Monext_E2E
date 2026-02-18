#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
RESULTS_DIR="${BASE_DIR}/allure-results"
REPORTS_DIR="${BASE_DIR}/reports"

# Clean everything
rm -rf "${RESULTS_DIR}" "${REPORTS_DIR}" "${BASE_DIR}/allure-report" "${BASE_DIR}/screenshots"
mkdir -p "${RESULTS_DIR}" "${REPORTS_DIR}" "${BASE_DIR}/screenshots"

# Set PYTHONPATH
export PYTHONPATH="${BASE_DIR}:${BASE_DIR}/pages:${BASE_DIR}/locators"

source venv/bin/activate

echo "--- Starting Robot Framework Tests ---"
# Use the listener with an explicit output directory for allure results
python3 -m robot.run --listener "allure_robotframework;${RESULTS_DIR}" --outputdir "${REPORTS_DIR}" tests/test_monext.robot

echo "--- Test Run Finished ---"
echo "Checking results folder: ${RESULTS_DIR}"
ls -la "${RESULTS_DIR}"

echo "--- Opening Allure Report ---"
allure serve "${RESULTS_DIR}"
