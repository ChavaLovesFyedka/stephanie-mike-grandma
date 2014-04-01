require 'spec_helper'

describe "variables/edit" do
  before(:each) do
    @variable = assign(:variable, stub_model(Variable))
  end

  it "renders the edit variable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variable_path(@variable), "post" do
    end
  end
end
