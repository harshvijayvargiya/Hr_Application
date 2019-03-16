class Admin::EmployeesController < AdminController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def edit
  end
  def showindex
    # @employee = Employee.find(params[:id])
  end
  def index
    if params[:status].present? 
      @employees = Employee.scoped_employee(params[:status])
    else
      @employees = Employee.all
    end  
  end

  def new
    @employee = Employee.new
  end

  def show
  end

  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save  
        format.html { redirect_to admin_employees_path(@employee), notice: 'Employee was successfully created.'}
        format.json { render :show, status: :created, location: @employee}
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }  
      end  
    end  
  end

def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to admin_employees_path(@employee), notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
end


def destroy
  @employee.destroy
  respond_to do |format|
    format.html { redirect_to admin_employees_url, notice: 'Employee was successfully destroyed.' }
    format.json { head :no_content }
  end
end

def employee_by_status
  if params[:status] == "Active"
    @employees = Employee.active_employees
  elsif params[:status] == "Terminated"
    @employees = Employee.terminated_employees
  elsif params[:status] == "On_Notice"
    @employees = Employee.on_notice_employees
  else      
    @employees = Employee.all
  end
end

 private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :middle_name, :last_name, :gender, :date_of_birth, :date_of_joining, :marital_status, :status, :probation_duration, :confirmation_date, :personal_email, :mobile_number, :alternate_mobile_number, :blood_group, :about, :profile_picture, :present_address, :permanent_address, :nationality, :city, :state, :country, :is_international_employee, :is_physically_challenged, :is_director, :confirmaton_date)
    end
end
