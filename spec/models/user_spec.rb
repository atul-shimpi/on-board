require 'rails_helper'

describe User do
  it 'is valid with a first_name, last_name, email, role_id and password' do
    user = User.create(
                   first_name: 'Atul',
                   last_name: 'Shimpi',
                   email: 'shimpiatul@hotmail.com',
                   password: 'Atul@1506'
                  )
    expect(user).to be_valid
  end
end