Given /^I have a gadget called "([^"]*)"$/ do |gadget_name|
  Factory :gadget, :name => gadget_name
end

Then /^I should see all of the gadgets that I've created$/ do
  Gadget.all.each do |g|
    assert page.has_content?(g.name)
  end  
end
