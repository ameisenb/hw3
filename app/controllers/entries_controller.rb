class EntriesController < ApplicationController
  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
    
  end

  def new
    # render contacts/new view with new Contact form
  end

  def create

    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occured_on"] = params["occured_on"]

    @entry["place_id"] = params["place_id"]

    @entry.save

    redirect_to "/places/#{@entry["place_id"]}"
  end
end