class QuoteController < ApplicationController
  def create 
    @quote = Quote.new(quote_params)
    @quote.numApartment = params[:quote][:numBusinessRooms] if params[:quote][:numBusinessRooms].present?
    @quote.numFloor = params[:quote][:numFloorHyb] if params[:quote][:numFloorHyb].present?
    if @quote.save
      flash[:notice] = 'Quote created successfully'
      redirect_to pages_quote_url action: :new
    else
      render :new 
    end
  end

  private
  def quote_params
    params.require(:quote).permit(:type_building, :numApartment, :numFloor, :numElevator, :numOccupant) 
  end
end