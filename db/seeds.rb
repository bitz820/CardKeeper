# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '💳 Seeding cards...'

CreditCard.create!(img_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.forbes.com%2Fadvisor%2Fcredit-cards%2Fa-quick-guide-to-each-version-of-the-american-express-platinum-card%2F&psig=AOvVaw2bBirQemGsiVJOF_UUNpVb&ust=1653681468918000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIj1_9b5_fcCFQAAAAAdAAAAABAD',
    name: 'American Express Platinum', 
    description: 'Premium Travel and experiences', benefits: '-5x points on flights -Up tp $200 on Uber cash per year - Access to over 10+ Centurion lounge and Premium lounges around the world', annual_fee: '$695', welcome_bonus: '125,000 points after spending $6000 in the first 6 months', apr: '16.74% to 23.74 %')

    CreditCard.create!(img_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.americanexpress.com%2Fus%2Fcredit-cards%2Fcard%2Fgold-card%2F&psig=AOvVaw0WitcQOKl748LZOcI8INCu&ust=1653683532945000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLC0366B_vcCFQAAAAAdAAAAABAD',
        name: 'American Express Gold', 
        description: 'Enjoy eating at your favorites restaurants', benefits: '-4x points on restaurants around the world -4x points at supermarkets in US - $120 on Uber cash', annual_fee: 250, welcome_bonus: '75,000 points after spending $4000 in the first 6 months', apr: '16.74% to 23.74 %')

        CreditCard.create!(img_url: 'https://icm.aexp-static.com/Internet/Acquisition/US_en/AppContent/OneSite/category/cardarts/blue-cash-preferred.png',
            name: 'American Express Blue cash preferred', 
            description: 'Get the most out of your favorite supermarket', benefits: '6% cashback at US supermarkets', annual_fee: 95, welcome_bonus: '0$ annual fee wave for the first year, $350 back after spending $3000 in the first 6 months', apr: '16.74% to 23.74 %')

            CreditCard.create!(img_url: 'https://icm.aexp-static.com/Internet/Acquisition/US_en/AppContent/OneSite/category/cardarts/blue-cash-everyday.png',
                name: 'American Express Blue Cash Everyday', 
                description: 'Payment flexibility with $0 buy now pay later up to 15 months', benefits: '3% cashback at US supermarkets, 2% cashback on gas', annual_fee: 0, welcome_bonus: '$250 back after spending $2000 in the first 6 months', apr: '14.74% to 24.74 %')

                CreditCard.create!(img_url: 'https://creditcards.chase.com/K-Marketplace/images/cardart/sapphire_preferred_card.png',
                    name: 'Chase Sapphire Preffered', 
                    description: 'Travel with style  ', benefits: '5x points on travel purchases, 3x on dining, 3x on streaming services, travel partners', annual_fee: 95, welcome_bonus: '80,000 points after spending $4000 in the first 3 months', apr: '16.24% to 23.24 %')

                    CreditCard.create!(img_url: 'https://creditcards.chase.com/K-Marketplace/images/cardart/sapphire_reserve_card.png',
                        name: 'Chase Sapphire Preffered', 
                        description: 'Experiences traveling and life with a premium touch', benefits: '$300 dollars on travel credit, 10x on hotels after the $300 credit,10x total points on Chase Dining purchases with Ultimate Rewards, 3x on dining and groceries, travel partners', annual_fee: 550, welcome_bonus: '80,000 points after spending $4000 in the first 3 months', apr: '16.24% to 23.24 %')



        puts '✅ Done seeding!'