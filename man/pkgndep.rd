\name{pkgndep}
\alias{pkgndep}
\title{
Number of Dependency Packages
}
\description{
Number of Dependency Packages
}
\usage{
pkgndep(pkg, verbose = TRUE)
}
\arguments{

  \item{pkg}{Package name or the path of the package.}
  \item{verbose}{Whether print messages. }

}
\details{
For each package listed in the "Depends", "Imports" and "Suggests" fields
in the DESCRIPTION file, this function opens a new R session, loads the package
and counts the number of namespaces that are loaded.
}
\value{
A \code{pkgndep} object.
}
\examples{
\dontrun{
x = pkgndep("ComplexHeatmap")
}
# The `x` variable generated by `pkgndep()` is already saved in this package.
x = readRDS(system.file("extdata", "x.rds", package = "pkgndep"))
x
plot(x)
}
