# frozen_string_literal: true

require "watir"
require "webdrivers"

RSpec.describe Tutorial do
  it "should explore California" do
    browser = Watir::Browser.new
    browser.goto "https://explorecalifornia.org/contact.htm"

    expect(browser.text_field(id: "name").exists?).to eq true
    expect(browser.textarea(id: "comments").exists?).to eq true

    browser.text_field(id: "name").set "Yan Romanovich"
    browser.select_list(id: "state").select  "Texas"
    
    backpack = browser.checkbox(id: "backpack")
    browser.execute_script("arguments[0].scrollIntoView();", backpack)
    backpack.click

    browser.radio(id: "newsletter_yes").set

    expect(browser.text_field(id: "name").value).to match("Yan Romanovich")
    expect(browser.select_list(id: "state").text).to match("Texas")
    expect(backpack.set?).to eq true
    expect(browser.radio(id: "newsletter_yes").set?).to eq true
  end
end
