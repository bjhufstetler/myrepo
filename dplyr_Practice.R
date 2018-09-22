#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("plotly")

# load the dplyr package
library(dplyr)
# Load sample student data
StudentData<-read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_1959/datasets/SampleClassData.csv")
# Dump the student data
StudentData

#Load the tidyr library
library(tidyr)
#Gather the data
GatheredStudentData <-StudentData %>% gather(Indicator,Score, -SID,-First,-Last)
# Remove NA's
GatheredStudentData <- GatheredStudentData %>% na.omit()
# Dump the student data
glimpse(GatheredStudentData)

# load the `plotly` package
library(plotly)
# This will create your very first plotly visualization
plot_ly(z = ~volcano)

# The diamonds dataset
str(diamonds)
# A firs scatterplot has been made for you
plot_ly(diamonds, x = ~carat, y = ~price)
# Replace ___ with the correct vector
plot_ly(diamonds, x = ~carat, y = ~price, color = ~carat)
# Replace ___ with the correct vector
plot_ly(diamonds, x = ~carat, y = ~price, color = ~carat, size = ~carat)

# Calculate the numbers of diamonds for each cut<->clarity combination
diamonds_bucket <- diamonds %>% count(cut, clarity)
# Replace ___ with the correct vector
plot_ly(diamonds_bucket, x = ~cut, y = ~n, type = "bar", color = ~clarity)


# The Non Fancy Box Plot
plot_ly(y = ~rnorm(50), type = "box")
# The Fancy Box Plot
plot_ly(diamonds, y = ~price, color = ~cut, type = "box")
# The Super Fancy Box Plot
plot_ly(diamonds, x = ~cut, y = ~price, color = ~clarity, type = "box") %>%
  layout(boxmode = "group")

# Your volcano data
str(volcano)
# The heatmap
plot_ly(z = ~volcano, type = "heatmap")
# The 3d surface map
plot_ly(z = ~volcano, type = "surface")

# Create the ggplot2 graph
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point()
# Make your plot interactive
ggplotly()


# Most Trafficked US Airports
  #g <- list(
  #  scope = 'usa',
  #  showland = TRUE,
  #  landcolor = toRGB("gray95")
  #)
  
  #plot_geo(airport_traffic, lat = ~lat, lon = ~long) %>%
  #  add_markers(
  #    text = ~paste(airport, city, state, paste("Arrivals:", cnt), sep = "<br />"),
  #    color = ~cnt, symbol = I("square"), size = I(8), hoverinfo = "text"
  #  ) %>%
  #  colorbar(title = "Incoming flights<br />February 2011") %>%
  #  layout(
  #    title = 'Most trafficked US airports<br />(Hover for airport)', geo = g
  #  )


# Commercial Airports WorldWide
  #str(airports)

# Mapping all commercial airports in the world
  #g <- list(
  #  scope = 'world',
  #  showland = TRUE,
  #  landcolor = toRGB("gray95")
  #)

 # plot_geo(airports, lat = ~Latitude, lon = ~Longitude) %>%
 #  add_markers(
 #    text = ~paste(AirportID, City, Country, sep = "<br />"),
 #    color = ~Country, symbol = I("circle"), size = I(3), hoverinfo = "text", colors = "Set1"
 #  ) %>%
 #  layout(
 #    title = 'Commercial Airports Worldwide', geo = g
 #  )


# Monthly totals of accidental deaths in the USA
plot_ly(x = time(USAccDeaths), y = USAccDeaths) %>% 
  add_lines() %>%
  rangeslider()

# Apple Stock Price With Rangeslider
  #plot_ly(apple_stock_price, x = ~Date) %>%
  #  add_lines(y = ~AAPL.Adjusted, name = "Apple") %>% 
  #  rangeslider() %>% 
  #  layout(
  #    title = "Stock Price Apple",
  #    xaxis = list(title = "Date"),
  #    yaxis = list(title = "Price"))

# Explore the mtcars data frame with str()
str(mtcars)
# Execute the following command
ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_point()

# Change the command below so that cyl is treated as factor
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_point()

# A scatter plot has been made for you
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Color Dependency
ggplot(mtcars, aes(x = wt, y = mpg, color = disp)) +
  geom_point()

# Size Dependency
ggplot(mtcars, aes(x = wt, y = mpg, size = disp)) +
  geom_point()

# Add geom_point() with +
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

# Add geom_point() and geom_smooth() with +
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth() +
  geom_point()

# 1 - The plot you created in the previous exercise
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

# 2 - Copy the above command but show only the smooth line
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth()


# 3 - Copy the above command and assign the correct value to col in aes()
ggplot(diamonds, aes(x = carat, y = price, col = clarity)) +
  geom_smooth()


# 4 - Keep the color settings from previous command. Plot only the points with argument alpha.
ggplot(diamonds, aes(x = carat, y = price, col = clarity)) +
  geom_point(alpha = 0.4)

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Add a geom layer with + and geom_point()
dia_plot + geom_point()

# Add the same geom layer, but with aes() inside
dia_plot + geom_point(aes(color = clarity))

# 1 - The dia_plot object has been created for you
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# 2 - Expand dia_plot by adding geom_point() with alpha set to 0.2
dia_plot <- dia_plot + geom_point(alpha = 0.2)

# 3 - Plot dia_plot with additional geom_smooth() with se set to FALSE
dia_plot + geom_smooth(se = FALSE)

# 4 - Copy the command from above and add aes() with the correct mapping to geom_smooth()
dia_plot + geom_smooth(aes(col = clarity), se = FALSE)







#If/else statements
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}




# ggplot2 round 2

# Explore the mtcars data frame with str()
str(mtcars)

# A scatter plot with LOESS smooth
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() + geom_smooth()

# A scatter plot with an ordinary Least Squares linear model
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() + geom_smooth(method = "lm")

# The previous plot, without CI ribbon
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE)

# The previous plot, without points
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_smooth(method = "lm", se = FALSE)



#Multiple lines
# 1 - Define cyl as a factor variable
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE)

# 2 - Plot 1, plus another stat_smooth() containing a nested aes()
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  stat_smooth(method = "lm", se = FALSE, aes(group = 1))




# Plot 1: change the LOESS span
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  # Add span below
  geom_smooth(se = FALSE, span = 0.7)

# Plot 2: Set the second stat_smooth() to use LOESS with a span of 0.7
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  # Change method and add span below
  stat_smooth(method = "lm", aes(group = 1),
              se = FALSE, col = "black", method = "loess", span = 0.7)

# Plot 3: Set col to "All", inside the aes layer of stat_smooth()
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  stat_smooth(method = "loess",
              # Add col inside aes()
              aes(group = 1, col = "All"),
              # Remove the col argument below
              se = FALSE, span = 0.7)

# Plot 4: Add scale_color_manual to change the colors
myColors <- c(brewer.pal(3, "Dark2"), "black")
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE, span = 0.7) +
  stat_smooth(method = "loess", 
              aes(group = 1, col="All"), 
              se = FALSE, span = 0.7) +
  # Add correct arguments to scale_color_manual
  scale_color_manual("Cylinders", values = myColors)

