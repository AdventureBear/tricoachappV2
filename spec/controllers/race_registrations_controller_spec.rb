require 'spec_helper'

describe RaceRegistrationsController do

  before do
    @race = Race.create!(race_attributes)
  end

  context "when not signed in" do

    before do
      session[:user_id] = nil
    end

    it "cannot access create" do
      post :create, race_id: @race

      expect(response).to redirect_to(new_session_url)
    end

    it "cannot access destroy" do
      delete :destroy, id: 1, race_id: @race

      expect(response).to redirect_to(new_session_url)
    end
  end
end