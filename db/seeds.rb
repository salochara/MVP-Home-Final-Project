Message.destroy_all
ChatRoom.destroy_all
Recipe.destroy_all
Match.destroy_all
User.destroy_all


puts "Creating users.."
user_attributes = [
  {
    first_name: "Leah",
    last_name: "Sadoun",
    email: "leah@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/43204717.jpg",
    bio: " am Leah Sadoun, from France and I just finish my degree in Business Administration with a specialty in Finance in IDC. I would like to enter into this program due to my desire to discover more of the world and its environment. I believe in the fact that we are a new generation that cannot lives without learning new technologies and its involvement."
  },
  {
    first_name: "Alan",
    last_name: "Glam",
    email: "alan@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/43471281.jpg",
    bio: "Just graduated in Business administration in IDC Herzelya, very motivated to learn as much as possible about how to code and how to launch a good startup."
  },
  {
    first_name: "Salo",
    last_name: "Charabati",
    email: "salo@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543526868/salo.jpg",
    bio: "I would like to work in the high-tech scene in the future. I'm a 3rd year student of CS in Mexico City. I'm a technology enthusiast and looking forward to get the most out of the bootcamp! Very excited to start this journey :)"
  },
  {
    first_name: "Emmanuel",
    last_name: "Asiama",
    email: "emmanuel@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543526849/emmanuel.jpg",
    bio: "I had my Diploma in Business Administration in Cambridge International College UK. Am now upcoming fully stack web Developer leading to become a programmer."
  },
  {
    first_name: "Baraa",
    last_name: "Shrem",
    email: "baraa@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543526849/baraa.jpg",
    bio: "I worked in marketing before, but I always had a passion for startups, technology and making a change, after failing in my first startup I saw that coding skills is what's missing. Le Wagon and to the next startup!"
  },
  {
    first_name: "Cory",
    last_name: "Adelman",
    email: "cory@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/26582200.png",
    bio: "I am originally from Florida. I currently live in Tel Aviv, and I am excited to get started with the program.
I was in Hi-Tech sales and customer service, and now I want to cross over."
  },
  {
    first_name: "Daniel",
    last_name: "Kol Adam",
    email: "daniel@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/ifcrga7o8akcgt8qj5up.jpg",
    bio: "I worked in marketing before, but I always had a passion for startups, technology and making a change, after failing in my first startup I saw that coding skills is what's missing. Le Wagon and to the next startup!"
  },
  {
    first_name: "Gabriel",
    last_name: "Zerbib",
    email: "gabriel@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742296/lnllamfcs75uqceptgtn.jpg",
    bio: "Hi, I'm from Paris but I lived in Boston the last 5 months. I just get my Digital Strategy Master from the Inseec Business School, while I was managing a startup that I created with friends, (https://www.timply.co/). Finally, I moved in Boston to work for a consulting company where I learned a lot about business transformation and leadership. "
  },
  {
    first_name: "Jack",
    last_name: "Cohen",
    email: "jack@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742372/37679463.png",
    bio: "I recently graduated from IDC Herzliya with a degree in Business and Finance. Coding will allow me to understand and write the language of today. After Le Wagon I aim to use my degree as well as the knowledge I have acquired at Le Wagon to drive my entrepreneurial qualities."
  },
  {
    first_name: "Moshe",
    last_name: "Sandmann",
    email: "moshe@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/bsxttxyxrdynxyozuuuq.jpg",
    bio: "I worked in marketing before, but I always had a passion for startups, technology and making a change, after failing in my first startup I saw that coding skills is what's missing. Le Wagon and to the next startup!"
  },
  {
    first_name: "Narmeen",
    last_name: "Massalha",
    email: "narmeen@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/usgnbtpjyfxom3jb23on.jpg",
    bio: "I study economics and management in Tel-Aviv university and right now i work as trader and customer service in IBI investment house. I would like to combine between finance and tech, therefore I would like to know more about this world . codding world . In my high school I was in the computer science path and I knew HTML ."
  },
  {
    first_name: "Ruben",
    last_name: "DenHollander",
    email: "ruben@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/s9v0rwn8ge0dmtimhwgq.jpg",
    bio: "Born in Holland, living in Tel Aviv. Worked for 10 years in online marketing and very excited to change career and start coding! Not sure yet where I'll be after Lewagon, keeping all options open."
  },
  {
    first_name: "Thomas",
    last_name: "Freund",
    email: "thomas@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742464/42932766.jpg",
    bio: "This year I decided to work on myself and I have done a few things. From learning German, volunteering in a Kibbutz in the northern part of Israel, being part of a military course of the IDF, becoming an advanced scuba diver, to working in two incredible startups. The first one is yaesta.com the biggest e-commerce site in Ecuador and the second is Kriptos ."
  },
  {
    first_name: "Yoann",
    last_name: "Benchetrit",
    email: "yoann@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/42249035.jpg",
    bio: "I am French, it's been 3 years that I live in israel, former soldier in Golani, I have a license in computer science (Bac + 3), I have lots of projects, ambition and motivation"
  },
  {
    first_name: "Zaneta",
    last_name: "Uba",
    email: "zaneta@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543742230/43349571.jpg",
    bio: "Hi, I'm Zaneta! I was born in Poland and after living there, in Spain and in London I landed in Israel. I graduated from Academy of Fine Arts (fashion&costume design), worked as a designer, scenic painter and prop maker. It wasn't enough for me so I decided to join the coding bootcamp. It made me feel challenged and I started lovin' it! After the bootcamp I'd love to be involved in some interesting projects and get more experience working as a full stack developer. Thanks for reading this! =)"
  }
]
User.create!(user_attributes)
puts "Created #{User.count} users"

puts "Assigning Tags to Leah...."
leah = User.find_by(first_name: "Leah")
leah.cuisine_list.add("French", "Italian", "Isreali")
leah.interest_list.add("Read", "Travel")
leah.restriction_list.add("Vegetarian")
leah.save
puts "Leah has the following tags #{leah.cuisine_list}, #{leah.interest_list}, #{leah.restriction_list}"


puts "Assigning Tags to Salo...."
salo = User.find_by(first_name: "Salo")
salo.cuisine_list.add("Mexican", "Italian", "Israeli")
salo.interest_list.add("Code", "Swim", "Run")
salo.restriction_list.add("Kosher")
salo.save
puts "Salo has the following tags #{salo.cuisine_list}, #{salo.interest_list}, #{salo.restriction_list}"

puts "Assigning Tags to Emmanuel...."
emmanuel = User.find_by(first_name: "Emmanuel")
emmanuel.cuisine_list.add("Israeli", "Chinese")
emmanuel.interest_list.add("Code", "Swim", "Run")
emmanuel.restriction_list.add("Vegan")
emmanuel.save
puts "Emmanuel has the following tags #{emmanuel.cuisine_list}, #{emmanuel.interest_list}, #{emmanuel.restriction_list}"

puts "Assigning Tags to Baraa...."
baraa = User.find_by(first_name: "Baraa")
baraa.cuisine_list.add("Israeli", "French", "Spanish")
baraa.interest_list.add("Play piano", "Code", "Draw")
baraa.restriction_list.add("Gluten-Free")
baraa.save
puts "Baraa has the following tags #{baraa.cuisine_list}, #{baraa.interest_list}, #{baraa.restriction_list}"

puts "Assigning Tags to Alan...."
alan = User.find_by(first_name: "Alan")
alan.cuisine_list.add("Israeli", "Thai")
alan.interest_list.add("Swim", "Code", "Write")
alan.restriction_list.add("Gluten-Free")
alan.save
puts "Alan has the following tags #{alan.cuisine_list}, #{alan.interest_list}, #{alan.restriction_list}"

puts "Assigning Tags to Cory...."
cory = User.find_by(first_name: "Cory")
cory.cuisine_list.add("Israeli", "Indian", "Spanish")
cory.interest_list.add("Write", "Code", "Read")
cory.restriction_list.add("Lactose-Free")
cory.save
puts "Cory has the following tags #{cory.cuisine_list}, #{cory.interest_list}, #{cory.restriction_list}"

puts "Assigning Tags to Daniel...."
daniel = User.find_by(first_name: "Daniel")
daniel.cuisine_list.add("French", "Indian", "Israeli")
daniel.interest_list.add("Read", "Code", "Travel")
daniel.restriction_list.add("Kosher")
daniel.save
puts "Daniel has the following tags #{daniel.cuisine_list}, #{daniel.interest_list}, #{daniel.restriction_list}"

puts "Assigning Tags to Gabriel...."
gabriel = User.find_by(first_name: "Gabriel")
gabriel.cuisine_list.add("French", "Israeli")
gabriel.interest_list.add("Play piano", "Code", "Travel")
gabriel.restriction_list.add("Vegetarian")
gabriel.save
puts "Gabriel has the following tags #{gabriel.cuisine_list}, #{gabriel.interest_list}, #{gabriel.restriction_list}"

puts "Assigning Tags to Jack...."
jack = User.find_by(first_name: "Jack")
jack.cuisine_list.add("Thai", "Israeli", "Spanish")
jack.interest_list.add("Cook", "Code", "Read")
jack.restriction_list.add("Gluten-Free")
jack.save
puts "Jack has the following tags #{jack.cuisine_list}, #{jack.interest_list}, #{jack.restriction_list}"

puts "Assigning Tags to Moshe...."
moshe = User.find_by(first_name: "Moshe")
moshe.cuisine_list.add("Israeli", "Spanish")
moshe.interest_list.add("Code", "Draw")
moshe.restriction_list.add("Kosher")
moshe.save
puts "Moshe has the following tags #{moshe.cuisine_list}, #{moshe.interest_list}, #{moshe.restriction_list}"

puts "Assigning Tags to Narmeen...."
narmeen = User.find_by(first_name: "Narmeen")
narmeen.cuisine_list.add("Korean", "French", "Israeli")
narmeen.interest_list.add("Play piano", "Code", "Travel")
narmeen.restriction_list.add("Gluten-Free")
narmeen.save
puts "Narmeen has the following tags #{narmeen.cuisine_list}, #{narmeen.interest_list}, #{narmeen.restriction_list}"

puts "Assigning Tags to Ruben...."
ruben = User.find_by(first_name: "Ruben")
ruben.cuisine_list.add("Korean", "Israeli", "Chinese")
ruben.interest_list.add("Swim", "Code", "Draw")
ruben.restriction_list.add("Lactose-Free")
ruben.save
puts "ruben has the following tags #{ruben.cuisine_list}, #{ruben.interest_list}, #{ruben.restriction_list}"

puts "Assigning Tags to Thomas...."
thomas = User.find_by(first_name: "Thomas")
thomas.cuisine_list.add("Korean", "Indian", "Israeli")
thomas.interest_list.add("Read", "Code", "Draw")
thomas.restriction_list.add("Vegan")
thomas.save
puts "thomas has the following tags #{thomas.cuisine_list}, #{thomas.interest_list}, #{thomas.restriction_list}"

puts "Assigning Tags to Yoann...."
yoann = User.find_by(first_name: "Yoann")
yoann.cuisine_list.add("Chinese", "Indian", "Israeli")
yoann.interest_list.add("Swim", "Code", "Write")
yoann.restriction_list.add("Vegan")
yoann.save
puts "yoann has the following tags #{yoann.cuisine_list}, #{yoann.interest_list}, #{yoann.restriction_list}"

puts "Assigning Tags to Zaneta...."
zaneta = User.find_by(first_name: "Zaneta")
zaneta.cuisine_list.add("Mexican", "Israeli")
zaneta.interest_list.add("Read", "Write", "Draw")
zaneta.restriction_list.add("Vegetarian", "Lactose-Free")
zaneta.save
puts "zaneta has the following tags #{zaneta.cuisine_list}, #{zaneta.interest_list}, #{zaneta.restriction_list}"
