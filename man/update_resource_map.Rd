% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/editing.R
\name{update_resource_map}
\alias{update_resource_map}
\title{Update an existing resource map Object on a Member Node.}
\usage{
update_resource_map(mn, resource_map_pid, metadata_pid, data_pids = NULL,
  child_pids = NULL, other_statements = NULL, identifier = NULL,
  public = FALSE, check_first = TRUE)
}
\arguments{
\item{other_statements}{(data.frame) Extra statements to add to the Resource Map.}

\item{identifier}{}

\item{public}{Whether or not to make the new resource map public read
(logical)}

\item{check_first}{(logical) Optional. Whether to check the PIDs passed in as
aruments exist on the MN before continuing. This speeds up the function,
especially when `data_pids` has many elements.}
}
\description{
This function first generates a new resource map RDF/XML document locally and
then uses the dataone::updateObject function to update an Object on the
specified MN.
}
\details{
If you only want to generate resource map RDF/XML, see
\code{\link{generate_resource_map}}.

This function also can be used to be used to add a new child packages to a
parent package. For exmaple, if you have:

Parent A B

and want to add C as a sibling package to A and B, e.g.

Parent A B C

you could use this function.

Note: This function currently replaces the rightsHolder on the Resource Map
temporarily to allow updating but sets it back to the rightsHolder that was
in place before the update.
}
