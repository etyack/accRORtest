require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Gadget do
  it "should have a complete weight" do
    g = Factory :gadget, :weight => 400, :weight_unit => "ounces"
    g.complete_weight.should == "400 ounces"
  end
end
