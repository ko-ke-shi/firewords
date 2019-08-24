class PoemBroadcastJob < ApplicationJob
  queue_as :default

  def perform(poem)
    group = poem.group
    VenueChannel.broadcast_to group, poem: render_poem(poem)
  end

  private def render_poem(poem)
    ApplicationController.renderer.render(partial: 'poems/poem', locals: {poem: poem})
  end
end
