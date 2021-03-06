% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataSetList.R
\name{get_FV_overview.DataSetList}
\alias{get_FV_overview.DataSetList}
\title{Get Function Value condensed overview}
\usage{
\method{get_FV_overview}{DataSetList}(ds, algorithm = "all", ...)
}
\arguments{
\item{ds}{A DataSetList object}

\item{algorithm}{Which algorithms in the DataSetList to consider.}

\item{...}{Arguments passed to other methods}
}
\value{
A data.table containing the algorithm ID, best, worst and mean reached function
values, the number of runs and available budget for the DataSet
}
\description{
Get Function Value condensed overview
}
