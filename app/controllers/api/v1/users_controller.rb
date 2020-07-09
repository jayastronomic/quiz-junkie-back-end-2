module Api
    module V1

        class UsersController < ApplicationController


            def create
                user = User.new(user_params)
                if user.save 
                    render json: user
                else
                    render json:{Status: "ERROR", message: user.errors.full_messages}
                end
            end

            def index
                users = User.all 
                render json: users
            end

            private

            def user_params
                params.require(:user).permit(:username)
            end

                

        end



    end
end