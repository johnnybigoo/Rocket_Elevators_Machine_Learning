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
    @fact_contact = FactContact.find_by_sql("SELECT distinct EXTRACT(month from fact_contacts.creation_date), count(fact_contacts.\"compagnyName\") FROM fact_contacts GROUP by EXTRACT(month from fact_contacts.creation_date) order by EXTRACT(month from fact_contacts.creation_date)")
    @fact_quotes = FactQuote.find_by_sql("SELECT distinct EXTRACT(month from fact_quotes.creation_date), count(fact_quotes.\"compagnyName\") FROM fact_quotes GROUP by EXTRACT(month from fact_quotes.creation_date) order by EXTRACT(month from fact_quotes.creation_date)")
    @dim_customers = DimCustomer.select("dim_customers.\"compagnyName\",dim_customers.\"nbElevator\"")
    @data_contact = []
    @data_quote = []
    @data_customer = []
    @fact_contact.map { |n| @data_contact.push([n['date_part'],n['count']])}
    @fact_quotes.map { |n| @data_quote.push([n['date_part'],n['count']])}
    @dim_customers.map { |n| @data_customer.push([n['compagnyName'],n['nbElevator']])}
    respond_to do |format|
      format.html
    end 
  end
end
