% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataSetList.R
\name{get_RT_summary.DataSetList}
\alias{get_RT_summary.DataSetList}
\title{Get RunTime Summary}
\usage{
\method{get_RT_summary}{DataSetList}(ds, ftarget, algorithm = "all", ...)
}
\arguments{
\item{ds}{A DataSetList object}

\item{ftarget}{The function target(s) for which to get the runtime summary}

\item{algorithm}{Which algorithms in the DataSetList to consider.}

\item{...}{Arguments passed to other methods}
}
\value{
A data.table containing the runtime statistics for each provided target
function value
}
\description{
Get RunTime Summary
}
