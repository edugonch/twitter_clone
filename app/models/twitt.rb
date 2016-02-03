class Twitt < ActiveRecord::Base
  validates :text, presence: true, length: { maximum: 130 }
  validates :user_id, presence: true
  belongs_to :user
end
