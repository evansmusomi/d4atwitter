# Destroy all users and tweets
User.destroy_all

# Add some randomly generated fake users and tweets to database 
7.times{
	name = FFaker::Name.first_name
	user = User.create(
	 	user_name: FFaker::InternetSE.user_name_from_name(name),
	 	screen_name: name,
	 	date_of_birth: rand(18..50).years.ago(Date.today),
	 	gender: ['male', 'female'].sample,
	 	email: FFaker::Internet.email,
	 	profile_pic: 'http://placehold.it/200x200',
	 	city: FFaker::Address.city
	)

	10.times{ user.tweets.create(status: FFaker::HipsterIpsum.phrase) }
}
