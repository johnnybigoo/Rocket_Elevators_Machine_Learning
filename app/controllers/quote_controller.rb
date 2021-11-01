class QuoteController < ApplicationController
  def create 
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to action: :new,
      notice 'Quote created successfully'
    else
      render :new 
    end
  end

  private
  def quote_params
    params.require(:quote).permit()
  end
end