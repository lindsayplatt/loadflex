% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadLm.R
\name{simulateSolute.loadLm}
\alias{simulateSolute.loadLm}
\title{Produce a set of predictions that reflect the coefficient uncertainty and 
natural variation.}
\usage{
\method{simulateSolute}{loadLm}(load.model, flux.or.conc = c("flux", "conc"),
  newdata, method = c("parametric", "non-parametric"),
  from.interval = c("confidence", "prediction"), rho, ...)
}
\arguments{
\item{load.model}{A loadLm object.}

\item{flux.or.conc}{character. Should the simulations be reported as flux
rates or concentrations?}

\item{newdata}{\code{data.frame}, optional. Predictor data. Column names
should match those given in the \code{loadLm} metadata. If
\code{newdata} is not supplied, the original fitting data will be used.}

\item{method}{character. The method by which the model should be 
bootstrapped. "non-parametric": resample with replacement from the original
fitting data, refit the model, and make new predictions. "parametric":
resample the model coefficients based on the covariance matrix originally
estimated for those coefficients, then make new predictions.}

\item{from.interval}{character. The interval type from which to resample 
(simulate) the solute. If "confidence", the regression model coefficients 
are resampled from their multivariate normal distribution and predictions 
are made from the new coefficients. If "prediction", an additional vector 
of noise is added to those "confidence"-based predictions.}

\item{rho}{An autocorrelation coefficient to assume for the residuals, 
applicable when from.interval=="prediction". If rho is missing and 
interval=="prediction", rho will be estimated from the residuals calculated
from newdata with the fitted (not yet resampled) load.model.}

\item{...}{Other arguments passed to inheriting methods}
}
\value{
A vector of data.frame of predictions, as for the generic 
  \code{\link{predictSolute}}.

A vector of predictions that are distributed according to the 
  uncertainty of the coefficients and the estimated natural variability + 
  measurement error.
}
\description{
This function resamples the coefficients from their joint distribution, then 
makes predictions whose individual errors are sampled from a time series with
the same first-order autocorrelation as the original series of errors.
}
\seealso{
Other simulateSolute: \code{\link{simulateSolute.loadModel}},
  \code{\link{simulateSolute.loadReg2}},
  \code{\link{simulateSolute}}
}
