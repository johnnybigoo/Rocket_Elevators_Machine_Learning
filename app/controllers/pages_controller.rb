class PagesController < ApplicationController
  def index
  end

  def residential
  end

  def commercial
  end

  def quote
  end

  def charts
    @data = FactElevator.totals_by_year_month
    puts @data
  end
end
