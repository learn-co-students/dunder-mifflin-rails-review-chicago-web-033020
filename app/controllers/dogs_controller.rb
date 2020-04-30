class DogsController < ApplicationController
    def show
        @dog = Dog.find(params[:id])
    end

    def index 
        @dogs = Dog.all
    end 


end


# - For our index page for Dogs, a user should be able to click on a 
#specific dog and take them to the corresponding show page.
# - The Dog show page should have their name, breed, 
# age and the list of Dunder Mifflin Employees they are connected to