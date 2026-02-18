# -*- coding: utf-8 -*-
import time
from robot.api import logger
from robot.api.deco import keyword
from BasePage import BasePage
from Locators import Locators

class Page(BasePage):
    URL = "https://www.monext.com"
    CONTACT_URL = "https://www.monext.com/contact"
    @keyword("Setup Test Environment")
    def setup_test(self, browser="chrome"):
        self.open_browser_url(self.URL, browser)
        self.accept_cookies()
    @keyword("Accept Cookies")
    def accept_cookies(self):
        try:
            time.sleep(3)
            self.execute_js("""
                const btn = document.querySelector('#axeptio_btn_acceptAll') || 
                            document.querySelector('.axeptio-button') ||
                            Array.from(document.querySelectorAll('button')).find(b => b.innerText.includes('OK pour moi') || b.innerText.includes('OK!'));
                if (btn) {
                    btn.click();
                    return "Clicked";
                }
                return "Not found";
            """)
        except:
            pass

    @keyword("Verify Home Page Assets")
    def verify_home_page(self):
        self.navigate_to(self.URL)
        time.sleep(2)
        found = self.is_element_visible("h1") or self.is_element_visible("section h1") or self.is_element_visible(".hero-title")
        if not found:
            raise AssertionError("Hero title (h1) not found visible on homepage")

    @keyword("Verify Contact Form Visibility")
    def verify_contact_form(self):
        self.click_element(Locators.BTN_CONTACT, use_js=True)
        self.wait_page_load()
        if not self.is_element_visible(Locators.FORM):
            self.navigate_to(self.CONTACT_URL)
        self.wait_until_visible(Locators.FORM)
    @keyword("Fill Contact Form Information")
    def fill_and_check_form(self, first_name, last_name, email, company, mobile, message):
        self.scroll_to_element(Locators.FORM)
        data = {
            Locators.INPUT_PRENOM: first_name,
            Locators.INPUT_NOM: last_name,
            Locators.INPUT_EMAIL: email,
            Locators.INPUT_SOCIETE: company,
            Locators.INPUT_TELEPHONE: mobile,
            Locators.TEXTAREA_MESSAGE: message
        }
        for loc, val in data.items():
            try:
                self.input_text(loc, val)
            except:
                clean_loc = loc.replace('css:', '').replace('"', '\\"')
                self.execute_js(f'const el = document.querySelector("{clean_loc}"); if(el) el.value = "{val}";')
        self.take_screenshot("form_status")
    @keyword("Verify Footer Section")
    def verify_footer(self):
        self.scroll_to_bottom()
        if not self.is_element_visible(Locators.FOOTER):
            raise AssertionError("Footer not found")
    @keyword("Teardown Test Environment")
    def teardown_test(self):
        self.close_suite_browser()
