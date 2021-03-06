% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apply_ancova.r
\name{apply_ancova}
\alias{apply_ancova}
\title{showing pausing site (ps) or internal starting site (ITSS) independently}
\usage{
apply_ancova(inp)
}
\arguments{
\item{inp}{SummarizedExperiment: the input data frame with correct format.}
}
\value{
the SummarizedExperiment with the columns regarding statistics:
\describe{
\item{p_value_slope:}{Integer, the p_value added to the inp}
\item{delay_frg_slope:}{Integer, the slope value of the fit through the
respective delay fragment}
\item{velocity_ratio:}{Integer, the ratio value of velocity from 2 delay
fragments
}
}
}
\description{
apply_ancova is a statistical test to check if fragments showing ps and
ITSS events have significant slope using Ancova test.
The function uses ancova test. Ancova is applied when the data contains
independent variables, dependent variables and covariant variables.
In this case, segments are independent variables, position is the dependent
variable and the delay is the covariant.
}
\examples{
data(stats_minimal)
apply_ancova(inp = stats_minimal)

}
