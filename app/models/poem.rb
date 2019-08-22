class Poem < ApplicationRecord
  after_create_commit {PoemBroadcastJob.perform_later self}
end
