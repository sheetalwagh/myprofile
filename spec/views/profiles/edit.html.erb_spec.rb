require 'rails_helper'

RSpec.describe "profiles/edit", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :email => "MyString",
      :address => "MyString",
      :companyname => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_email[name=?]", "profile[email]"

      assert_select "input#profile_address[name=?]", "profile[address]"

      assert_select "input#profile_companyname[name=?]", "profile[companyname]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end
