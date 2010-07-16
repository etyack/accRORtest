require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Gadget do
  it "should have a complete weight" do
    g = Factory :gadget, :weight => 400, :weight_unit => "ounces"
    g.complete_weight.should == "400 ounces"
  end

  it "should have an id-ified name" do
    g = Factory :gadget, :name => "The Blundering Waffle Dynamo"
    g.idified_name.should == "the_blundering_waffle_dynamo"
  end

  it "should have a verbose id" do
    g = Factory :gadget, :name => "The Blundering Waffle Dynamo"
    g.verbose_id.should == "gadget_#{g[:id]}_the_blundering_waffle_dynamo"
  end 
end
