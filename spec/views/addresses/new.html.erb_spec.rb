require 'rails_helper'

RSpec.describe "addresses/new", :type => :view do
  before(:each) do
    assign(:address, Address.new(
      :type_of_address => 1,
      :address => "MyText",
      :state_id => 1,
      :city_id => 1
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_type_of_address[name=?]", "address[type_of_address]"

      assert_select "textarea#address_address[name=?]", "address[address]"

      assert_select "input#address_state_id[name=?]", "address[state_id]"

      assert_select "input#address_city_id[name=?]", "address[city_id]"
    end
  end
end
