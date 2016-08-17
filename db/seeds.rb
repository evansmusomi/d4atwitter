# Destroy all users and tweets
User.destroy_all

# Add some randomly generated fake users and tweets to database 
5.times{
	user = User.create(
	 	user_name: FFaker::Internet.user_name,
	 	screen_name: FFaker::Name.name,
	 	date_of_birth: rand(18..50).years.ago(Date.today),
	 	gender: ['male', 'female'].sample,
	 	email: FFaker::Internet.email,
	 	profile_pic: 'http://placehold.it/100x100'
	)

	10.times{ user.tweets.create(status: FFaker::HipsterIpsum.phrase) }
}
