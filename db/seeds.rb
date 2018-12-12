require 'faker'

#--- Generating USERS
User.create(first_name: "Thibaut", last_name: "de Briey", email: "tdebriey@gmail.com", password: "password")
User.create(first_name: "Gaëtan", last_name: "de Briey", email: "gdebriey@gmail.com", password: "password")
User.create(first_name: "Anne-Claire", last_name: "de Briey", email: "acdebriey@gmail.com", password: "password")

puts "Generated #{User.count} user(s) in the database!"


#--- Generating ESTATES

Estate.create(name: 'Betho', street: 'Mulkerstraat, 2', city: 'Tongeren', description: 'Le chateau de Betho est une propriété magnifique privée, pleine de charme, à égal distance entre les villes de Liège, Maastricht et Hasselt. Ce lieux au caractère avant tout familial se passe de génération en génération depuis près de 500 ans.')
Estate.create(name: 'Rue de Theux', street: 'Rue de Theux', city: 'Brussels', description: 'Beautiful flat at the heart of Brussels')

puts "Generated #{Estate.count} estate(s) in the database!"


#--- Generating INCOME
category = %w(rent farm event financial other product-sales other)
income_type = %w(recuring exceptional reimbursement other)

5.times do |n|
  income = Income.new(amount: rand(250..2500), description: Faker::Artist.name, income_type: income_type.sample, category: category.sample, date: Faker::Date.between(700.days.ago, Date.today), estate: Estate.all.sample)
  income.save!
end

puts "Generated #{Income.count} income(s) in the database!"


#--- Generating EXPENSES
category = %w('interior design' 'commissions' 'insurance' 'repairs' 'maintenance' 'wages' 'loan' 'service fees' 'utilities' 'taxes' 'special assessment')
