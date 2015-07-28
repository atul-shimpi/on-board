require 'rails_helper'

RSpec.describe "addresses/show", :type => :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :type_of_address => 1,
      :address => "MyText",
      :state_id => 2,
      :city_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
