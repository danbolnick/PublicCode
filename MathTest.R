# Multiplication facts

MathTest <- function(){
	library(beepr)
complements <- c("I love you!", "Good job!", "I'm proud of you!", "Hooray!", "Goooo   Science!!!!!!! (and you need math for science)",  "You are amazing at math!!!!!!",  "Fun Fun Fun","heeeeheeeheee","yay Me!!!!!")
N_problems <- readline(prompt = "How many problems?  " )
N_problems <- as.integer(N_problems)
type <- readline(prompt = "For multiplication type 1, for Division type 2  " )
type <- as.integer(type)
mathfact_number <- readline(prompt = "If you want to do one number mathfacts, type that number here \n otherwise type F:")
if(mathfact_number == "F"){mathfact = F} else{mathfact <- as.integer(mathfact_number)}

correct_count <- 0
	start.time <- Sys.time()

if(type == 1){
	# multiplication
	for(i in 1:N_problems){
		first_number <- if(mathfact) {mathfact} else{sample(1:12, 1)}
		second_number <- sample(1:12,1)
		print(paste("What is ", first_number, " x ", second_number, " ?"))
		answer <- readline(prompt =  ":   ")
			if(answer == first_number * second_number){
				print( " Correct!" )
				correct_count <- correct_count + 1
				beep("treasure")
				} else{
					print("Wrong!!!!!")
					beep("shotgun")

						}}}
					
if(type == 2){
	#Division
	inputs <- c(1:12) %*% t(c(1:12)	)			
	for(i in 1:N_problems){
		row_i <- if(mathfact) {mathfact} else{sample(1:12, 1)}
		col_i <- sample(1:12, 1)
		print(paste("What is ", inputs[row_i, col_i], " divided by ", row_i, " ?"))
		answer <- readline(prompt =  ":   ")
			if(answer == col_i){  
			print( " Correct!" )
			correct_count <- correct_count + 1
			beep("treasure")

				} else{
					print("Wrong!!!!!")
					beep("shotgun")

					}}}
			
end.time <- Sys.time()
print(paste("Elapsed time = ", round(end.time - start.time, 2)))
print(paste(correct_count, " out of ", N_problems, " were correct"))
if(correct_count/N_problems > 0.9) {print(sample(complements, 1))}

print("Would you like to play again? y/n?")
again <- readline()
if(again == "y"){MiriamMath()}
}
