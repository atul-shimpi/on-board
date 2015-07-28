require 'rails_helper'

RSpec.describe "personal_details/index", :type => :view do
  before(:each) do
    assign(:personal_details, [
      PersonalDetail.create!(),
      PersonalDetail.create!()
    ])
  end

  it "renders a list of personal_details" do
    render
  end
end
