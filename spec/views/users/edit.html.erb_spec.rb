require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :var1 => "MyText",
      :var2 => "MyText",
      :var3 => "MyText",
      :var4 => "MyText",
      :var5 => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "textarea#user_var1[name=?]", "user[var1]"
      assert_select "textarea#user_var2[name=?]", "user[var2]"
      assert_select "textarea#user_var3[name=?]", "user[var3]"
      assert_select "textarea#user_var4[name=?]", "user[var4]"
      assert_select "textarea#user_var5[name=?]", "user[var5]"
    end
  end
end
