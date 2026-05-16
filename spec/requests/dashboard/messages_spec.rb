require 'rails_helper'

RSpec.describe "Dashboard::Messages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dashboard/messages/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/dashboard/messages/show"
      expect(response).to have_http_status(:success)
    end
  end

end
