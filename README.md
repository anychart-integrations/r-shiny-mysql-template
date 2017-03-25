[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# R basic template
This example shows how to use Anychart library with the R programming language, Shiny web framework and MySQL database.

## Running

To use this sample you must have R installed, if not you can visit [official R site](https://www.r-project.org/) or follow [these instructions](https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04);
MySQL installed and running, if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

To check your installations, run the following command in the command line:
```
$ R --version
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"... # sample output

$ mysql --version
mysql  Ver 14.14 Distrib 5.5.52, for debian-linux-gnu (x86_64) using readline 6. # sample output
```

To start this example run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/r-shiny-mysql-template.git
```

Navigate to the repository folder:
```
$ cd r-shiny-mysql-template
```

Set up MySQL database, use -u -p flags to provide username and password:
```
$  mysql < database_backup.sql
```

Run R:
```
$ R
```

Install application dependencies, one after another and init Shiny:
```
> install.packages("shiny")

> install.packages("RMySQL")

> install.packages("jsonlite")

> library(shiny)
```
If you have some troubles with dependencies installation, carefully read error messages, e.g. to install 'RMySQL' you may need `sudo apt-get install libmysqlclient-dev` firstly.

Run application supplying absolute path to project folder:
```
> runApp("{PATH_TO_TEMPLATE}") # e.g. runApp("~/work/r-shiny-mysql-template") 
```

Your browser will open the appliation automatically.

## Workspace
Your workspace should look like:
```
r-shiny-mysql-template/
    www/
        css/
            style.css       # css style
	app.R					# main application code
    database_backup.sql     # MySQL database dump
    LICENSE
    README.md
    index.html			# html template
```

## Technologies
Language - [R](https://www.r-project.org/)<br />
Web framework - [Shiny](http://shiny.rstudio.com/)<br />
Database - [MySQL](https://www.mysql.com/)<br />


## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
[© AnyChart.com - JavaScript charts](http://www.anychart.com). Released under the [Apache 2.0 License](https://github.com/anychart-integrations/r-shiny-mysql-template/blob/master/LICENSE).
