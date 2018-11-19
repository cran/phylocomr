## ----echo=FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE
)

## ----eval=FALSE----------------------------------------------------------
#  install.packages('ape')

## ----eval=FALSE----------------------------------------------------------
#  install.packages("phylocomr")

## ----eval=FALSE----------------------------------------------------------
#  devtools::install_github("ropensci/phylocomr")

## ------------------------------------------------------------------------
library("phylocomr")

## ------------------------------------------------------------------------
taxa_file <- system.file("examples/taxa", package = "phylocomr")
phylo_file <- system.file("examples/phylo", package = "phylocomr")
(taxa_str <- readLines(taxa_file))
(phylo_str <- readLines(phylo_file))
ph_phylomatic(taxa = taxa_str, phylo = phylo_str)

## ------------------------------------------------------------------------
traits_file <- system.file("examples/traits_aot", package = "phylocomr")
phylo_file <- system.file("examples/phylo_aot", package = "phylocomr")
traitsdf_file <- system.file("examples/traits_aot_df", package = "phylocomr")
traits <- read.table(text = readLines(traitsdf_file), header = TRUE,
  stringsAsFactors = FALSE)
phylo_str <- readLines(phylo_file)
ph_aot(traits = traits, phylo = phylo_str)

