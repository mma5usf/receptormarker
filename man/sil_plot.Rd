% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cluster_plotting.R
\name{sil_plot}
\alias{sil_plot}
\title{Plot silhouette scores for a given clustering of data.}
\usage{
sil_plot(clust_obj, num_clust, ...)
}
\arguments{
\item{clust_obj}{A \code{multiClust} object from which to extract
\code{clust_model} based on the argument \code{num_clust}}

\item{num_clust}{An integer. The desired number of clusters to be used. Note:
This integer should fall within the krange used to generate the
\code{multiClust} object.}

\item{...}{Further arguments to be passed to the \code{\link{plot}}
  function (besides \code{xlab}, \code{ylab}, \code{main}).}
}
\description{
This function plots silhouette scores for each cluster in a given clustering
from \code{clust_obj} by extracting a given \code{sil} from it and leveraging
the special way that the \code{\link[graphics]{plot}} function handles a
\code{\link[cluster]{silhouette}} object.
}
\details{
This function is intended to be used as part of deciding the ideal
  number of clusters to use for analysis. The silhouette score tells
  one the goodness of a given clustering looking at a given data points
  dissimilarity within and outside of its cluster. See
  \code{\link[cluster]{silhouette}} for further details on its calculation.
  This plot allows one to see how well the individual clusters of a given
  clustering perform according to silhouette width. One may pass in the
  \code{k_best} element from the \code{multiClust} object for
  \code{num_clust}, or use a different value. This is where other
  visualizations can be useful.
  See the \emph{Details} section for the \code{\link{multi_clust}} function
  and view the \emph{TIP} for a suggested workflow.
}
\examples{
# First, create a multiClust object
library(datasets)
iris_cluster <- multi_clust(iris[, 1:4])
# Second, use object with sil_plot
sil_plot(iris_cluster, num_clust = 3)
}
\seealso{
\code{\link{multi_clust}}, \code{\link{wss_plot}},
  \code{\link{gap_plot}}, \code{\link{pca_plot}},
  \code{\link{avg_sil_plot}}, \code{\link{clust_boxplot}}
}

