% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDataSetList.R
\name{plot_RT_all_fcts}
\alias{plot_RT_all_fcts}
\title{Plot ERT-plots for multiple functions or dimensions}
\usage{
plot_RT_all_fcts(dsList, scale.xlog = F, scale.ylog = F,
  scale.reverse = F, backend = "plotly")
}
\arguments{
\item{dsList}{A DataSetList (should consist of only one function OR dimension).}

\item{scale.xlog}{Whether or not to scale the x-axis logaritmically}

\item{scale.ylog}{Whether or not to scale the y-axis logaritmically}

\item{scale.reverse}{Wheter or not to reverse the x-axis (when using minimization)}

\item{backend}{Which plotting library to use. Either 'plotly' or 'ggplot2'.}
}
\value{
A plot of ERT-values of the DataSetList
}
\description{
Plot ERT-plots for multiple functions or dimensions
}
