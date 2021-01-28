class FavoritesController < ApplicationController
    def index
        #@favorite = current_user2.favorites.all
        #@favorite = current_user2.favorites.find(:blog_id)
        @favorites = current_user2.favorite_blogs
        # favorites = Favorite.where(user2_id: current_user2.id).pluck(:blog_id)
        # @favorite_list = Blog.find(favorites) 
    end
    def create
        favorite = current_user2.favorites.create(blog_id: params[:blog_id])
        redirect_to blogs_url, notice: "#{favorite.blog.user2.name}さんのブログをお気に入り登録しました"
    end
    def destroy
        favorite = current_user2.favorites.find_by(id: params[:id]).destroy
        redirect_to blogs_url, notice: "#{favorite.blog.user2.name}さんのブログをお気に入り解除しました"
    end
end
