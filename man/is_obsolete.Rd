% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{is_obsolete}
\alias{is_obsolete}
\title{Test whether the object is obsoleted by another object.}
\usage{
is_obsolete(node, pids)
}
\arguments{
\item{node}{(MNode|CNode) The Coordinating/Member Node to run the query on.}

\item{pids}{(character) One or more PIDs to query against.}
}
\value{
(logical) Whether or not the object is obsoleted by another object.
}
\description{
Test whether the object is obsoleted by another object.
}
