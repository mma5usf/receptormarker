% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cluster_plotting.R
\name{axis_label_size}
\alias{axis_label_size}
\title{Calculate axis label font size for boxplot}
\usage{
axis_label_size(num_clust)
}
\arguments{
\item{num_clust}{The num_clust argument from \code{\link{clust_boxplot}}}
}
\value{
An integer value for the font size
}
\description{
This is an internal function that returns a font size for the
\code{\link{clust_boxplot}} function that should minimize overlapping of
axis labels.
}
\keyword{internal}

