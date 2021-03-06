% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadModel.R
\name{summarizeModel.loadModel}
\alias{summarizeModel.loadModel}
\title{Extract model summary statistics from a loadModel model}
\usage{
\method{summarizeModel}{loadModel}(load.model, ...)
}
\arguments{
\item{load.model}{A load model object, typically inheriting from loadModel 
and always implementing the loadModelInterface.}

\item{...}{Other arguments passed to model-specific methods}
}
\value{
A 1-row data.frame of model metrics
}
\description{
Produce a 1-row data.frame of model metrics. The relevant metrics for 
loadModel models include two sets of statistics about autocorrelation (one for
the regression residuals, one for the 'residuals' used to do the composite
correction).
}
\seealso{
Other summarizeModel: \code{\link{summarizeModel.loadComp}},
  \code{\link{summarizeModel.loadInterp}},
  \code{\link{summarizeModel.loadLm}},
  \code{\link{summarizeModel.loadReg2}},
  \code{\link{summarizeModel}}
}
