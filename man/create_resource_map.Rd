% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/editing.R
\name{create_resource_map}
\alias{create_resource_map}
\title{Create a resource map Object on a Member Node.}
\usage{
create_resource_map(mn, metadata_pid, data_pids = NULL, child_pids = NULL,
  check_first = TRUE)
}
\arguments{
\item{mn}{(MNode) The Member Node}

\item{metadata_pid}{(character) The PID of the metadata object to go in the
package.}

\item{data_pids}{(character) The PID(s) of the data objects to go in the
package.}

\item{child_pids}{(character) The resource map PIDs of the packages to be
nested under the package.}

\item{check_first}{(logical) Optional. Whether to check the PIDs passed in as
aruments exist on the MN before continuing. This speeds up the function,
especially when `data_pids` has many elements.}
}
\value{
(character) The created resource map's PID
}
\description{
This function first generates a new resource map RDF/XML document locally and
then uses the dataone::createObject function to create the Object on the
specified MN.
}
\details{
If you only want to generate resource map RDF/XML, see
\code{\link{generate_resource_map}}
}
