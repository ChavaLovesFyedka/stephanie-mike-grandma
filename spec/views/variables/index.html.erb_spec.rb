require 'spec_helper'

describe "variables/index" do
  before(:each) do
    assign(:variables, [
      stub_model(Variable),
      stub_model(Variable)
    ])
  end

  it "renders a list of variables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
