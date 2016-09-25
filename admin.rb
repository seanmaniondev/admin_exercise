require 'pry'



#you run a site that offers a matching service between vendors selling laptops and customers 
#..looking to purchase; you charge a fee to be listed as a vendor 
#your site's users must sign in and if they are an admin they are able to make changes to the site

#######################################################

#write a function "user_permission" that accepts four parameters: signed_in, admin, paid, and cancelled
#binding.pry
def user_permission(signed_in, admin, paid, cancelled)
	if paid == "no" or cancelled == "yes"
		puts ("Go away!")

	elsif signed_in == "yes" and admin == "yes"
		puts ("You can see and change all the pages")

	elsif signed_in == "yes" and admin == "no"
		puts ("You can see all the pages")

	elsif signed_in == "no"
		puts ("You can't see any of the pages, please sign in")

	else 
		puts ("Thanks, have a good night.")

	end
end

#if the user doesn't pay their bills or has cancelled a deal, show "go away!"
#if the user is signed in and they are an admin, show "you can see and change all the pages!"
#if the user is signed in but they are not an admin, show "you can see all the pages!"
#if the user is not signed in, show "you can't see any of the pages, please sign in!"
#ask the user if they pay their bills (yes/no)
puts ("Have you paid your bills? Yes or No")
paid = gets.strip


#store their answer in a variable


#ask the user if they have cancelled a deal (yes/no)
puts ("Have you cancelled in the last 24 hours? Yes or No")
cancelled = gets.strip

#store their answer in a variable

#ask the user if they are an admin (yes/no)
puts ("Are you an admin? Yes or No")
admin = gets.strip

#store their answer in a variable

#ask the user if they are signed in (yes/no)
puts ("Are you signed in? Yes or No")
signed_in = gets.strip

user_permission(paid, cancelled, admin, signed_in)

#store their answer in a variable



#call the function!!
