% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jobMethods.R
\name{deleteJobAssets}
\alias{deleteJobAssets}
\title{Delete Job Assets}
\usage{
deleteJobAssets(account, username = Sys.getenv("SLUSER"), jobID, ...)
}
\arguments{
\item{account}{An object of class "account". An account object see \code{\link{account}}.}

\item{username}{SauceLabs username}

\item{jobID}{Id of the job to delete assests from}

\item{...}{Additonal function arguments - Currently unused.}
}
\description{
Delete all the assets captured during a test run. This includes the screencast recording, logs, and all screenshots.
}
\examples{
\dontrun{
myAcc <- account()
myJobs <- getJobs(myAcc)
#> myJobs$data[1,]
#id
#1: 4152e0a185f945bfa43e091eef1e7c30
myJobs <- getJobs(myAcc, getFullJobs = TRUE)
#> myJobs$data[1,.(id, browser)]
#id      browser
#1: 4152e0a185f945bfa43e091eef1e7c30 googlechrome
testId <- myJobs$data[1, id]

#> myJobs$data[1,.(build, passed)]
#build passed
#1:    24  FALSE

# update this job
updateJob(myAcc, jobID = testId, passed = TRUE, build = 20)
myJobs <- getJobs(myAcc, getFullJobs = TRUE)
#> myJobs$data[1,.(build, passed)]
#build passed
#1:    20   TRUE
# deleteJob(myAcc, jobID = testId)
stopJob(myAcc, jobID = testId)

jobAssets <- getJobAssetNames(myAcc, jobID = testId)
#> jobAssets[["selenium-log"]]
#[1] "selenium-server.log"

jobLog <- getJobAssetFiles(myAcc, jobID = testId)
# deleteJobAssets(myAcc, jobID = testId)
}

}
\seealso{
Other jobMethods: \code{\link{deleteJob}},
  \code{\link{getJobAssetFiles}},
  \code{\link{getJobAssetNames}}, \code{\link{getJobs}},
  \code{\link{stopJob}}, \code{\link{updateJob}}
}

