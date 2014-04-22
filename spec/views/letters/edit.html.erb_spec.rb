require 'spec_helper'

describe "letters/edit" do
  before(:each) do
    @letter = assign(:letter, stub_model(Letter,
      :var1 => "MyText",
      :var2 => "MyText",
      :var3 => "MyText",
      :var4 => "MyText",
      :var5 => "MyText"
    ))
  end

  it "renders the edit letter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", letter_path(@letter), "post" do
      assert_select "textarea#letter_var1[name=?]", "letter[var1]"
      assert_select "textarea#letter_var2[name=?]", "letter[var2]"
      assert_select "textarea#letter_var3[name=?]", "letter[var3]"
      assert_select "textarea#letter_var4[name=?]", "letter[var4]"
      assert_select "textarea#letter_var5[name=?]", "letter[var5]"
    end
  end
end
