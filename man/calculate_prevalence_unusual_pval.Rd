% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/unusual_prevalence.r
\name{calculate_prevalence_unusual_pval}
\alias{calculate_prevalence_unusual_pval}
\title{calculate_prevalence_unusual_pval}
\usage{
calculate_prevalence_unusual_pval(data, pops = NULL, conf.level = 0.95,
  region.head = "region", scale = 1)
}
\arguments{
\item{data}{a dataframe containing the number of cases and total population for all regions in the dataset.}

\item{pops}{dataframe containing the region ID in the first and the population size for each region in the dataset in the second column}

\item{conf.level}{Confidence level to be used for calculating the confidence intervals on the prevalence estimates.}

\item{region.head}{variable name of the incidence column in data.}

\item{scale}{Scaling with which to report prevalence (per head, per 100 000, etc.)}
}
\description{
Testing if any regions in the dataset have a significantly
different prevalence than the overall mean using leave-one-out
crossvaliation. This means that the overall mean is re-calculated
for each region, leaving out the data from the region in
question. If population sizes for the regions are supplied,
Fisher's exact test is used to calculate the p-value. If no
population data is supplied, as null hypothesis Poisson distributed
number of cases per region is assumed. P-values are corrected for
multiple testing using the Bonferroni correction.
}

