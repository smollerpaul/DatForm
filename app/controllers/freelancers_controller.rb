class FreelancersController < ApplicationController
    def new
        @freelancer = Freelancer.new
    end

    def show
        @freelancer= Freelancer.find(params[:id])
    end

    def edit
        @freelancer= Freelancer.find(params[:id])
    end

    def create
        @freelancer= Freelancer.new(freelancer_params)

        if @freelancer.save
            redirect_to @freelancer
        else
            render 'new'
        end
    end

    def update
        @freelancer = Freelancer.find(params[:id])
     
        if @freelancer.update(freelancer_params)
          redirect_to @freelancer
        else
          render 'edit'
        end
      end

    private
    def freelancer_params
        params.require(:freelancer).permit(:name, :position)
    end


    
end
