class InterventionsController < ApplicationController
  
  def get_buildings
    @buildings = Building.where(customerId: params[:customer_id])

    respond_to do |format|
      format.json { render :json => @buildings}
    end
  end

  def get_batteries
    @batteries = Batterie.where(buildingId: params[:building_id])

    respond_to do |format|
      format.json { render :json => @batteries}
    end
  end

  def get_columns
    @columns = Column.where(batteryId: params[:battery_id])

    respond_to do |format|
      format.json { render :json => @columns}
    end
  end

  def get_elevators
    @elevators = Elevator.where(columnId: params[:column_id])

    respond_to do |format|
      format.json { render :json => @elevators}
    end
  end

  def new
    @intervention = Intervention.new
    @employees = Employee.all.collect {|p| [ p.full_name, p.id ]}
    @customers = Customer.all.collect {|p| [ p.fullName, p.id ]}


  end

  def create
    @intervention = Intervention.new(intervention_params)

    # puts @intervation.as_json
    if @intervention.save
      flash[:notice] = "Intervention Created Successful"
        redirect_to new_intervention_path
    else
      render :new 
    end
  end

  private

  def intervention_params
    params.require(:intervention).permit(:employee_id, :customer_id, :building_id, :batterie_id, :column_id, :elevator_id, :report)
  end
end