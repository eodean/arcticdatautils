% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/editing.R
\name{update_object}
\alias{update_object}
\title{Update an object with a new file.}
\usage{
update_object(mn, pid, path, format_id = NULL, new_pid = NULL, sid = NULL)
}
\arguments{
\item{mn}{(MNode) The Member Node to update the object on.}

\item{pid}{(character) The PID of the object to update.}

\item{path}{(character) The full path to the file to update with.}

\item{format_id}{(character) Optional. The format ID to set for the object. When not set, \code{\link{guess_format_id}} will be used to guess the format ID. Should be a \href{https://cn.dataone.org/cn/v2/formats}{DataONE format ID}.}
}
\value{
(character) The PID of the updated object.
}
\description{
This is a convenience wrapper around `dataone::updateObject` which copies in
fields from the old object's System Metadata such as the rightsHolder and
accessPolicy and updates only what needs to be changed.
}
