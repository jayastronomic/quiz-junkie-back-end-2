module Api
    module V1

        class UsersController < ApplicationController


            def create
                user = User.new(user_params)
                if user.save 
                    score = Score.create(points: 0)
                    user.score = score
                    render json: user.to_json(include: [:score])
                else
                    error = user.errors.full_messages.join()
                        
                    render json: { status: "ERROR", message: error}
                end
            end

            def index
                users = User.all 
                scores = Score.all
                render json: { data: { users: users, user_scores: scores } }
            end

            private

            def user_params
                params.require(:user).permit(:username)
            end

                

        end



    end
end