class EvaluationsController < ApplicationController

  def index
  	@employee = Employee.find(params[:employee_id])
  	@evaluations = @employee.evaluations

  	respond_to do |format|
  		format.html # index.html.erb
  		format.json { render json: @evaluations}
  	end
  end
  

  def new
  	@employee = Employee.find(params[:employee_id])
  	@evaluation = @employee.evaluations.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation }
    end
  end

  def show
    @employee = Employee.find(params[:employee_id])
    @evaluation = @employee.evaluations.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation }
    end
  end

  def edit
    @employee = Employee.find(params[:employee_id])
  	@evaluation = @employee.evaluations.find(params[:id])
  end

  def create
  	@employee = Employee.find(params[:employee_id])
  	@evaluation = @employee.evaluations.create(params[:evaluation])

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to [@evaluation.employee, @evaluation], notice: 'Evaluation was successfully created.' }
        format.json { render json: @evaluation, status: :created, location: @evaluation }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @employee = Employee.find(params[:employee_id])
  	@evaluation = @employee.evaluations.find(params[:id])
  	respond_to do |format|
  		if @evaluation.update_attributes(params[:evaluation])
  			format.html { redirect_to [@evaluation.employee, @evaluation], :notice => 'Evaluation was successfully updated.' }
  			format.json { head :ok }
  		else
  			format.html { render :action => "edit" }
  			format.json { render json: @evaluation.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def destroy
    @employee = Employee.find(params[:employee_id])
  	@evaluation = @employee.evaluations.find(params[:id])
  	@evaluation.destroy

  	respond_to do |format|
  		format.html { redirect_to(employee_evaluations_url) }
  		format.json { head :no_content }
  	end
  end
end
