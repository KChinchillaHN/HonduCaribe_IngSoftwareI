class WorkStructuresController < ApplicationController
  def index
    @work_structures = WorkStructure.all
  end

  def show
    @work_structure = WorkStructure.find(params[:id])
  end

  def new
    @work_structure = WorkStructure.new
  end

  def create
    @work_structure = WorkStructure.new(work_structure_params)

    if @work_structure.save
      redirect_to work_structures_path
    else
      render :new
    end
  end

  def edit
    @work_structure = WorkStructure.find(params[:id])
  end

  def update
    @work_structure = WorkStructure.find(params[:id])

    if @work_structure.update_attributes(work_structure_params)
      redirect_to work_structures_path
    else
      render :edit
    end
  end

  protected

    def work_structure_params
      params.require(:work_structure).permit!
    end
end
