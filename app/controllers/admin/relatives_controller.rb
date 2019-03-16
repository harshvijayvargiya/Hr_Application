class Admin::RelativesController < AdminController
  before_action :set_relative, only: [:show, :edit, :update, :destroy]

  def index
    @relatives = Relative.all
  end

  def show
  end

  def new
    @relative = Relative.new
  end

  def edit
  end

  def create
    @relative = Relative.new(relative_params)
    respond_to do |format|
      if @relative.save
        format.html { redirect_to admin_relative_path(@relative), notice: 'Relative was successfully created.' }
        format.json { render :show, status: :created, location: @relative }
      else
        format.html { render :new }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @relative.update(relative_params)
        format.html { redirect_to admin_relative_path(@relative), notice: 'Relative was successfully updated.' }
        format.json { render :show, status: :ok, location: @relative }
      else
        format.html { render :edit }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @relative.destroy
    respond_to do |format|
      format.html { redirect_to admin_relatives_url, notice: 'Relative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_relative
      @relative = Relative.find(params[:id])
    end

    def relative_params
      params.require(:relative).permit(:name, :date_of_birth, :gender, :blood_group, :relation, :profession, :nationality, :address, :contact, :remarks, :employee_id)
    end
end
