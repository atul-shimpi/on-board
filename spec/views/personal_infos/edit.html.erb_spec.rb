require 'rails_helper'

RSpec.describe "personal_infos/edit", :type => :view do
  before(:each) do
    @personal_info = assign(:personal_info, PersonalInfo.create!())
  end

  it "renders the edit personal_info form" do
    render

    assert_select "form[action=?][method=?]", personal_info_path(@personal_info), "post" do
    end
  end
end
