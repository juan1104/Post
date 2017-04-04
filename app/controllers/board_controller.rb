








class BoardController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  # def new
  #   @post = Post.new
  # end
  


  def create
    # <%= form_for @post do |f| %>
    # <%= f.text_field :body %>
    # <%= f.submit 'submit' %>
    # <% end %>

     
       Post.create(writer: params[:irum], content: params[:naeyong])
       redirect_to :root
  end  
  
  def destroy
      pp = Post.find(params[:id])
      pp.destroy
      redirect_to :root
    
  end
  
  def edit
     @post = Post.find(params[:id])
  end
  
  def update
      pp = Post.find(params[:id])
      pp.writer = params[:irum]
      pp.content = params[:naeyong]
      pp.save
      redirect_to :root
  end
end
