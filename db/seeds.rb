
puts "Remove all data from tables START"
AdminUser.destroy_all
Product.destroy_all
Team.destroy_all
puts "Remove all data from tables END"

puts "Creating Admin User START"

puts "Admin User 1"
AdminUser.create({
	first_name: "Tamojit", 
	last_name: "Chakraborty", 
	email: "tamojit@live.com", 
	username: "tamojit", 
	password: "password"})

puts "Admin User 2"
AdminUser.create({
	first_name: "Sutirtha", 
	last_name: "Chakraborty", 
	email: "sutirtha@test.com", 
	username: "sutirtha", 
	password: "password"})

puts "Admin User 3"
AdminUser.create({
	first_name: "Rishik", 
	last_name: "Chakraborty", 
	email: "rishik@test.com", 
	username: "rishik", 
	password: "password"})

puts "Admin User 4"
AdminUser.create({
	first_name: "Tanaya", 
	last_name: "Mukherjee", 
	email: "tanaya@test.com", 
	username: "tanaya", 
	password: "password"})

puts "Creating Admin User END"

puts "Creating Product START"

puts "Product 1"
product = Product.create({
	name: "Astrology" , 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	category: "SERVICE" ,
	icon_path: "icons/icon1.svg",
	visible: true,
	position: 1 })

product.listings.create({
	name: "Children Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/childrenhoroscope.jpg",
	position: 1 
	})

product.listings.create({
	name: "Fame And Fortune Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/consultapandit.jpg",
	position: 2
	})

product.listings.create({
	name: "Family And Relations Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/familyandrelationshoroscope.jpg",
	position: 3
	})

product.listings.create({
	name: "Full Vedic Horoscope Package",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/fullvedichoroscopepackage.jpg",
	position: 4
	})

product.listings.create({
	name: "Gemstone Consultation",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/gemstoneconsultation.jpg",
	position: 5
	})

product.listings.create({
	name: "Health Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/healthhoroscope.jpg",
	position: 6
	})

product.listings.create({
	name: "Litigation Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/litigationhoroscope.jpg",
	position: 7
	})

product.listings.create({
	name: "Love Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/lovehoroscope.jpg",
	position: 8
	})

product.listings.create({
	name: "Marriage Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/marriagehoroscope.jpg",
	position: 9
	})

product.listings.create({
	name: "Numerology",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/numerology.jpg",
	position: 10
	})

product.listings.create({
	name: "Palmistry",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/palmistry.jpg",
	position: 11
	})

product.listings.create({
	name: "Property Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/propertyhoroscope.jpg",
	position: 12
	})

product.listings.create({
	name: "Tarot Reading",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/tarotreading.jpg",
	position: 13
	})

product.listings.create({
	name: "Varshphal",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/varshphal.jpg",
	position: 14
	})

puts "Product 2"
product = Product.create(
	:name => "Products" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat.", 
	:category => "PRODUCT" ,
	icon_path: "icons/icon2.svg",
	:visible => true,
	position: 2)


product.listings.create({
	name: "Chowki",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/chowki.jpg",
	position: 1 
	})

product.listings.create({
	name: "Blue Sapphire",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/bluesapphire.jpg",
	position: 2
	})

product.listings.create({
	name: "Coral",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/coral.jpg",
	position: 3
	})

product.listings.create({
	name: "Diamond",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/diamond.jpg",
	position: 4
	})

product.listings.create({
	name: "Emerald",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/emerald.jpg",
	position: 5
	})

product.listings.create({
	name: "Gomedh Cats Eye",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/gomedhcatseye.jpg",
	position: 6
	})

product.listings.create({
	name: "Opal",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/opal.jpg",
	position: 7
	})

product.listings.create({
	name: "Pearl",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/pearl.jpg",
	position: 8
	})

product.listings.create({
	name: "Ruby",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/ruby.jpg",
	position: 9
	})

product.listings.create({
	name: "Yellow Sapphire",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/yellowsapphire.jpg",
	position: 10
	})

product.listings.create({
	name: "Gifts",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/gifts.jpg",
	position: 11
	})

product.listings.create({
	name: "Idols",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/idols.jpg",
	position: 12
	})

product.listings.create({
	name: "Magnetic",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/magnetic.jpg",
	position: 13
	})

product.listings.create({
	name: "Puja Items",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/pujaitems.jpg",
	position: 14
	})

product.listings.create({
	name: "Puja Samagri",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/pujasamagri.jpg",
	position: 15
	})

product.listings.create({
	name: "Rudraksha",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/rudraksha.jpg",
	position: 16
	})

product.listings.create({
	name: "Yantra",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/yantra.jpg",
	position: 17
	})

puts "Product 3"
product = Product.create(
	:name => "Pujas" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. ", 
	:category => "SERVICE" ,
	icon_path: "icons/icon4.svg",
	:visible => true,
	position: 3)

product.listings.create({
	name: "Black Magic Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/blackmagicrelated.jpg",
	position: 1 
	})
product.listings.create({
	name: "Children Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/childrenrelated.jpg",
	position: 2
	})
product.listings.create({
	name: "Education Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/educationrelated.jpg",
	position: 3
	})
product.listings.create({
	name: "Finance Career Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/financecareerrelated.jpg",
	position: 4
	})
product.listings.create({
	name: "Health Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/healthrelated.jpg",
	position: 5
	})

product.listings.create({
	name: "Relations Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/relationsrelated.jpg",
	position: 6
	})
product.listings.create({
	name: "Removing Doshas",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/removingdoshas.jpg",
	position: 7
	})

puts "Product 4"
product = Product.create(
	:name => "Vastu" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon5.svg",
	:visible => true,
	position: 4)
product.listings.create({
	name: "Vastu For Business",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/vastuforbusiness.jpg",
	position: 1 
	})
product.listings.create({
	name: "Vastu For Home",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/vastuforhome.jpg",
	position: 2
	})

puts "Creating Product END"

puts "Creating Team START"
puts "Member 1"
Team.create(
	:first_name => "Sutirtha",
	:last_name => "Chakraborty",
	:title => "CEO",
	:email => "sutirtha@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 1,
	:avatar_loc => "team/sutirtha.jpg"
	)

puts "Member 2"
Team.create(
	:first_name => "Tamojit",
	:last_name => "Chakraborty",
	:title => "CFO",
	:email => "tamojit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non",
	:cell_phone => 9876543210,
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 2,
	:avatar_loc => "team/tamojit.jpg"
	)

puts "Member 3"
Team.create(
	:first_name => "Rishik",
	:last_name => "Chakraborty",
	:title => "CTO",
	:email => "rishik@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 3,
	:avatar_loc => "team/rishik.jpg"
	)

puts "Member 4"
Team.create(
	:first_name => "Tanaya",
	:last_name => "Mukherjee",
	:title => "CIO",
	:email => "tanaya@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 4,
	:avatar_loc => "team/tanaya.jpg"
	)

puts "Member 5"
Team.create(
	:first_name => "Mohana",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "mohana@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 5,
	:avatar_loc => "team/mohana.jpg"
	)

puts "Member 6"
Team.create(
	:first_name => "Amrapali",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "amrapali@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 6,
	:avatar_loc => "team/amrapali.jpg"
	)

puts "Member 7"
Team.create(
	:first_name => "Ajit",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "ajit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 7,
	:avatar_loc => "team/ajit.jpg"
	)

puts "Member 8"
Team.create(
	:first_name => "Gargi",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "gargi@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 8,
	:avatar_loc => "team/gargi.jpg"
	)

puts "Member 9"
Team.create(
	:first_name => "John",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "john@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 9,
	:avatar_loc => "team/john.jpg"
	)

puts "Member 10"
Team.create(
	:first_name => "Jane",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "jane@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 10,
	:avatar_loc => "team/jane.jpg"
	)






