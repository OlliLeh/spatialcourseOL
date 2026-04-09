#' Regional classification data for Finland
#'
#' A dataset containing administrative, functional, and policy-related
#' regional classifications for Finnish municipalities. The data links
#' municipality identifiers to multiple regional hierarchies used in
#' statistical reporting, regional planning, and development policies.
#'
#' @format A data frame with one row per municipality and the following columns:
#' \describe{
#'   \item{tunnus}{Municipality identifier (numeric or character code).}
#'   \item{nimi22}{Municipality name (2022 classification).}
#'   \item{NUTS.1}{NUTS level 1 region (EU statistical classification).}
#'   \item{Tukialue}{National support area classification (Finnish regional aid zones).}
#'   \item{ELY.keskus}{ELY Centre (Centre for Economic Development, Transport and the Environment).}
#'   \item{Suuralue}{Major region (large-area division used in planning and statistics).}
#'   \item{Maakunta}{Region / Province (maakunta).}
#'   \item{Seutukunta}{Sub-region (seutukunta).}
#'   \item{Leader}{LEADER local action group area.}
#'   \item{Alueluokka}{National regional typology (Finnish classification).}
#'   \item{Kuntaryhma}{Municipality group classification (e.g. urban, rural, semi-urban).}
#'   \item{Alueluokka_eng}{English translation of the regional typology.}
#' }
#'
#' @details
#' This dataset is typically used as a lookup table to join regional classifications
#' with statistical indicators (e.g. population, employment, economic development).
#' It enables analysis and visualisation across multiple spatial scales, including
#' EU regions, Finnish provinces, and functional local areas.
#'
#' @source
#' Compiled from official Finnish administrative and statistical regional
#' classifications.
#'
"aluejaot2"
