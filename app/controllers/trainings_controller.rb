class TrainingsController < ApplicationController
  def index
    @trainings = Training.order(:start_date)
  end

  def new
  	@training = Training.new
    @training_employee = @training.training_employees.build
  end

  def create
    @training = Training.new(training_params)

    if @training.save
      redirect_to @training
    else
      render :new
    end
  end


  def show
      @training = Training.find(params[:id])
      @training_employee = @training.training_employees.build
    end


  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])

    if @training.update_attributes(training_params)
      redirect_to trainings_path
    else
      render :edit
    end
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path
  end

  protected

  def training_params
    params.require(:training).permit!
  end
end
