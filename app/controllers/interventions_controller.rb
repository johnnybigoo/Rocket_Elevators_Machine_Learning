class InterventionsController < ApplicationController
  def new
    @intervention = Intervention.new
    @employees = Employee.all.collect {|p| [ p.full_name, p.id ]}
    @customers = Customer.all.collect {|p| [ p.fullName, p.id ]}
    @buildings = Building.all.collect {|p| [ p.fullNameAdministrator, p.id ]}
    @batteries = Battery.all.collect {|p| [ p.buildingId, p.id ]}
    @columns = Column.all.collect {|p| [ p.batteryId, p.id ]}
    @elevators = Elevator.all.collect {|p| [ p.columnId, p.id ]}
  end

  def create 

  end

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
end