# Destroy all users and tweets
User.destroy_all

# Add some randomly generated fake users and tweets to database
10.times{ |n|
	# Generate random gender, name
	gender = ['male', 'female'].sample
	if gender == 'male'
		name = FFaker::Name.first_name_male
	elsif gender == 'female'
		name = FFaker::Name.first_name_female
	end

	# Creates user with specified gender and name
	user = User.create(
	 	user_name: FFaker::InternetSE.user_name_from_name(name),
	 	screen_name: name,
	 	date_of_birth: rand(18..50).years.ago(Date.today),
	 	gender: gender,
	 	email: FFaker::Internet.email,
	 	profile_pic: "http://lorempixel.com/200/200/people/#{n}",
	 	city: FFaker::Address.city
	)

	# Creates random tweets for user created
	15.times{ user.tweets.create(status: FFaker::Tweet.tweet) }
}
