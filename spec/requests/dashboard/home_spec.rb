require 'rails_helper'

RSpec.describe "Dashboard::Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dashboard/home/index"
      expect(response).to have_http_status(:success)
    end
  end

end
