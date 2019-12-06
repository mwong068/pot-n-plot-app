class FriendshipsController < ApplicationController
    protect_from_forgery with: :exception

    def index
    end

    def create
        # if params.include?(:friend_id)
        #     @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, params[:user][:friend_id])
        # else
        #     params[:user][:friend_ids].each do |f_id|
        #         @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, f_id)
        #     end
        # end
        @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, params[:user][:friend_ids])
        # byebug
        redirect_to user_path(current_user)
    end

    def destroy
        Friendship.destroy_reciprocal_for_ids(current_user.id, params[:user][:friend_ids])
        redirect_to(request.referer)
    end

    private

  

end