class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create 
        # Create Login with session Id here
        user = User.find_by(email: params[:email])
        if user
            if user.authenticate(params[:password])
                session[:user_id] = user.id
                # debugger
                render json: user, status: :created
            else
                render json: {error: "Invalid password"}, status: :unauthorized
            end
        else
            render json: {error: "Invalid username"}, status: :unauthorized

        end
    end

    def destroy 
        # Create Logout destroy the session here
        session.delete :user_id 
        head :no_content
    end
end
