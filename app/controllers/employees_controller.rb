class EmployeesController < ApplicationController
    def new
        @employee = Employee.new
    end

    # def index
    #     @employees = Employee.all
    # end 
    
    def show
        @employee = Employee.find(params[:id])
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.new(employee_params)
   
        if @employee.save
            redirect_to @employee
        else
            render 'new'
        end
    end

    def update
        @employee = Employee.find(params[:id])
     
        if @employee.update(employee_params)
          redirect_to @employee
        else
          render 'edit'
        end
      end
   
  private
    def employee_params
      params.require(:employee).permit(:company_name, :tax, :address, :name, :position)
    end

end
