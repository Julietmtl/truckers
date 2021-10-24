# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Company

Company.destroy_all

company1 = Company.create(name: 'Company1', email: 'company1@company1.com', phone_number: '111-111-1111', description: 'First company')
company2 = Company.create(name: 'Company2', email: 'company2@company2.com', phone_number: '222-222-2222', description: 'Second company')
company3 = Company.create(name: 'Company3', email: 'company3@company3.com', phone_number: '333-333-3333', description: 'Third company')

# Truck
Truck.destroy_all

Truck.create({name: 'Ace', company_id: 1, truck_type: 'Big', year: 2021, capacity: 1000, reserved: false})