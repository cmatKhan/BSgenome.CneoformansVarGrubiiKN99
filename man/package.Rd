\name{BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1}
\docType{package}

\alias{BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1-package}
\alias{BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1}
\alias{CneoformansVarGrubiiKN99}

\title{Full Genome Sequence for Cryptococcus neoformans var. grubii KN99 (ASM221672v1)}

\description{
  Full genome sequences for Cryptococcus neoformans var. grubii KN99 (assembly ASM221672v1 assembly accession GCA_002216725.1).
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1
genome <- BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1
head(seqlengths(genome))
genome$CP022321.1 # same as genome[["CP022321.1"]]

## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
