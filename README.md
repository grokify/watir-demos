# Watir Examples

This repo contains example code for using [Watir](http://watir.com/), aka Web Application Testing In Ruby.

Requirements:

* Firefox
* geckodriver

## Firefox

This example uses Firefox. On OS-X, it's necessary to have an Application named "Firefox". "Firefox Developer Edition" won't be recognized by default.

### Troubleshooting

If you do not have an app named "Firefox", you will get the following error:

`/Users/<username>/.rvm/gems/ruby-2.6.3/gems/selenium-webdriver-3.142.6/lib/selenium/webdriver/firefox/binary.rb:135:in 'path': Could not find Firefox binary (os=macosx). Make sure Firefox is installed or set the path manually with Selenium::WebDriver::Firefox::Binary.path= (Selenium::WebDriver::Error::WebDriverError)`

## geckodriver

[Geckodriver](https://github.com/mozilla/geckodriver), a WebDriver for Firefox, is also necessary. When upgrading Firefox, upgrading geckodriver may also be necessary.

On OS-X install this by getting the binary from the releases directory and placing the binary in your path.

More information is available below:

* Geckodriver Releases: https://github.com/mozilla/geckodriver/releases
* Stack Overflow Answer: https://stackoverflow.com/questions/26566821/watir-hang-up-after-new-browser

### Troubleshooting

Missing the `geckodriver` executable will result in the following error:

`/Users/<username>/.rvm/gems/ruby-2.6.3/gems/selenium-webdriver-3.142.6/lib/selenium/webdriver/common/service.rb:136:in 'binary_path': Unable to find Mozilla geckodriver. Please download the server from (Selenium::WebDriver::Error::WebDriverError)
https://github.com/mozilla/geckodriver/releases and place it somewhere on your PATH.
More info at https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver.`