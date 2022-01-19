###
###

.pkgname <- "BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1"

.seqnames <- c('CP022321.1','CP022322.1','CP022323.1','CP022324.1','CP022325.1',
'CP022326.1','CP022327.1','CP022328.1','CP022329.1','CP022330.1',
'CP022331.1','CP022332.1','CP022333.1','CP022334.1','CP022335.1')

.circ_seqs <- 'CP022335.1'

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Cryptococcus neoformans var. grubii KN99",
        common_name="cryptococcus",
        genome="ASM221672v1",
        provider="NCBI",
        release_date="July 2017",
        source_url="https://www.ncbi.nlm.nih.gov/assembly/GCA_002216725.1/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "CneoformansVarGrubiiKN99"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

