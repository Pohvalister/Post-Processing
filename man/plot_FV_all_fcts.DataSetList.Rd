% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDataSetList.R
\name{plot_FV_all_fcts.DataSetList}
\alias{plot_FV_all_fcts.DataSetList}
\title{Plot FV-plots for multiple functions or dimensions}
\usage{
\method{plot_FV_all_fcts}{DataSetList}(dsList, scale.xlog = F,
  scale.ylog = F, backend = "plotly")
}
\arguments{
\item{dsList}{A DataSetList (should consist of only one function OR dimension).}

\item{scale.xlog}{Whether or not to scale the x-axis logaritmically}

\item{scale.ylog}{Whether or not to scale the y-axis logaritmically}

\item{backend}{Which plotting library to use. Either 'plotly' or 'ggplot2'.}
}
\value{
A plot of Function-values of the DataSetList
}
\description{
Plot FV-plots for multiple functions or dimensions
}
