% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDataSetList.R
\name{plot_FV_HIST.DataSetList}
\alias{plot_FV_HIST.DataSetList}
\title{Plot histograms of the function values of a DataSetList at a certain target runtime}
\usage{
\method{plot_FV_HIST}{DataSetList}(dsList, runtime,
  plot_mode = "overlay")
}
\arguments{
\item{dsList}{A DataSetList (should consist of only one function and dimension).}

\item{runtime}{The target runtime}

\item{plot_mode}{How to plot the different hisograms for each algorithm. Can be either
'overlay' to show all algorithms on one plot, or 'subplot' to have one plot per algorithm.}
}
\value{
A plot of the histograms of the function values at a the
        target runtime of the DataSetList
}
\description{
Plot histograms of the function values of a DataSetList at a certain target runtime
}
