class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  def index
    @votes = current_user.votes.all.order("created_at desc")
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      render json: {status: "ok"}
    else
      render json: {status: "ok"}
    end
  end

  private
    def set_vote
      @vote = Vote.find(params[:id])
    end

    def vote_params
      params.require(:vote).permit(:user_id, :url, :value_id, :title, :uid)
    end
end
