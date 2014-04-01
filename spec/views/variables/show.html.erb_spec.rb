require 'spec_helper'

describe "variables/show" do
  before(:each) do
    @variable = assign(:variable, stub_model(Variable))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
