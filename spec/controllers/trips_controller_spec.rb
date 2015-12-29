require 'rails_helper'

RSpec.describe TripsController, type: :controller do

  let(:trip) do
    Trip.create(name: "Road Trip", description: "This is gonna be awesome")
  end

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

  describe "GET #show" do
    it "renders the show view" do
      get :show, id: trip.id
      expect(subject).to render_template :show
    end
  end

  describe "GET #new" do
    it "renders the new view" do
      get :new
      expect(subject).to render_template :form
    end
  end

  describe "GET #edit" do
    it "renders the edit view" do
      get :edit, id: trip.id
      expect(subject).to render_template :form
    end
  end

  describe "POST 'create'" do
    let(:trip_params) do
      {
        trip: {
          name: "Spring Break",
          description: "Somewhere on a nice beach"
        }
      }
    end

    it "redirects to the show view" do
      post :create, trip_params
      expect(subject).to redirect_to trips_path
    end
  end

end
