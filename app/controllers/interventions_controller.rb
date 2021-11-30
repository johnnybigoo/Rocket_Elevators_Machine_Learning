class InterventionsController < ApplicationController
  def new
    @intervention = Intervention.new
    @employees = Employee.all.collect {|p| [ p.full_name, p.id ]}
    @customers = Customer.all.collect {|p| [ p.fullName, p.id ]}
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

  end

  def get_columns

  end

  def get_elevators
    
  end
end