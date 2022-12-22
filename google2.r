
## setup
library(googleAnalyticsR)

## authenticate, or use the RStudio Addin "Google API Auth" with analytics scopes set
##token <- ga_auth()
##saveRDS(token, file = "ga-token.rds")
##ga_auth()

##Sys.setenv(GA_AUTH_FILE = "\\CAFS01/Users$/Kahn/Documents/.httr-oauth")

##options(httr_oauth_cache = FALSE)
ga_auth(token = "C://work/.httr-oauth")


## Remove current token
##file.remove('.httr-oauth')

## get your accounts
account_list <- ga_account_list()

## pick a profile with data to query
ga_id <- account_list[2,'viewId']


##GA Campaign
ga_data1 <-  google_analytics(ga_id, 
date_range = c("2018-07-01","2020-06-30"),
dimensions=c('campaign'), 
metrics = c('users','newUsers','bounceRate','sessions','pageviewsPerSession','avgSessionDuration','transactionsPerSession','transactions','transactionRevenue'))					  

write.csv(ga_data1, file = "//caserver/AllUser/Employee Files/Kevin/GoogleAnalytics/GA_Campaign.csv")
				  
			
				  
ga_data2 <-  google_analytics(ga_id, 
date_range = c("2018-07-01","2020-06-30"),
dimensions=c('campaign','productName'), 
metrics = c('itemQuantity','uniquePurchases','itemRevenue'))					  

write.csv(ga_data2, file = "//caserver/AllUser/Employee Files/Kevin/GoogleAnalytics/GA_ProductPerformance.csv")		


##library(taskscheduleR)
##myscript <- system.file("extdata", "D://R/google2.r", package = "taskscheduleR")
##taskscheduler_create(taskname = "myfancyscript", rscript = "D://R/google2.r", schedule = "ONCE", starttime = format(Sys.time() + 1, "%H:%M"))		  
				  
				  