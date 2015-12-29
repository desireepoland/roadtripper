require 'rails_helper'

RSpec.describe TripsController, type: :controller do

  describe "GET #home" do
    it "renders the home view" do
      get :home
      expect(subject).to render_template :home
    end
  end

  describe "GET #index" do
    it "renders the index view" do
      get :index
      expect(subject).to render_template :index
    end
  end

end
