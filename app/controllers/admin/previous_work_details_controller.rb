class Admin::PreviousWorkDetailsController < AdminController
  before_action :set_previous_work_detail, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def index
    @previous_work_details = PreviousWorkDetail.all
  end

  def new
    @previous_work_detail = PreviousWorkDetail.new
  end

  def show
  end

  def create
    @previous_work_detail = PreviousWorkDetail.create(previous_work_detail_params)

    respond_to do |format|
      if @previous_work_detail.save 
        format.html { redirect_to admin_previous_work_detail_path(@previous_work_detail), notice: 'Previous work detail was successfully created.' }
        format.json { render :show, status: :created, location: @previous_work_detail }
      else
        format.html { render :new }
        format.json { render json: @previous_work_detail.errors, status: :unprocessable_entity }
      end
    end  
  end

  def update
    respond_to do |format|
      if @previous_work_detail.update(previous_work_detail_params)
        format.html { redirect_to admin_previous_work_detail_path(@previous_work_detail), notice: 'Previous work detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @previous_work_detail }
      else
        format.html { render :edit }
        format.json { render json: @previous_work_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @previous_work_detail.destroy
    respond_to do |format|
      format.html { redirect_to admin_previous_work_details_url, notice: 'Previous work detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
  def set_previous_work_detail
    @previous_work_detail = PreviousWorkDetail.find(params[:id])
  end

  def previous_work_detail_params
    params.require(:previous_work_detail).permit(:company_name, :designation, :joining_date, :releiving_date, :experience_in_years, :experience_in_months, :nature_of_work, :role_at_work, :reason_for_leaving, :company_address, :company_website, :company_contact, :employee_id)
  end
end
