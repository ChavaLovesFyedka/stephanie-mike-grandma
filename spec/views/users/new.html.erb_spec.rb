require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :var1 => "MyText",
      :var2 => "MyText",
      :var3 => "MyText",
      :var4 => "MyText",
      :var5 => "MyText"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "textarea#user_var1[name=?]", "user[var1]"
      assert_select "textarea#user_var2[name=?]", "user[var2]"
      assert_select "textarea#user_var3[name=?]", "user[var3]"
      assert_select "textarea#user_var4[name=?]", "user[var4]"
      assert_select "textarea#user_var5[name=?]", "user[var5]"
    end
  end
end
