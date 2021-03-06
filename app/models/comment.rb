class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, length: { minimum: 4, maximimum: 1001 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end