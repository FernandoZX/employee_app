# frozen_string_literal: true

# A controller who manages its own company employee data
class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  # GET /employees or /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1 or /employees/1.json
  def show; end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit; end

  # POST /employees or /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html do
          redirect_to employee_url(@employee), notice: t('employee.form.create.notice')
        end
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html do
          redirect_to employee_url(@employee), notice: t('employee.form.update.notice')
        end
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1 or /employees/1.json
  def destroy
    @employee.destroy!

    respond_to do |format|
      format.html { redirect_to employees_url, notice: t('employee.destroy.notice') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :age, :role)
  end
end
