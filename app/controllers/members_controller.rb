class MembersController < ApplicationController
	before_action :find_member, only: [:edit, :update, :show]

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)
		if @member.save
			flash[:success] = "Successfully signed up."
			redirect_to successfull_action_path
		else
			flash.now[:error] = @member.errors.full_messages
			render 'new'
		end
	end

	def edit
	end

	def update
		if @member.update(member_params)
			flash.now[:success] = "Details updated successfully."
			redirect_to successfull_action_path
		else
			render 'edit'
		end
	end

	def show
		if @member.present?
			@number_of_wins = @member.member_games.where(winner: true).count
			@number_of_losses = @member.member_games.where(winner: false).count
			@average_score = @member.member_games.average(:score).to_i
			@max_score = @member.member_games.maximum(:score)
			@game = @member.member_games.where(score: @max_score).first.game
			@max_opponent = @game.members.where.not(id: @member.id).first
		else
		end
	end

	def top_average_scorers
		@top_average_scorers = MemberGame.select("member_id, avg(score) as average_score").group(:member_id).having("count(*) >= ?", 10).order(average_score: :desc).limit(10)
	end

	def successfull
	end

	private

	def member_params
		params.require(:member).permit(:name, :contact_number, :age)
	end

	def find_member
		@member = Member.find_by(id: params[:id])
	end
end