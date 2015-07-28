require 'rails_helper'

RSpec.describe "personal_details/show", :type => :view do
  before(:each) do
    @personal_detail = assign(:personal_detail, PersonalDetail.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
