module ApplicationHelper
	# Generates gender icon
	def gender_icon(gender)
		content_tag(:span, "", class: "icon fa fa-#{gender}")
	end

	# Convert given time to Nairobi time zone
	def nairobi_time(time)
		time.in_time_zone("Africa/Nairobi")
	end
end
