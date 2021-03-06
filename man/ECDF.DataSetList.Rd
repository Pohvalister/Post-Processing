% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{ECDF.DataSetList}
\alias{ECDF.DataSetList}
\title{Empirical Cumulative Dsitribution Function of Runtime of a list of data sets}
\usage{
\method{ECDF}{DataSetList}(dsList, ftarget, funcId = NULL)
}
\arguments{
\item{dsList}{A DataSetList object}

\item{ftarget}{A Numerical vector or a list of numerical vector.
Function values at which runtime values are consumed. When it is a list,
it should have the same length as dsList}

\item{funcId}{Function Ids to use}
}
\value{
a object of type 'ECDF'
}
\description{
Empirical Cumulative Dsitribution Function of Runtime of a list of data sets
}
