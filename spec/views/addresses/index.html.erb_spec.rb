require 'rails_helper'

RSpec.describe "addresses/index", :type => :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :type_of_address => 1,
        :address => "MyText",
        :state_id => 2,
        :city_id => 3
      ),
      Address.create!(
        :type_of_address => 1,
        :address => "MyText",
        :state_id => 2,
        :city_id => 3
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
