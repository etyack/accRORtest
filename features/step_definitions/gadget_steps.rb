# Overview
Then /^I should see all of the gadgets that I've created$/ do
  Gadget.all.each do |g|
    assert page.has_content?(g.name)
  end  
end

Given /^I have a gadget called "([^"]*)"(?: that weighs (\d+) (\w+))?$/ do |gadget_name, weight, weight_unit|
  options = {:name => gadget_name}
  weight and weight_unit and options.merge!(:weight => weight, :weight_unit => weight_unit)
  Factory :gadget, options
end

When /^I click "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should be viewing the gadget detail page for "([^"]*)"$/ do |gadget_name|
  @gadget = Gadget.find_by_name(gadget_name)
  steps %Q{Then I should be on the detail page for that gadget}
end

# Detail
Given /^I am viewing the gadget detail page for "([^"]*)"$/ do |gadget_name|
  gadget = Gadget.find_by_name(gadget_name)
  visit(detail_gadget_path(gadget))
end

Then /^I should see that "([^"]*)" weighs (\d+) (\w+)$/ do |gadget_name, weight, weight_unit|
  gadget = Gadget.find_by_name(gadget_name)
  within("##{gadget.verbose_id}") do
    assert page.has_content?(gadget.complete_weight)
  end
end
