require 'rails_helper'

RSpec.describe "personal_infos/show", :type => :view do
  before(:each) do
    @personal_info = assign(:personal_info, PersonalInfo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
