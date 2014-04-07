require 'spec_helper'

describe "letters/index" do
  before(:each) do
    assign(:letters, [
      stub_model(Letter,
        :var1 => "MyText",
        :var2 => "MyText",
        :var3 => "MyText",
        :var4 => "MyText",
        :var5 => "MyText"
      ),
      stub_model(Letter,
        :var1 => "MyText",
        :var2 => "MyText",
        :var3 => "MyText",
        :var4 => "MyText",
        :var5 => "MyText"
      )
    ])
  end

  it "renders a list of letters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
