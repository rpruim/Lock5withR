% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lock5withR-package.R
\docType{data}
\name{SandP500}
\alias{SandP500}
\title{S \& P 500 Prices}
\format{A data frame with 252 observations on the following 6 variables.
\itemize{ 
   \item{\code{Date}} {Date as a character string} 
   \item{\code{MDY}} {Date as a date object} 
   \item{\code{Open}} {Opening value}

   \item{\code{High}} {High point for the day} 
   \item{\code{Low}} {Low point for
the day} 
   \item{\code{Close}} {Closing value} 
   \item{\code{Volume}} {Shares
traded (in millions)} }}
\source{
Downladed from
\url{http://finance.yahoo.com/q/hp?s=^GSPC+Historical+Prices}
}
\description{
Daily data for S\& P 500 Stock Index
}
\details{
Daily prices for the S\& P 500 Stock Index for trading days in 2010.
}
\examples{

data(SandP500)
if (require(lattice)) {
  xyplot( High + Low ~ Date, data=SandP500, type="l", 
    main="S and P 500",
    auto.key=list(lines=TRUE, points=FALSE))
 }

}
\keyword{datasets}

