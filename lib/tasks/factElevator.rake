namespace :db do
    desc "a new task to be executed"
    task :fact_quote do
        ActiveRecord::Base.establish_connection(:adapter  => "mysql2",:host => "localhost",:username => "root",:password => "Allo1392!",:database => "Rocket_Elevators_Information_System_development")
        row = ActiveRecord::Base.connection.execute('SELECT e.serialNumber AS Serial_Number, e.dateCommissioning AS Date_Commissioning,b.id AS BuildingID,b.customerId AS CustomerID, a.city AS City 
                                                   FROM elevators e
                                                   INNER JOIN `columns` co ON e.columnId = co.id
                                                   INNER JOIN batteries ba ON co.batteryId = ba.id 
                                                   INNER JOIN buildings b ON ba.buildingId = b.id
                                                   INNER JOIN addresses a ON b.addressId = a.id; ')
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row.each do |val|
            query = "INSERT INTO public.fact_contacts (\"contactId\", creation_date, \"compagnyName\", \"customerId\", \"nameProject\") VALUES(#{val[0]},'#{val[1]}', '#{val[2]}', #{val[3]}, '#{val[4]}');"
            ActiveRecord::Base.connection.execute(query)
        end
    end
    task :fact_contact do
        ActiveRecord::Base.establish_connection(:adapter  => "mysql2",:host => "localhost",:username => "root",:password => "Allo1392!",:database => "Rocket_Elevators_Information_System_development")
        row = ActiveRecord::Base.connection.execute('SELECT l.id , l.`date`,l.compagnyName,l.email,l.nameProject
                                                     FROM leads l ')
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row.each do |val|
            query = "INSERT INTO public.fact_contacts (\"contactId\", creation_date, \"compagnyName\", \"customerId\", \"nameProject\") VALUES(#{val[0]},'#{val[1]}', '#{val[2]}', #{val[3]}, '#{val[4]}');"
            ActiveRecord::Base.connection.execute(query)
        end
    end
    task :fact_elevator do
        ActiveRecord::Base.establish_connection(:adapter  => "mysql2",:host => "localhost",:username => "root",:password => "Allo1392!",:database => "Rocket_Elevators_Information_System_development")
        row = ActiveRecord::Base.connection.execute('SELECT e.serialNumber AS Serial_Number, e.dateCommissioning AS Date_Commissioning,b.id AS BuildingID,b.customerId AS CustomerID, a.city AS City 
                                                   FROM elevators e
                                                   INNER JOIN `columns` co ON e.columnId = co.id
                                                   INNER JOIN batteries ba ON co.batteryId = ba.id 
                                                   INNER JOIN buildings b ON ba.buildingId = b.id
                                                   INNER JOIN addresses a ON b.addressId = a.id; ')
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row.each do |val|
            query = "INSERT INTO public.fact_elevators (\"serialNumber\", \"dateCommissioning\", \"buildingId\", \"customerId\", city) VALUES('#{val[0]}','#{val[1]}', #{val[2]}, #{val[3]}, '#{val[4]}');"
            ActiveRecord::Base.connection.execute(query)
        end
    end
    task :dim_customer do
        ActiveRecord::Base.establish_connection(:adapter  => "mysql2",:host => "localhost",:username => "root",:password => "Allo1392!",:database => "Rocket_Elevators_Information_System_development")
        row = ActiveRecord::Base.connection.execute('SELECT e.serialNumber AS Serial_Number, e.dateCommissioning AS Date_Commissioning,b.id AS BuildingID,b.customerId AS CustomerID, a.city AS City 
                                                   FROM elevators e
                                                   INNER JOIN `columns` co ON e.columnId = co.id
                                                   INNER JOIN batteries ba ON co.batteryId = ba.id 
                                                   INNER JOIN buildings b ON ba.buildingId = b.id
                                                   INNER JOIN addresses a ON b.addressId = a.id; ')
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row.each do |val|
            query = "INSERT INTO public.fact_elevators (\"serialNumber\", \"dateCommissioning\", \"buildingId\", \"customerId\", city) VALUES('#{val[0]}','#{val[1]}', #{val[2]}, #{val[3]}, '#{val[4]}');"
            ActiveRecord::Base.connection.execute(query)
        end
    end
  end