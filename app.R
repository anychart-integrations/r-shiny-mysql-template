library(shiny)
library(RMySQL)
library(jsonlite)

db = dbConnect(MySQL(),
  dbname = "anychart_db",
  host = "localhost", 
  port = 3306, 
  user = "anychart_user", 
  password = "anychart_pass")

loadData = function(){
  dbGetQuery(db, "SELECT name, value FROM fruits ORDER BY value DESC LIMIT 5")
}

server = function(input, output){}

ui = function(){
  htmlTemplate("index.html",
    title = "Anychart R Shiny template",
    chartTitle = shQuote("Top 5 fruits"),
    chartData = toJSON(loadData())
)}

shinyApp(ui = ui, server = server)
