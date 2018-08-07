#!ruby

# Example Firefox script with common profile settings.

require 'watir'

profile = Selenium::WebDriver::Firefox::Profile.new
profile['browser.startup.homepage_override.mstone'] = 'ignore'
profile['browser.startup.homepage'] = 'about:blank'
profile['devtools.jsonview.enabled'] = false
profile['startup.homepage_welcome_url'] = 'about:blank'
profile['startup.homepage_welcome_url.additional'] = 'about:blank'
profile['toolkit.telemetry.reportingpolicy.firstRun'] = false
profile['xpinstall.signatures.required'] = false

browser = Watir::Browser.new :firefox, profile: profile

browser.goto 'https://example.com'

browser.text_field(name: 'user').set('myUsername')
browser.text_field(name: 'password').set('myPassword')

confirm = true
if confirm
  puts "CLICK_TO_CONTINUE"
  any_key = gets.chomp
end

browser.goto 'https://example.com/data.json'
File.open('data.json','w') do |fh|
  fh.puts browser.text
end
