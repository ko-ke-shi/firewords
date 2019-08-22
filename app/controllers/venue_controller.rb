class VenueController < ApplicationController
  def show
    @poems = Poem.all
  end
end
