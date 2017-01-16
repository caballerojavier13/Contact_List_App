require 'spec_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile => "Mobile",
        :home_phone => "Home Phone",
        :office_phone => "Office Phone",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :permalink => "Permalink"
      ),
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile => "Mobile",
        :home_phone => "Home Phone",
        :office_phone => "Office Phone",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :permalink => "Permalink"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Office Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
