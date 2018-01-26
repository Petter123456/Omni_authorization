require 'rails_helper'

RSpec.feature "UsersLoginToTheirProfiles", type: :feature do

  let!(:user) do # let method creates a variable based on symbol
    User.create!(
      github_id: auth['uid'],
      name: auth['info']['name'],
      email: auth['info']['email']
    )

    before do
      visiting root_path
    end

    it "check if user is logged in to github" do
      expect(session[:user_id]).to_not be_nil
    end

    # it "check if user is logged in to github" do
    #   expect(session[:user_id]).to_not be_nil
    # end

  end
end
