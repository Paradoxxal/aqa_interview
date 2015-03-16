Given(/^I open google translate$/) do
  visit URL
end

Given(/^I choose the original language - "(.*?)"$/) do |language|
  find("//*[@id='gt-sl-gms']").click
  find("//div[@id='gt-sl-gms-menu']//div[text()='#{language}']").click
end

Given(/^I choose the target language - "(.*?)"$/) do |language|
  find("//*[@id='gt-tl-gms']/div[2]").click
  find("//div[@id='gt-tl-gms-menu']//div[text()='#{language}']").click
end

Then(/^I enter "(.*?)" in the source textbox$/) do |text|
  find("//*[@id='source']").set(text)
end

Then(/^I translate the text$/) do
  find("//*[@id='gt-submit']").click
end

Then(/^I upload "(.*?)"/) do |filename|
  find("//*[@id='select_document']/a").click
  element = find("//*[@id='file']")
  element.native.send_keys(Dir.pwd + '/'+(filename))
end

Then(/^I should see "(.*?)" in textbox$/) do |text|
  find("//*[@id='result_box']").text.should == text
end

Then(/^I should see "(.*?)" in window$/) do |text|
  find('html/body/pre').text.should == text
end

