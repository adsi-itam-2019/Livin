class PostsController < ApplicationController
    
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
          
          flash[:success] = "Anuncio Publicado"
          redirect_to inicio_url
        else
          flash[:danger] = 'Error'
          redirect_to inicio_url
        end
      end
    
    
    def post_params
         params.require(:post).permit(:mensualidad, :descrip)
    end
  
  def add
     @post = current_user.posts.build
  end
    
    
    
end
