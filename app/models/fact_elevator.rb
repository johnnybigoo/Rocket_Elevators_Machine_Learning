class FactElevator < SecondBase::Base
    def self.totals_by_year_month
        find_by_sql(
            "select dc.id AS id , dc.\"nbElevator\" AS elevator
            from dim_customers dc "
        ).map do |row|
          [
            row.id.to_f,
            row.elevator.to_f
          ]
        end
    end
end