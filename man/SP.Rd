% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{SP}
\alias{SP}
\title{Estimator 'SP' for the Expected Running Time (ERT)}
\usage{
SP(data, max_runtime)
}
\arguments{
\item{data}{A dataframe or matrix}

\item{max_runtime}{A Numerical vector. Should have the same size as columns of data}
}
\value{
A list containing ERTs, number of succesfull runs and the succes rate
}
\description{
Estimator 'SP' for the Expected Running Time (ERT)
}
