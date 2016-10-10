require 'sinatra'
require 'sendgrid-ruby'

get '/home' do
    erb :home   
end
get '/package' do 
    erb :package
end
get '/team' do
    erb :team
end
get '/test' do
    erb :test
end

post '/home' do
	puts "Take me home!"
		# to do: check email address valilidity

	  # From Address & To Address -> SendGrid::Email
	  # Subject -> String
	  # Content -> SendGrid::Content
	  # Actual Email -> SendGrid::Mail
	  #  Mail( from, subject, to, content )
	  mail = SendGrid::Mail.new( 
	    SendGrid::Email.new(email: "jbedette@yahoo.com"),
	    "Thanks for contacting Luxury Kidney!",
	    SendGrid::Email.new(email: params[:email] ),
	    SendGrid::Content.new(type: 'text/plain', value: <<-EMAILCONTENTS
	      Thanks for letting us know how you feel.
	      Our team will be in contact with you shortly.  For your records here's a copy of the feedback we recieved:
	---------------------------------
	      #{params[:message]}
	EMAILCONTENTS
	      )
	  )
	  sg = SendGrid::API.new( api_key: ENV['SENDGRID_API_KEY'] )

	  response = sg.client.mail._('send').post(request_body: mail.to_json)

	  puts response.status_code
	  puts response.body
	  puts response.headers

	  @title = "Contact XYZ"
	  @msg = "Thanks for your submission"
	  erb :home

end