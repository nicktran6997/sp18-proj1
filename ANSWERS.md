# Q0: Why is this error being thrown?

Answer: There is no Pokemon Model/Table so the Pokemon class is just a null value (doesn't exist).

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Answer: "rails db:seed" essentially loads or seeds some Pokemon into our database from the seeds.rb file and those pokemon entries are loaded into the web page at random. The common factor is that these pokemon entries originated from seeds.rb

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Answer:The line creates a button that says "Throw a Pokeball!" in which, when clicked, it calls the capture_path (in which it routes to the capture_path) with the pokemon's id as a parameter. The button is medium sized and the method used in the routed path is "patch" to update the database with a trainer_id.

# Question 3: What would you name your own Pokemon?

Answer: I usually named my Pokemon after my friends back when I used to play the games.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

Answer: I just used redirect_back because we just need the damage path to come back to the same trainer's page which is what redirect_back does. If a failure exists, I just have the fallback location be the "/trainers" page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Answer: We already have the "render messages" method in our application.html.erb file but there were essentially no messages until we used the line above which gets rendered.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
