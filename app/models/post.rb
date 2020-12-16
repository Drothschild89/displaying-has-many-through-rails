class Post < ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments

  def show
    @post = Post.find(params[:id])
  end
  
end
