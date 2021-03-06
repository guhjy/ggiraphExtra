% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggAncova.R
\name{ggAncova}
\alias{ggAncova}
\alias{ggAncova.default}
\alias{ggAncova.formula}
\alias{ggAncova.lm}
\title{Make an interactive plot for an ANCOVA model}
\usage{
ggAncova(x, ...)

\method{ggAncova}{default}(x, mapping, use.label = TRUE, use.labels = TRUE,
  ...)

\method{ggAncova}{formula}(x, data, ...)

\method{ggAncova}{lm}(x, label = NULL, digits = 1, interactive = FALSE,
  ...)
}
\arguments{
\item{x}{an object}

\item{...}{additional arguments passed to the generic function}

\item{mapping}{Set of aesthetic mappings created by aes or aes_.}

\item{use.label}{Logical. Whether or not use column label in case of labelled data}

\item{use.labels}{Logical. Whether or not use value labels in case of labelled data}

\item{data}{a data.frame}

\item{label}{A character string of column name be assigned to the label}

\item{digits}{An integer indicating the number of decimal places}

\item{interactive}{A logical value. If TRUE, an interactive plot will be returned}
}
\description{
Make an interactive plot for an ANCOVA model
}
\section{Methods (by class)}{
\itemize{
\item \code{default}: Make an interactive plot for an ANCOVA model

\item \code{formula}: Make an interactive plot for an ANCOVA model

\item \code{lm}: Make an interactive plot for an ANCOVA model
}}

\examples{
require(moonBook)
require(ggplot2)
require(ggiraph)
ggAncova(radial,aes(age,NTAV,color=sex),interactive=TRUE)
fit=lm(NTAV~age+HBP,data=radial)
ggAncova(fit,interactive=TRUE)
ggAncova(NTAV~age+DM,data=radial)
}
