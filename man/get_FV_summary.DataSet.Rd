% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataSet.R
\name{get_FV_summary.DataSet}
\alias{get_FV_summary.DataSet}
\title{Get Function Value Summary}
\usage{
\method{get_FV_summary}{DataSet}(ds, runtime, ...)
}
\arguments{
\item{ds}{A DataSet object}

\item{runtime}{A Numerical vector. Runtimes at which function values are reached}

\item{...}{Arguments passed to other methods}
}
\value{
A data.table containing the function value statistics for each provided
target runtime value
}
\description{
Get Function Value Summary
}
