class DogsController < ApplicationController

  def index
    @dogs = Dog.sorted_list
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
