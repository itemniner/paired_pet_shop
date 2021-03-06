require 'rails_helper'

RSpec.describe "welcome index page", type: :feature do
  it "can see welcome and sheleters link" do

    visit "/"
    
    expect(page).to have_content("Adopt Don't Shop!")
    expect(page).to have_link("Shelter List")
  end
end

  RSpec.describe WelcomeController, type: :controller do
    describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
