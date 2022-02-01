class Member < ApplicationRecord
	has_many :member_games
	has_many :games, through: :member_games

	validates :name, presence: true
end
