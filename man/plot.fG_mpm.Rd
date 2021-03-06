% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.fG_mpm.R
\name{plot.fG_mpm}
\alias{plot.fG_mpm}
\title{plot}
\usage{
\method{plot}{fG_mpm}(x, y = NULL, pages = 1, asp = 0, ncol = 1, ...)
}
\arguments{
\item{x}{a \code{foieGras} \code{mpm} fit object with class \code{fG_mpm}}

\item{y}{optional \code{ssm} fit object with class \code{fG_ssm} corresponding to x. If absent, 1-d plots of \code{gamma_t} time series are rendered 
otherwise, 2-d track plots with locations coloured by \code{gamma_t} are rendered.}

\item{pages}{plots of all individuals on a single page (pages = 1; default) or each individual on a separate page (pages = 0)}

\item{asp}{used a fixed 1:1 aspect ratio for 2-d track plots (asp = 1), or allow aspect ratio to vary between plots (asp = 0; default). 
Ignored if \code{y} is NULL and/or pages = 0}

\item{ncol}{number of columns to use for faceting. Default is ncol = 1 but this may be increased for multi-individual objects. Ignored if pages = 0}

\item{...}{additional arguments to be ignored}
}
\value{
a ggplot object with either: 1-d time series of \code{gamma_t} estimates (if y not provided), with estimation uncertainty ribbons (95 % CI's); 
or 2-d track plots (if y provided) coloured by \code{gamma_t}, with smaller points having greater uncertainty (size is proportional to \code{SE^-2}). 
Plots can be rendered all on a single page (pages = 1) or on separate pages.
}
\description{
visualize fits from an fG_mpm object
}
\examples{
# plot mpm fit object
# 1-d time-series plots
plot(xm) 
# 2-d track plots by adding ssm fit object
plot(xm, xs) 

}
