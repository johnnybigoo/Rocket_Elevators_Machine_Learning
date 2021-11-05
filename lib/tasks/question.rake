namespace :question do
    desc "a new task to be executed"
    
    task :main do
        Rake::Task['question:q1'].invoke
        Rake::Task['question:q2'].invoke
        Rake::Task['question:q3'].invoke
    end
    
    task :q1 do
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row = ActiveRecord::Base.connection.execute('select distinct EXTRACT(month from fc.creation_date) as month, COUNT(fc."compagnyName") as Number_of_Contacts
                                                    from fact_contacts fc
                                                    group by EXTRACT(month from fc.creation_date)
                                                    order by EXTRACT(month from fc.creation_date)')
        row.each do |val|
            puts val
        end
    end

    task :q2 do
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row = ActiveRecord::Base.connection.execute('select distinct EXTRACT(month from fq.creation_date) as month, COUNT(fq."compagnyName")
                                                    from fact_quotes fq 
                                                    group by EXTRACT(month from fq.creation_date)
                                                    order by EXTRACT(month from fq.creation_date);
                                                    ')
        row.each do |val|
            puts val
        end
    end

    task :q3 do
        ActiveRecord::Base.establish_connection(:adapter  => "postgresql",:host => "localhost",:username => "postgres",:password => "allo1392",:database => "data_warehouse")
        row = ActiveRecord::Base.connection.execute('select dc.id , dc."nbElevator" 
                                                    from dim_customers dc 
                                                    ')
        row.each do |val|
            puts val
        end
    end
end