# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(id: 1, name: "administrator", role: "admin", email: "admin@app.com", password: "administrator", password_confirmation: "administrator")
manager = User.create(id: 2, name: "manager", role: "manager", email: "manager@app.com", password: "manager", password_confirmation: "manager")
employe1 = User.create(id: 3, name: "employe1", role: "employe", subdivision_id: 1, organization_id: 1, email: "employe1@app.com", password: "employe", password_confirmation: "employe")
employe2 = User.create(id: 4, name: "employe2", role: "employe", subdivision_id: 2, organization_id: 1, email: "employe2@app.com", password: "employe", password_confirmation: "employe")

main_org = Organization.create(organization_name: "main_org", description: "It's main organization")

first_subdivision = Subdivision.create(subdivision_name: "first_subdivision", description: "It's first subdivision", organization_id: 1)
second_subdivision = Subdivision.create(subdivision_name: "second_subdivision", description: "It's second subdivision", organization_id: 1)

car_repair = Report.create(report_name: "Car repairs", user_id: 3, hours: 8, description: "Lights did't work")
dishwasher = Report.create(report_name: "Replacement dishwasher", user_id: 4, hours: 1, description: "Warranty replacement")