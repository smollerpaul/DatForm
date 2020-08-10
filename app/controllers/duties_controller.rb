class DutiesController < ApplicationController
    def new
      @duty = Duty.new
    end

    def create
        @employee = Employee.find(params[:employee_id])

        @duty = @employee.duties.new(duty_params)

        if @duty.save
          redirect_to employee_path(@employee)  
        else
          render 'new'
        end
      end
     
      def destroy
        @employee = Employee.find(params[:employee_id])
        @duty = @employee.duties.find(params[:id])
        @duty.destroy
        redirect_to employee_path(@employee)
      end
     
      private
        def duty_params
          params.require(:duty).permit(:work_description, :date, :income, :notes)
        end
end
