require 'minitest/autorun'
require './email'

class EmailTest < Minitest::Test

	def setup
		@data = "36\n
		Finally this phone is testimony to our quest and ever open ears for hearing from our customers since 1921. We look forward to hearing from you today.\n
		All India National Toll Free Number: 180 0425 0426\n
		Working Hours: 10:00 am to 6:00 pm (Monday ~ Friday),\n
		10:00 am to 2:00 pm (Saturday). To report ATM Card Lost, Kindly contact: +91 (44) 2622 3106 / 2622 3109.\n
		TMB Customer Care: +91 9842 461 461\n
		For all your queries, on any of our services in any branch in India, you can now SMS ���help��� or call +91 9842 461 461. TMB���s Customer Care team is at your service (10:00am to 5:30pm) & will address your concerns immediately. You can also email us at: customerservice@tnmbonline.com\n
		NRI Help Desk:\n
		Non Resident Indians / Persons of Indian Origin can write to us for priority response to this separate email id for any queries, questions and banking solutions. Email: nricell@tnmbonline.com\n
		TMB Head Office Static Map (Click for Live Map)\n
		Head Office:\n
		Static Location Map (Pointer A) and the contact address of our Registered and Administrative Office:\n
		Tamilnad Mercantile Bank Limited\n
		(A Scheduled Commercial Bank & Authorized Dealers in Foreign Exchange)\n
		57, V.E. Road, Tuticorin, Tamilnadu, India. Zip: 628 002.\n
		Phone: +91 (461) 232 1382 / 232 1929 / 232 1932.\n
		Email: bd@tnmbonline.com\n
		Email: ttn_tmbankhi@sancharnet.in\n
		Global Network of Branch / ATM���s / Points of Presence:\n
		Click the Branch Network to find out more about the current branches / atms / pop network anwhere in India.\n
		TMB IBD Office Static Map (Click for Live Map)\n
		International Banking Division (IBD / Forex):\n
		Static Location Map of Chennai (Gopalpuram Area - Pointer A) and the complete contact address of our international banking division which takes care of all the overseas and forex activities:\n
		Tamilnad Mercantile Bank Limited\n
		269/2-4, Avvai Shanmugham Road, Royapettah,\n
		Chennai, Tamilnadu, India. Zip: 600 014.\n
		Phone: +91 (44) 2813 1028 / 2813 1029.\n
		Email: ibd@tnmbonline.com\n
		Other Non Banking Administrative Offices:\n
		Click the Non Banking Administrative Offices Network to find out more about the other offices / departments of TMB.\n
		- See more at: http://www.tmb.in/contact_us/our_contact_info_email_and_postal_mail_address.html#sthash.u7R69pmj.dpuf\n
		whymandesign 3 Nov\n
		Can we help eg @WEBiversity @davos: @Delhi listens to @citizens #India @learn #transparency #gov? http://wef.ch/m1ZAW  #WEF @NextBillion\n
		Followed by edutopia\n
		Expand\n
		 Trustlibrary.org ���@TRUSTlibrary 3 Nov\n
		Can we help eg @WEBiversity @davos: @Delhi listens to @citizens #India @learn #transparency #gov? http://wef.ch/m1ZAW  #WEF @NextBillion\n"
	
	@data2 = "19\n
		HackerRank is more than just a company\n
		    We are a tight group of hackers, bootstrappers, entrepreneurial thinkers and innovators. We are building an engaged community of problem solvers. Imagine the intelligence and value that a room would hold if it contained hackers/problem solvers from around the world? We're building this online.\n
		Hypothesis: Every hacker loves a particular type of challenge presented in a certain set of difficulty. If we build a large collection of real world challenges in different domains with an engaging interface, it is going to be incredible! Join us to create history.\n
		Available Positions\n
		Product Hacker product@hackerrank.com\n
		Challenge Curator\n
		Product Evangelist\n
		Product Designer\n
		Content Creator\n
		ACM World Finals Hacker\n
		Backend C++ Hacker\n
		Mail us at hackers@hackerrank.com to chat more. Or you can write to us at interviewstreet@hackerrank.com!\n
		HACKERRANK PERKS\n
		Working for a startup is hard work, but there are plenty of benefits of working for a small, fun, growing team.\n
		[Image] Perk: Get tools for the jobAll the Right ToolsWe know that everyone's perfect workspace is unique to them. We will get you set up with whatever equipment you need to start hacking - a new 15” Macbook Pro or iMac, or a computer of your choice plus a display if you need it. Additionally, if you require any software or other tools, we've got it covered.[Image] Perk: Flexible HoursFlexible HoursBecause we work so hard, we encourage our employees to keep flexible hours and don't require them to track their time. A morning scrum and open communication ensures that the job gets done on time, and we rely on the honor system so that you can work on your own pace.[Image] Perk: HealthcareWellness SupportTo work hard, you have to be healthy. We will cover your health, dental, and visual insurance with no wait period. That means instant benefits from the day you're hired.[Image] Perk: Choice of LocationLocation, Location, LocationWe are the first Indian company to be backed by Y-Combinator, and as a result we have a thriving office in Bangalore and a growing office in Mountain View, CA. Depending on your residency or visa status, we will get you situated in one of our two offices, both of which are located in the heart of their country's tech industry.[Image] Perk: Choice of LocationCreative SupportIf you have a cool side project that you want to launch, we will pay for EC2/heroku servers to get it off the ground. Side projects fuel creativity and learning, which are crucial to the HackerRank culture.\n
		CULTURE\n
		The culture of a startup is reflective of the founders’ DNA. Larry Page & Sergey Brin were PhD’s from Stanford and that’s why Google is filled with high scoring graders from top schools and is very hard to get in if you’re not a CS major. Similarly, the hacker culture at Facebook is inspired by Zuckerberg, a hacker, the design culture by Steve Jobs and so on.\n
		The adjective to describe the environment/founders here is relentless hardworkers. It might be a general trait of a startup but I’m pretty sure it’s a notch higher here and defines the culture. This is what has taken us this far. It’s not working in weekends or allnighters that count, but the effort that goes into building something intellectually engaging for hackers and making it fun is high.\n
		You’ll have to embrace randomness and chaos. There’s some level of discipline (eg: daily scrums) but only so much. We push boundaries everyday, stretch our limits but no one complains because there’s a feeling of doing something great at the end of the day, every single day."
	end

	def test_finds_emails
		result = "hackers@hackerrank.com;interviewstreet@hackerrank.com;product@hackerrank.com"
		assert_equal result, pull_email(@data2.split("\n"))
	end

	def test_finds_emails_with_encoding_errors
		result = "bd@tnmbonline.com;customerservice@tnmbonline.com;ibd@tnmbonline.com;nricell@tnmbonline.com;ttn_tmbankhi@sancharnet.in"

		assert_equal result, pull_email(@data.split("\n"))
	end


end
