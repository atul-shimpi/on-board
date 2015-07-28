require 'rails_helper'

RSpec.describe "personal_details/new", :type => :view do
  before(:each) do
    assign(:personal_detail, PersonalDetail.new())
  end

  it "renders new personal_detail form" do
    render

    assert_select "form[action=?][method=?]", personal_details_path, "post" do
    end
  end
end
