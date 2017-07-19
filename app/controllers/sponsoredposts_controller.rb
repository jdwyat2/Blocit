class SponsoredpostsController < ApplicationController

  def show
    @sponsored_posts = Sponsoredpost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_posts = Sponsoredpost.new
  end
  
  def create
    
    @sponsored_posts = Sponsoredpost.new
    @sponsored_posts.title = params[:post][:title]
    @sponsored_posts.body = params[:post][:body]
    @topic = Topic.find(params[:topic_id])
    
    @sponsored_posts.topic = @sponsored_posts
    
    if @sponsored_posts.save
      flash[:notice] = "Post was saved."
      redirect_to [@topic, @sponsored_posts]
    
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @sponsored_posts = Sponsoredpost.find(params[:id])
  end
  
  def update
    @sponsored_posts = Sponsoredpost.find(params[:id])
    @sponsored_posts.title = params[:post][:title]
    @sponsored_posts.body = params[:post][:body]
    
    if @sponsored_posts.save
      flash[:notice] = "Post was updated."
      redirect_to [@sponsored_posts.topic, @sponsored_posts]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end
  
  def destroy
    @sponsored_posts = Sponsoredpost.find(params[:id])
    
    if @sponsored_posts.destroy
      flash[:notice] = "\"#{@sponsored_posts.title}\" was deleted successfully."
      redirect_to @sponsored_posts.topic
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end
  
  
end










