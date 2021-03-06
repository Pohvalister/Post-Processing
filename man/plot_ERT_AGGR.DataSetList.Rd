% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDataSetList.R
\name{plot_ERT_AGGR.DataSetList}
\alias{plot_ERT_AGGR.DataSetList}
\title{Plot ERT-based comparison over multiple functions or dimensions}
\usage{
\method{plot_ERT_AGGR}{DataSetList}(dsList, aggr_on = "funcId",
  targets = NULL, plot_mode = "radar", use_rank = F,
  scale.ylog = T, maximize = T, erts = NULL)
}
\arguments{
\item{dsList}{A DataSetList (should consist of only one function OR dimension).}

\item{aggr_on}{Whether to compare on functions ('funcId') or dimensions ('DIM')}

\item{targets}{Custom list of function-value targets, one for each function or dimension.}

\item{plot_mode}{How the plots should be created. Can be 'line' or 'radar'}

\item{use_rank}{Wheter to use a ranking system. If False, the actual ERT-values will be used.}

\item{scale.ylog}{Whether or not to scale the y-axis logaritmically}

\item{maximize}{Wheter or not to the data is of a maximization problem}

\item{erts}{Pre-calculated ERT-values for the provided targets. Created by the max_ERTs function
of DataSetList. Can be provided to prevent needless computation in recalculating ERTs when recreating
this plot.}
}
\value{
A plot of ERT-based comparison on the provided functions or dimensions of the DataSetList
}
\description{
Plot ERT-based comparison over multiple functions or dimensions
}
