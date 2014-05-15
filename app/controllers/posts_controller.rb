class PostsController < ApplicationController
	respond_to :json
	
	def index
		render json: Post.all
	end

	def show
		render json: Post.find(params[:id])
	end

	def create
		render json: Post.create(post_params)
	end

	def update
		render json: Post.update(params[:id], post_params)
	end

	def destroy
		render json: Post.destroy(params[:id])
	end

	private def post_params
		params.require(:post).permit(:title, :content, :date_added)
	end
end
