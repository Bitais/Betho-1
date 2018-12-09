

#--- Generating USERS
User.create(first_name: "Thibaut", last_name: "de Briey", email: "tdebriey@gmail.com", password: "password")
User.create(first_name: "Gaëtan", last_name: "de Briey", email: "gdebriey@gmail.com", password: "password")
User.create(first_name: "Anne-Claire", last_name: "de Briey", email: "acdebriey@gmail.com", password: "password")

puts "Generated #{User.count} user(s) in the database!"


#--- Generating ESTATES

Estate.create(name: 'Betho', street: 'Mulkerstraat, 2', city: 'Tongeren', description: 'Le chateau de Betho est une propriété magnifique privée, pleine de charme, à égal distance entre les villes de Liège, Maastricht et Hasselt. Ce lieux au caractère avant tout familial se passe de génération en génération depuis près de 500 ans.')
Estate.create(name: 'Rue de Theux', street: 'Rue de Theux', city: 'Brussels', description: 'Beautiful flat at the heart of Brussels')

puts "Generated #{Estate.count} estate(s) in the database!"
