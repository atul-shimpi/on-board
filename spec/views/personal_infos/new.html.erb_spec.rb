require 'rails_helper'

RSpec.describe "personal_infos/new", :type => :view do
  before(:each) do
    assign(:personal_info, PersonalInfo.new())
  end

  it "renders new personal_info form" do
    render

    assert_select "form[action=?][method=?]", personal_infos_path, "post" do
    end
  end
end
