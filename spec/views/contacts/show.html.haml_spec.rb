require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Office Phone/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Permalink/)
  end
end
