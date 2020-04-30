class EmployeesController < ApplicationController
    def index
        @employees = Employee.all 
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create 
        @employee = Employee.create(employee_params)
        redirect_to @employee
    end

    def edit 
        @employee = Employee.find(params[:id])
    end

    def update 
        @employee = Employee.update(employee_params)
        redirect_to @employee
    end

end


# As a user, I should be able to create AND edit an Employee, and only be able to select 1 dog from a list of already existing dogs.
#Dog drop down menu/possibly put in a validation to ensure employee dog count is one.

# No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
#Validation.

    private
        def employee_params 
            params.require(:employee).permit(:first_name, :alias, :last_name, :title, :office, :img_url, :dog_id)
        end


        # t.string :first_name
        # t.string :last_name
        # t.string :alias
        # t.string :title
        # t.string :office
        # t.string :img_url
        # t.references :dog