class TopController < ApplicationController
  def index
      @tweets = Tweet.all
  end
end
