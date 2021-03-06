% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/actUsageMethods.R
\name{getUserAccountUsage}
\alias{getUserAccountUsage}
\title{Get User Account Usage}
\usage{
getUserAccountUsage(account, username = Sys.getenv("SLUSER"), ...)
}
\arguments{
\item{account}{An object of class "account". An account object see \code{\link{account}}.}

\item{username}{SauceLabs username}

\item{...}{Additonal function arguments - Currently unused.}
}
\value{
The result is a breakdown summarizing the total number of jobs and VM time used, in seconds, by day.
}
\description{
Access historical account usage data
}
\examples{
\dontrun{
myAcc <- account()
jobActivity <- getRealTimeJobActivity(myAcc)
#> jobActivity$concurrency$self$allowed
#$manual
#[1] 5
#
#$mac
#[1] 5
#
#$overall
#[1] 5
#
#$real_device
#[1] 0
userActivity <- getUserActivity(myAcc)
#> userActivity$subaccounts$rsaucelabs
#$`in progress`
#[1] 0
#
#$all
#[1] 0
#
#$queued
#[1] 0
userAccUsage <- getUserAccountUsage(myAcc)
#> userAccUsage
#user_name      date no_of_jobs vm_minutes
#1: seleniumPipes 2016-8-12          2        239
#2: seleniumPipes 2016-8-13         65       6399
#3: seleniumPipes 2016-8-15         36       7235
#4: seleniumPipes 2016-8-16          7       1101
}
}
\seealso{
Other actUsageMethods: \code{\link{getRealTimeJobActivity}},
  \code{\link{getUserActivity}}
}

