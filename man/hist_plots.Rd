% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictors_functions.R
\name{hist_plots}
\alias{hist_plots}
\title{hist_plots}
\usage{
hist_plots(
  dat,
  x_name,
  color = MiMIR::c21,
  scaled = FALSE,
  datatype = "metabolic score",
  main = "Predictors Distributions"
)
}
\arguments{
\item{dat}{data.frame or matrix with the variables to plot}

\item{x_name}{string with the names of the selected variables in dat}

\item{color}{colors selected for all the variables}

\item{scaled}{logical to z-scale the variables}

\item{datatype}{a character vector indicating what data type is beeing plotted}

\item{main}{title of the plot}
}
\value{
plotly image with the histograms of the selected variables
}
\description{
#' Function to plot the histograms for all the variables in dat
}
\examples{
require(MiMIR)
require(plotly)
require(matrixStats)
#load the metabolites dataset
m <- synthetic_metabolic_dataset

#Apply a surrogate models and plot the ROC curve
surrogates<-calculate_surrogate_scores(m, PARAM_surrogates=MiMIR::PARAM_surrogates, roc=FALSE)
#Plot the histogram of the surrogate sex values scaled 
hist_plots(surrogates$surrogates, x_name="s_sex", scaled=TRUE)

}
