require "selenium-webdriver"
require "test/unit"

class GoogleSearch < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "https://duckduckgo.com"
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end
  def test_google_search
    @driver.get(@base_url)
    @driver.find_element(:name, "q").clear
    @driver.find_element(:name, "q").send_keys "imagine"
    @driver.find_element(:name, "q").submit
  end
  def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  def verify(&blk)
    yield
  rescue Test::Unit::AssertionFailedError => ex
    @verification_errors << ex
  end
end
