class Game < ApplicationRecord
	has_many :member_games
	has_many :members, through: :member_games
	validates :place, presence: true
end
