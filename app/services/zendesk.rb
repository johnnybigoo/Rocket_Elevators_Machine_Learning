require 'zendesk_api'
class Zendesk
  attr_accessor :intervention

  def initialize(internvention)
    @intervention = internvention
  end

  def client
    client ||= ZendeskAPI::Client.new do |config|
      # Mandatory:

      config.url = ENV['ZENDESK_URL'] # e.g. https://yoursubdomain.zendesk.com/api/v2

      # Basic / Token Authentication
      config.username = ENV['ZENDESK_EMAIL'] 

      # Choose one of the following depending on your authentication choice
      config.token = ENV['ZENDESK_API_KEY']
      config.password = ENV['ZENDESK_ACCOUNT_PW']

      
      require 'logger'
      config.logger = Logger.new(STDOUT)


      # Change retry configuration (this is disabled by default)
      config.retry_on_exception = true

      # Error codes when the request will be automatically retried. Defaults to 429, 503
      config.retry_codes = [ 429 ]
    end
  end

  def intervention_ticket
    ZendeskAPI::Ticket.create!(client,
      :subject => "New Intervention",
      :requester => {"name": intervention.employee.full_name},
      :comment => { :value => comment_intervention},
      :type => "question",
      :priority => "urgent")
  end

  def comment_intervention
    <<-HEREDOC
      Intervention summary:
      employee: #{intervention.employee.full_name}
      customer: #{intervention.customer.fullName}
      building: #{intervention.building.fullNameAdministrator}
      battery: #{intervention.batterie.information}
      column: #{intervention.column.information}
      elevator: #{intervention.elevator.information}
      description: #{intervention.report}
    HEREDOC
  end
end