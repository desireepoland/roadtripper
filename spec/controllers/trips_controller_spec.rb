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

    it "redirects to the trips index view" do
      post :create, trip_params
      expect(subject).to redirect_to trips_path
    end
  end

  describe "PATCH 'update'" do
    let(:trip_params) do
      {
        trip: {
          name: "Ski Trip",
          description: "Snow!"
        }
      }
    end

    it "redirects to the show view" do
      patch :update, { id: trip.id, trip: trip_params }
      expect(subject).to redirect_to trip_path
    end
  end

  describe "DELETE 'destroy'" do
    it "redirects to the index view for trips" do
      delete :destroy, id: trip.id
      expect(subject).to redirect_to trips_path
    end
  end

  describe "GET #select" do
    let(:trip) do
      Trip.create(name: "Road Trip", description: "This is gonna be awesome")
    end

    let(:params) do
      {
      trip: {
        id: "1",
        name: "A Trip",
        description: "Going on a trip"
        }
      }
    end

    it "redirects to the show view for the trip that was selected" do
      trip_id = params[:trip][:id]
      get :select, trip: { id: trip_id }
      expect(subject).to redirect_to trip_path(params[:trip][:id])
    end
  end

end
