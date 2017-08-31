class TweetsController < ApplicationController
 #before_action :set_blog, only:[:edit, :update, :destroy]
 
 def index
  @tweets = Tweet.all
 end

 def new 
  if params[:back]
  @tweet = Tweet.new(tweets_params)
  
  else
   @tweet = Tweet.new
  end
 end
 
 def create
  @tweet =  Tweet.new(tweets_params)
 
   if @tweet.save
    redirect_to root_path ,notice: "ツイートを投稿しました！"
   
   else
    render 'new'
   end
  end

  def edit
   @tweet = Tweet.find(params[:id])
   end
 
  def update
   @tweet = Tweet.find(params[:id])
  
  
   if @tweet.update(tweets_params)
    redirect_to root_path(@tweet) ,notice: "ツイートを編集しました！"
    
   else
    render 'edit'
   end
   end

  def destroy
   @tweet = Tweet.find(params[:id])
   @tweet.destroy
   redirect_to root_path ,notice: "ツイートを削除しました！"
  end
  
  def confirm
   @tweet = Tweet.new(tweets_params)
   render :new if @tweet.invalid?
   #バリデーション
  end

  private
   def tweets_params
    params.require(:tweet).permit(:name, :content)
   end
   
    # idをキーとして値を取得するメソッド
  # def set_blog
   # @blog = Blog.find (params [:id] )
 #end
end
