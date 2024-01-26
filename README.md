#### Included in this repository are three functions for R

#### remind_me():
running remind_me() returns a few things that are important to remember, or rather it returns whatever you store in it.  
This is something you can manually change to whatever you may want to see when you run the function  
As of writing this, running `remind_me()` returns:  
[1] "homework"                            
[2] "does this matter"                    
[3] "why would I publish actual reminders"  
[4] "that's private buddy" 

#### cheat():
running cheat() with an assignment number in format "Q3.1.x" will return the solution for the corresponding assignment.  
This only works for assignments 12, 16, and 17. No other assignments were implemented  
For example, running `cheat("Q3.1.17")` returns:  
[1] "ctrl + shift + a"

#### make_art():
dependencies: ggplot2  
Inspired by aRtsy, using the Collatz conjecture (or 3x + 1 equation) demonstrated in the package's README, see:  
https://cran.r-project.org/web/packages/aRtsy/readme/README.html

to use the function, all input variables are optional:  
  seed sets the seed for reproducibility  
  iterations determines the number of data points generated (input * 4)  
  colour_palette determines the palette, and can be any palette that is accepted by hcl.colors()  
  colour_amount determines how many colours of the palette are used  
  min_start is the lowest starting number for the sequence  
  max start is the highest starting number for the sequence  

Test it out with the function call `make_art(632493, colour_palette = "Spectral", colour_amount = 5)`  
(Or fill in whatever you want, this is just an example)
