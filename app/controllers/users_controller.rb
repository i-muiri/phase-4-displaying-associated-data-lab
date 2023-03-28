class UsersController < ApplicationController
    def show
        user = User.find_by(params[:id])
        render json: user, include: :items, except: [:created_at, :updated_at]
    end
end
