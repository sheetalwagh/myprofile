require 'rails_helper'

RSpec.describe "profiles/show", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :email => "Email",
      :address => "Address",
      :companyname => "Companyname",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Companyname/)
    expect(rendered).to match(//)
  end
end
