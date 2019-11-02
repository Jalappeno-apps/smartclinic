require "selenium-webdriver"

chrome_bin = ENV.fetch("GOOGLE_CHROME_SHIM", nil)

chrome_opts = chrome_bin ? { binary: chrome_bin } : {}

Capybara.register_driver :selenium do |app|
  capabilities = {
    chromeOptions: {
      args: %w[
        headless disable-gpu disable-dev-shm-usage
        no-sandbox disable-popup-blocking disable-extensions
        --enable-features=NetworkService,NetworkServiceInProcess
      ]
    }.merge(chrome_opts)
  }

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      capabilities
    )
  )
end

Capybara.ignore_hidden_elements = true
