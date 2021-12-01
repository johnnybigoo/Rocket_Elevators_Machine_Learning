class Intervention < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
  belongs_to :building
  belongs_to :batterie
  belongs_to :column
  belongs_to :elevator


  # def create_ticket
  #       client = ZendeskAPI::Client.new do |config|
  #           config.url = ENV['ZENDESK_URL']
  #           config.username = ENV['ZENDESK_USERNAME']
  #           config.token = ENV['ZENDESK_TOKEN']
  #       end

    #     ZendeskAPI::Ticket.create!($client, 
    #         :subject => "New Intervention", 
    #         :comment => { 
    #           :value => "#{current_user.employee.first_name} has requested an intervention for customer: #{params[:customer_id]}.\n\n
    #           Intervention summary:\n
    #           - Building: #{params[:building_id]}
    #           - Battery: #{params[:battery_id]}
    #           - Column: #{params[:column_id]}
    #           - Elevator: #{params[:elevator_id]}\n\n
    #           Employee: #{params[:employee_id]} has been assigned to the task.\n
    #           Description: #{params[:description]}"
    #           }, 
    #         :priority => "urgent",
    #         :type => "task"
    #     )
    # end
end
