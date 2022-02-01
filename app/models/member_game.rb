class MemberGame < ApplicationRecord
  belongs_to :member
  belongs_to :game
  validates :score, :winner, presence: true
end
