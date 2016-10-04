class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
    @post=Post.new
    @post_pull=Post.all.reverse
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    
    redirect_to :back
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
  
end
