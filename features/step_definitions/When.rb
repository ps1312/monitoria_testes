When(/^I click on ([^"]*) link$/) do |link|
  click_link(link)
end

When(/^I fill ([^"]*) with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

When(/^I click on ([^"]*) button$/) do |button|
  click_button(button)
end

When(/^I leave ([^"]*) blank$/) do |input|
 fill_in(input, :with => nil)
end