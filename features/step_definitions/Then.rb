Then(/^I should see ([^"]*)$/) do |text|
  page.has_content?(text)
end