require 'rails_helper'

RSpec.describe "profiles/index", :type => :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :email => "Email",
        :address => "Address",
        :companyname => "Companyname",
        :user => nil
      ),
      Profile.create!(
        :email => "Email",
        :address => "Address",
        :companyname => "Companyname",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Companyname".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
