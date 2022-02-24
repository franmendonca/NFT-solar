# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rental.destroy_all
User.destroy_all
Nft.destroy_all

user_1 = User.create(username: "Pedro", email: "pedro@lewagon.com", password: "12345678")
user_2 = User.create(username: "John", email: "John@lewagon.com", password: "12345678")
user_3 = User.create(username: "Maria", email: "maria@lewagon.com", password: "12345678")

puts "Created #{User.count} users"

nft1 = Nft.create(user_id: user_1.id, name: "Fimbul ECOS Treearrow", description: "The Fimbul ECOS Treearrow takes a slice out of pre-MUDian earth era biomes and creates a portable living vessel welcoming to all of humankind. All peoples who feel stranded and abandoned by the traumatizing break humanity experienced when they loosened themselves from Mother Earth's nurturing embrace can find a grounding home aboard the ECOS Treearrow. Equipped for terrifying planetary destruction, discovering this ship in your atmosphere is rarely ever a good omen. Unless, of course, it is above Earth Prime, the new home of the ECOS ideologues who terraformed a distant planet to match humanity's one true biome and where you can find these ships being built with delicate care.", price: 99500, wallet_address: "EgPmakPgqQ2AJp6weiZBNSYgAsHQ5vx7ZnpS9h")
nft2 = Nft.create(user_id: user_1.id, name: "Pearce C9", description: "The original crowning glory of Pearce manufactured battleships, the C9 capital carrier comes stock fitted with commander sized weaponry and best in class hull plating. The capital drone port houses a team of Pearce Hulltank attack drones. A generous sized top deck and adjacent hangar bay allows an effective sized fleet of varying sized ships for tactical deployment, cargo and vehicle transport and maintenance. An oversized command deck creates the best tactical viewpoint and strike team for any security focused Captain and crew. A ship or fleet out in deep space will measure twice and think again before engaging the C9 and the crew can rest or work safely knowing the power they wield at the helm of this highly equipped space platform.", price: 28900, wallet_address: "53k3iqaKSfcib8SJ3ZCKuDbRCbpiP8tJimGHD")
nft3 = Nft.create(user_id: user_3.id, name: "Calico Guardian", description: "Calico's flagship multi-role, exploration vessel, the Guardian, is a marvel of modern spaceship technology. Clean, sporty and full of utility, this capital ship can be the home of an extra large crew destined to comb the furthest reaches of the known and unknown sectors of our galactic neighborhood. All imaginable creature comforts and sustainable bio practices onboard this ship put the crew of any Guardian at ease as they explore for new life and new biomes. Packed with two extra large chambers of explorer drones and dual cartography navigation rooms, the Guardian also doubles as the space charting headquarters for any and all exploration or data validation fleets. Comes standard with a double decker theater for keeping the crew entertained with the latest the metaverse has to offer in live, hyperlive and streaming entertainment. Stacked with massive turret cannons for heavy defense, if you had to choose only one ship to get you through your entire space life and career, you cannot possibly go wrong with the Calico Guardian.", price: 29985, wallet_address: "JASoNvc2K2jpXm13mGMmhN9ktevpS4PDijayr")
nft4 = Nft.create(user_id: user_2.id, name: "Fimbul ECOS Bombarella", description: "The Fimbul ECOS Bombarella is a massive, capital-sized bombardment system housed in a holistic and empathetic space vessel. With an emphasis on unusually thick hull plating, oversized bomb bays, highly comfortable and meditative living facilities, the Bombarella commits swift justice to the violators of the natural worlds while providing one of the most satisfying ways to experience life on the open vacuum of black space. Peace and love through dismantlement and rebirth.", price: 30000, wallet_address: "AWdKTNbePvVzs1PZmhA3g9KJoT9FcghMjKo7B")
nft5 = Nft.create(user_id: user_2.id, name: "Ogrika Jod Asteris", description: "The Ogrika Jod Asteris is a capital class transport vessel representing the ultimate in punaab ultra-luxury accommodations. With an onboard capital sized theater for live events, multiple cafes, lounge areas and a generous sized observatory deck, this cruise ship is the finest way to tour the stars. Experience astronomical opulence only attainable through the inimitable signature of the viciously wealthy punaab ship manufacturers.", price: 25000, wallet_address: "3fwxxdftJYAaYeUCXvkG9SuBVCudBWtM3jNKut")
nft6 = Nft.create(user_id: user_3.id, name: "Pearce C11", description: "The Pearce C11 is the most significant fleet carrier vessel to come from the MUD Territory. The C11's hull is riddled with hangar bays and studded with turret weapon arrays providing a platform to house and protect an entire fleet of ships all the way up to capital sized docking mechanics. Attempting to approach this ship with hostility is a well documented fatal error and that fact is common knowledge for any Jorvik roving band of pirates. Often doubling as organization headquarters, the C11 provides every imaginable onboard accommodations to equip and sustain an entire fleet of ships and a broad roster of crew members.", price: 80100, wallet_address: "GSBY45McYXMWfb7JgvrdRWi9gkjKX2LxvrJZQs")

file1 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645626622/spaceship1_yhfjrh.png")
file2 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645615010/nelpiw9a4i23jbemtdgh.jpg")
file3 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645629351/spaceship2_vehduf.png")
file4 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645614783/f9tctdm999zcxuyixgad.jpg")
file5 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645629520/spaceship3_w2kd5j.jpg")
file6 = URI.open("https://res.cloudinary.com/dyjfvl0sr/image/upload/v1645629657/spaceship5_fgupip.jpg")


nft1.photo.attach(io: file1, filename: 'spaceship1_yhfjrh.png', content_type: 'image/png')
nft2.photo.attach(io: file2, filename: 'nelpiw9a4i23jbemtdgh.jpg', content_type: 'image/jpg')
nft3.photo.attach(io: file3, filename: 'spaceship2_vehduf.png', content_type: 'image/png')
nft4.photo.attach(io: file4, filename: 'f9tctdm999zcxuyixgad.jpg', content_type: 'image/jpg')
nft5.photo.attach(io: file5, filename: 'spaceship3_w2kd5j.jpg', content_type: 'image/jpg')
nft6.photo.attach(io: file6, filename: 'spaceship5_fgupip.jpg', content_type: 'image/jpg')
nft1.save
nft2.save
nft3.save
nft4.save
nft5.save
nft6.save

puts "Created #{Nft.count} nfts"
