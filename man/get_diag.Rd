% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_diagnosis.R
\name{get_diag}
\alias{get_diag}
\title{Summarize and Plot Distribution of Diagnosis from Clinical Trials Data
This function summarizes and plots distribution of diagnosis (and stages)
in each of the study arm(s).}
\usage{
get_diag(df, subject_id_col, diag_col, treat_col, diag_stage_col = NULL)
}
\arguments{
\item{df}{an object inherited from data.frame. It is
assumed to have a column containing participants' subject ids, a column
containing the primary diagnosis (should be categorical),
a column containing study arm information.}

\item{subject_id_col}{the name of the column that contains
participants' id information}

\item{diag_col}{the name of the column that contains the primary diagnosis}

\item{treat_col}{the name of the column that contains the study arm
information}

\item{diag_stage_col}{Optional. The name of the column that contains
information about the stage of the disease.Optional (default \code{NULL})}
}
\value{
a list containing the following two objects:
\enumerate{
\item a table with distribution of the diagnosis (or diagnosis and stage)
in each study arm
\item a histogram presenting distribution of diagnosis with study arms shown
as side-by-side bars (if stage not provided), or a a histogram presenting
distribution of diagnosis and stages faceted by study arms (stage provided)
}
}
\description{
Summarize and Plot Distribution of Diagnosis from Clinical Trials Data
This function summarizes and plots distribution of diagnosis (and stages)
in each of the study arm(s).
}
\examples{
data(full_data)
get_diag(full_data, "SUBJID", "DIAGTYPE", "ATRT", "DIAGSTAG") #with stages
get_diag(full_data, "SUBJID", "DIAGTYPE", "ATRT") #without stages
}
