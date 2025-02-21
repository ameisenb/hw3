class EntriesController < ApplicationController

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