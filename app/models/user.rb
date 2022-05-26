class User < ApplicationRecord
    has_many :favorite_cards
    has_many :credit_cards, through: :favorite_cards

    def create 
        # This is where the user account should be created!
        
    end

    # Login and Logout needs to go in Sessions controller
    #secret page that you can only see if you're logged in
    private 

    def user_params
        params.permit(:password, :email, :age, :name)
        # password digest?
    end
end
