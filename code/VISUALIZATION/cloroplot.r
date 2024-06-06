library(chloroplot)
# Plot Ppchloroplast genome.

# 1. Parsing the GenBank file.
gbfile <- "/mnt/rdisk/duydao/PROJECT/CPDNA_MANGO/out/ANNOTATION/GESEQ/GENEMIND/Prumus_genemind_GeSeq_annotated.gb"

t <- PlotTab(
    gbfile = gbfile,
    local.file = TRUE
)

# 2. Generate plot
PlotPlastidGenome(t) # The plot will be saved in a pdf file under your work 
