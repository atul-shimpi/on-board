require 'rails_helper'

RSpec.describe "personal_infos/index", :type => :view do
  before(:each) do
    assign(:personal_infos, [
      PersonalInfo.create!(),
      PersonalInfo.create!()
    ])
  end

  it "renders a list of personal_infos" do
    render
  end
end
