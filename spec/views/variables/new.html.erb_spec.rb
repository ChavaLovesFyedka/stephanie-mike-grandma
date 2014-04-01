require 'spec_helper'

describe "variables/new" do
  before(:each) do
    assign(:variable, stub_model(Variable).as_new_record)
  end

  it "renders new variable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variables_path, "post" do
    end
  end
end
