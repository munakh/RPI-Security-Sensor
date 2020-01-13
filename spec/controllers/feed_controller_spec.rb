require 'rails_helper'

RSpec.describe FeedController, type: :controller do

  describe "GET #images" do
    it "returns http success" do
      get :images
      expect(response).to have_http_status(:success)
    end
  end

end