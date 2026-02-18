# -*- coding: utf-8 -*-
from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

class BasePage:
    TIMEOUT = 10
    def __init__(self):
        self._selenium = None
    @property
    def selenium(self):
        if self._selenium is None:
            self._selenium = BuiltIn().get_library_instance('SeleniumLibrary')
        return self._selenium
    def _loc(self, locator):
        if locator.startswith("#") or locator.startswith(".") or not locator.startswith(("css:", "xpath:", "id:")):
            return f"css:{locator}"
        return locator
    @keyword("Wait Until Visible")
    def wait_until_visible(self, locator, timeout=None):
        self.selenium.wait_until_element_is_visible(self._loc(locator), timeout or self.TIMEOUT)
    @keyword("Wait Until Clickable")
    def wait_until_clickable(self, locator, timeout=None):
        self.selenium.wait_until_element_is_enabled(self._loc(locator), timeout or self.TIMEOUT)
    @keyword("Wait Page Load")
    def wait_page_load(self):
        self.selenium.wait_for_condition("return document.readyState === 'complete'", self.TIMEOUT)
    @keyword("Click Element")
    def click_element(self, locator, use_js=False):
        loc = self._loc(locator)
        self.wait_until_visible(locator)
        if use_js:
            clean_loc = loc.replace('css:', '').replace('"', '\\"')
            self.selenium.execute_javascript(f'document.querySelector("{clean_loc}").click();')
        else:
            self.selenium.click_element(loc)
    @keyword("Input Text")
    def input_text(self, locator, text):
        loc = self._loc(locator)
        self.scroll_to_element(locator)
        self.wait_until_visible(locator)
        self.selenium.clear_element_text(loc)
        self.selenium.input_text(loc, text)
    @keyword("Get Element Text")
    def get_element_text(self, locator):
        self.wait_until_visible(locator)
        return self.selenium.get_text(self._loc(locator))
    @keyword("Is Element Visible")
    def is_element_visible(self, locator):
        try:
            self.selenium.element_should_be_visible(self._loc(locator))
            return True
        except:
            return False
    @keyword("URL Should Contain")
    def url_should_contain(self, text):
        return text in self.selenium.get_location()
    @keyword("Open Browser URL")
    def open_browser_url(self, url, browser="chrome"):
        self.selenium.open_browser(url, browser)
        self.selenium.maximize_browser_window()
        self.selenium.set_selenium_implicit_wait(self.TIMEOUT)
    @keyword("Navigate To")
    def navigate_to(self, url):
        self.selenium.go_to(url)
        self.wait_page_load()
    @keyword("Close Suite Browser")
    def close_suite_browser(self):
        self.selenium.close_all_browsers()
    @keyword("Scroll To Element")
    def scroll_to_element(self, locator):
        self.selenium.scroll_element_into_view(self._loc(locator))
    @keyword("Scroll To Bottom")
    def scroll_to_bottom(self):
        self.selenium.execute_javascript("window.scrollTo(0, document.body.scrollHeight);")
    @keyword("Take Screenshot")
    def take_screenshot(self, name="capture"):
        self.selenium.capture_page_screenshot(f"screenshots/{name}.png")
    @keyword("Execute JavaScript")
    def execute_js(self, script):
        return self.selenium.execute_javascript(script)
