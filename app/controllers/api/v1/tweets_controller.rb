class Api::V1::TweetsController < ApplicationController
  include CurrentUserConcern
  before_action :set_tweet, only: [:show, :update, :destroy]

  # GET /tweets
  def index
    @tweets = Tweet.all

    render json: @tweets
  end

  # GET /tweets/1
  def show
    render json: @tweet
  end

  # POST /tweets
  def create
    @tweet = current_user.tweets.build(tweet_params)

    if @tweet.save
      render json: @tweet, status: :created
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tweets/1
  def update
    if @tweet.update(tweet_params)
      render json: @tweet
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tweet_params
      params.permit(:tweet)
    end
end
