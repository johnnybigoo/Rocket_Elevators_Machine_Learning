# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "json"

User.create(id: 1,email: 'nicolas.genest@codeboxx.biz',password: 'password')
User.create(id: 2,email: 'nadya.fortier@codeboxx.biz',password: 'password')
User.create(id: 3,email: 'martin.chantal@codeboxx.biz',password: 'password')
User.create(id: 4,email: 'mathieu.houde@codeboxx.biz',password: 'password')
User.create(id: 5,email: 'patrick.thibault@codeboxx.biz',password: 'password')
User.create(id: 6,email: 'david.boutin@codeboxx.biz',password: 'password')
User.create(id: 7,email: 'mathieu.lortie@codeboxx.biz',password: 'password')
User.create(id: 8,email: 'thomas.carrier@codeboxx.biz',password: 'password')
User.create(id: 9,email: 'serge.savoie@codeboxx.biz',password: 'password')
User.create(id: 10,email: 'francis.patry-jessop@codeboxx.biz',password: 'password')
User.create(id: 11,email: 'mathieu.lefrancois@codeboxx.biz',password: 'password')
User.create(id: 12,email: 'david.larochelle@codeboxx.biz',password: 'password')
User.create(id: 13,email: 'nicolas.pineault@codeboxx.biz',password: 'password')
User.create(id: 14,email: 'david.amyot@codeboxx.biz',password: 'password')
User.create(id: 15,email: 'remi.gagnon@codeboxx.biz',password: 'password')
User.create(id: 16,email: 'timothy.wever@codeboxx.biz',password: 'password')
User.create(id: 17,email: 'kiril.kleinerman@codeboxx.biz',password: 'password')
User.create(id: 18,email: 'emmanuela.derilus@codeboxx.biz',password: 'password')
User.create(id: 19,email: 'abdul.akeeb@codebozz.biz',password: 'password')
User.create(id: 20,email: 'krista.sheely@codeboxx.biz',password: 'password')
User.create(id: 21,email: 'jonathan.murray@codeboxx.biz',password: 'password')

Employee.create(id: 1,first_name: 'Nicolas',last_name: 'Genest',title: 'CEO',email: 'nicolas.genest@codeboxx.biz',user_id: 1)
Employee.create(id: 2,first_name: 'Nadya',last_name: 'Fortier',title: 'Director',email: 'nadya.fortier@codeboxx.biz',user_id: 2)
Employee.create(id: 3,first_name: 'Martin',last_name: 'Chantal',title: 'Assistant Director ',email: 'martin.chantal@codeboxx.biz',user_id: 3)
Employee.create(id: 4,first_name: 'Mathieu',last_name: 'Houde',title: 'Captain',email: 'mathieu.houde@codeboxx.biz',user_id: 4)
Employee.create(id: 5,first_name: 'Patrick ',last_name: 'Thibault',title: 'Captain',email: 'patrick.thibault@codeboxx.biz',user_id: 5)
Employee.create(id: 6,first_name: 'David',last_name: 'Boutin',title: 'Engineer',email: 'david.boutin@codeboxx.biz',user_id: 6)
Employee.create(id: 7,first_name: 'Mathieu',last_name: 'Lortie',title: 'Engineer',email: 'mathieu.lortie@codeboxx.biz',user_id: 7)
Employee.create(id: 8,first_name: 'Thomas',last_name: 'Carrier',title: 'Engineer',email: 'thomas.carrier@codeboxx.biz',user_id: 8)
Employee.create(id: 9,first_name: 'Serge',last_name: 'Savoie',title: 'Enigneer',email: 'serge.savoie@codeboxx.biz',user_id: 9)
Employee.create(id: 10,first_name: 'Francis',last_name: 'Patry-Jessop',title: 'Engineer',email: 'francis.patry-jessop@codeboxx.biz',user_id: 10)
Employee.create(id: 11,first_name: 'Mathieu',last_name: 'Lefrancois',title: 'Engineer',email: 'mathieu.lefrancois@codeboxx.biz',user_id: 11)
Employee.create(id: 12,first_name: 'David',last_name: 'Larochelle',title: 'Engineer',email: 'david.larochelle@codeboxx.biz',user_id: 12)
Employee.create(id: 13,first_name: 'Nicolas',last_name: 'Pineault',title: 'Engineer',email: 'nicolas.pineault@codeboxx.biz',user_id: 13)
Employee.create(id: 14,first_name: 'David',last_name: 'Amyot',title: 'Engineer',email: 'david.amyot@codeboxx.biz',user_id: 14)
Employee.create(id: 15,first_name: 'Remi',last_name: 'Gagnon',title: 'Engineer' ,email: 'remi.gagnon@codeboxx.biz',user_id: 15)
Employee.create(id: 16,first_name: 'Timothy',last_name: 'Wever',title: 'Developer',email: 'timothy.wever@codeboxx.biz',user_id: 16)
Employee.create(id: 17,first_name: 'Kiril',last_name: 'Kleinerman',title: 'Developer',email: 'kiril.kleinerman@codeboxx.biz',user_id: 17)
Employee.create(id: 18,first_name: 'Emmanuela',last_name: 'Derilus',title: 'Developer',email: 'emmanuela.derilus@codeboxx.biz',user_id: 18)
Employee.create(id: 19,first_name: 'Abdul',last_name: 'Akeeb',title: 'Developer',email: 'abdul.akeeb@codebozz.biz',user_id: 19)
Employee.create(id: 20,first_name: 'Krista',last_name: 'Sheely',title: 'Developer',email: 'krista.sheely@codeboxx.biz',user_id: 20)
Employee.create(id: 21,first_name: 'Jonathan',last_name: 'Murray',title: 'Developer',email: 'jonathan.murray@codeboxx.biz',user_id: 21)

typeA = ['residential', 'commercial', 'corporate', 'hybrid'] ;
typeB = ['residential', 'commercial', 'corporate'] ;
modelA = ['standard', 'premium', 'excelium'] ;
statusA = ['online','down','up','offline','maintenance','busy','crowded','empty'] ;
informationA =['type', 'construction_year', 'elevator_shaft_amount','amount_of_floor','building_status' , 'model','status','number_of_occupants' ] ;

id = 1
100.times do
    random = typeA.sample
    if random == 'residential' then
        Quote.create([{
        id: id,
        type_building: 'residential',
        numApartment: Faker::Number.between(from: 10, to: 500),
        numFloor: Faker::Number.between(from: 1, to: 80),
        numElevator: Faker::Number.between(from: 1, to: 30),
        compagnyName: Faker::Company.name,
        email: Faker::Internet.email
        }])
    
    elsif random == 'commercial' then
        Quote.create([{
        id: id,
        type_building: 'commercial',
        numElevator: Faker::Number.between(from: 10, to: 40),
        compagnyName: Faker::Company.name,
        email: Faker::Internet.email
        }])
        
    elsif random == 'corporate' then
        Quote.create([{
        id: id,
        type_building: 'corporate',
        numApartment: Faker::Number.between(from: 10, to: 500),
        numFloor: Faker::Number.between(from: 1, to: 80),
        numOccupant: Faker::Number.between(from: 1, to: 80),
        numElevator: Faker::Number.between(from: 1, to: 30),
        compagnyName: Faker::Company.name,
        email: Faker::Internet.email
        }])

    elsif random == 'hybrid' then
        Quote.create([{
        id: id,
        type_building: 'hybrid',
        numApartment: Faker::Number.between(from: 10, to: 500),
        numFloor: Faker::Number.between(from: 1, to: 80),
        numOccupant: Faker::Number.between(from: 1, to: 80),
        numElevator: Faker::Number.between(from: 1, to: 30),
        compagnyName: Faker::Company.name,
        email: Faker::Internet.email
        }])
    end
    id = id + 1
end

userId = 22
179.times do
    User.create([{
        id: userId,
        email: Faker::Internet.email,
        password: 'password'
    }])
    userId+=1
end
id = 22

# idCounter = 1
# 100.times do
#     if Employee.where(id: idCounter).nil?
#         Employee.create([{
#             id:idCounter,
#             first_name:Faker::Name.first_name ,
#             last_name:Faker::Name.last_name,
#             title:Faker::Job.position,
#             email:Faker::Internet.email,
#             user_id:user_id
#         }])
#     end
#     idCounter = idCounter + 1
# end

user_id = 22
79.times do
    Employee.create([{
    
        id:id,
        first_name:Faker::Name.first_name ,
        last_name:Faker::Name.last_name,
        title:Faker::Job.position,
        email:Faker::Internet.email,
        user_id:user_id
    }])
    id = id + 1
    user_id = user_id + 1
end

100.times do
    Lead.create([{
        fullNameContact: Faker::Name.name,
        compagnyName: Faker::Company.name,
        email: Faker::Internet.email,
        phoneNumber: Faker::PhoneNumber.cell_phone,
        nameProject: Faker::App.name,
        descriptionProject: Faker::Lorem.paragraph,
        department: Faker::Commerce.department,
        message: Faker::Lorem.paragraph,
        file: Faker::Number.binary,
        date: Faker::Date.between(from: '2021-01-01', to: '2021-10-01')
    }])
end

#file = File.join Rails.root, 'db', File.read('./addresses-us-1000.json')
#data_hash = JSON.parse(file)
#data_hash_size = data_hash['city'].size
data_hash = ''
file = File.join Rails.root, 'db', 'migrate', 'addresses-us-1000.json'
File.open(file, 'r') do |f|
    data_hash = JSON.parse(f.read)
    #data_hash_size = data_hash['city'].size
end

address_id = 0

100.times do
    Address.create([{
        typeAddress: Faker::Address.community,
        status: Faker::Lorem.word,
        entity: Faker::Company.name,
        #numberAndStreet: Faker::Address.street_address,
        numberAndStreet: data_hash['addresses'][address_id]['address1'],
        suiteOrApartment: Faker::Address.building_number,
        #city: Faker::Address.city,
        city: data_hash['addresses'][address_id]['city'],
        #postalCode: Faker::Address.postcode,
        postalCode: data_hash['addresses'][address_id]['postalCode'],
        #country: Faker::Address.country,
        country: data_hash['addresses'][address_id]['state'],
        notes: Faker::Lorem.paragraph
    }])
    address_id = address_id + 1
end 

addressId = 1
user_id = 101
100.times do
    Customer.create([{
        userId: user_id,
        dateCreation: Faker::Date.between(from: '2019-01-01', to: '2021-10-01'),
        compagnyName: Faker::Company.name,
        addressId: addressId,
        fullName: Faker::Name.name,
        contactPhone: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        description: Faker::Lorem.paragraph,
        fullNameTechnicalAuthority: Faker::Name.name,
        technicalAuthorityPhone: Faker::PhoneNumber.cell_phone,
        technicalAuthorityEmail: Faker::Internet.email
    }])
    user_id = user_id + 1
    addressId = addressId + 1
end 

customerId = 1
addressId = 1 

100.times do
    Building.create([{
        customerId: customerId,
        addressId: addressId,
        fullNameAdministrator: Faker::Name.name,
        emailAdministrator: Faker::Internet.email,
        phoneNumberAdministrator: Faker::PhoneNumber.cell_phone,
        fullNameTechnicalContact: Faker::Name.name,
        emailTechnicalContact: Faker::Internet.email,
        phoneTechnicalContact: Faker::PhoneNumber.cell_phone
    }])
    customerId = customerId + 1
    addressId = addressId + 1
end


buildingId = 1
100.times do
    BuildingDetail.create([{
        buildingId:buildingId,
        informationKey:informationA.sample, 
        value:[Faker::Number.between(from: 1950, to: 2021),typeA.sample,statusA.sample]


    }])

    buildingId = buildingId + 1
end

building_Id = 1
employeeId = 1
100.times do
    Batterie.create([{
        buildingId:building_Id,
        types:typeA.sample,
        status:statusA.sample,
        employeeId:employeeId,
        dateCommissioning:Faker::Date.between(from: '2018-01-01', to: '2021-11-10'),
        dateLastInspection:Faker::Date.between(from: '2020-01-01', to: '2021-11-10'),
        certificateOperations:Faker::IDNumber.valid ,
        information:Faker::Lorem.sentence(word_count: 3),
        notes:Faker::Lorem.paragraph(sentence_count: 2)

    }])
    building_Id = building_Id + 1
    employeeId += 1
end

batteryId = 1
compteur = 0
200.times do
    Column.create([{
        batteryId:batteryId,
        types:typeB.sample,
        numberFloorServed:Faker::Number.number(digits: 2),
        status: statusA.sample,
        information:Faker::Lorem.sentence(word_count: 3),
        notes:Faker::Lorem.paragraph(sentence_count: 2)
    }])
    compteur = compteur + 1
    if compteur == 2
        batteryId = batteryId + 1
        compteur = 0
    end
    

end
columnId = 1
compteur = 0
400.times do
    Elevator.create([{
        columnId:columnId ,
        serialNumber: Faker::Barcode.upc_a,
        model:modelA.sample,
        types:typeB.sample,
        status: statusA.sample,
        dateCommissioning:Faker::Date.between(from: '2018-01-01', to: '2021-11-10'),
        dateLastInspection:Faker::Date.between(from: '2020-01-01', to: '2021-11-10'),
        certificateOperations:Faker::IDNumber.valid ,
        information:Faker::Lorem.sentence(word_count: 3),
        notes:Faker::Lorem.paragraph(sentence_count: 2)
    }])
    compteur = compteur + 1
    if compteur == 2
        columnId = columnId + 1
        compteur = 0
    end
end 