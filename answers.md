# Q0: Why is this error being thrown?
We called a Pokemon Controller without having initialized it. 
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Picks out of the 4 Pokemon given by the seed. A common factor is the name, which is assigned randomly. 
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Passing in an id in variable @pokemon, The line captures the pokemon for the current logged in trainer when the button is pressed. 
# Question 3: What would you name your own Pokemon?
The original Pokemon name. 
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
the trainer object. The path could have taken in a trainer path. It doesn't need it, cuz we pass in trainer anyway, which is only an input for the trainer path. 
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The flash is just a name val hash, that we get from error messages from Pokemon.
# Give us feedback on the project and decal below!
Sorry I couldn't finish completely! I at least survived my 170 midterm this week.
# Extra credit: Link your Heroku deployed app
