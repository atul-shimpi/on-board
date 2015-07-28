require 'rails_helper'

RSpec.describe "personal_details/edit", :type => :view do
  before(:each) do
    @personal_detail = assign(:personal_detail, PersonalDetail.create!())
  end

  it "renders the edit personal_detail form" do
    render

    assert_select "form[action=?][method=?]", personal_detail_path(@personal_detail), "post" do
    end
  end
end
