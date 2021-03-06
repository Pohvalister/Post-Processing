% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataSetList.R
\name{get_FV_sample.DataSetList}
\alias{get_FV_sample.DataSetList}
\title{Get Funtion Value Samples}
\usage{
\method{get_FV_sample}{DataSetList}(ds, runtime, algorithm = "all", ...)
}
\arguments{
\item{ds}{A DataSetList object}

\item{runtime}{A Numerical vector. Runtimes at which function values are reached}

\item{algorithm}{Which algorithms in the DataSetList to consider.}

\item{...}{Arguments passed to other methods}
}
\value{
A data.table containing the function value samples for each provided
target runtime
}
\description{
Get Funtion Value Samples
}
