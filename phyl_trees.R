# Loading all the relevant packages
install.packages("ape")
install.packages("BiocManager")
BiocManager::install("ggtree")
library(ggplot2)
library(tidyverse)
library(ape)
library(ggtree)

# Read the nwk file (where the tree is given as parenthetic format)
tree <- read.tree("/projects/btl_scratch/saninta/hiv_tree/hiv_tree.nwk",text = NULL, tree.names = NULL, skip = 0,
                  comment.char = "", keep.multi = FALSE)



# Plot the phylogenetic tree
hiv_tree <- ggtree(tree) + ggtitle("Evolution of HIV-1 (Human Immunodeficiency Virus)") + 
  theme(plot.title = element_text(hjust = 0.5,face="bold")) + geom_tiplab(color="darkgreen",size = 2) 

ggsave("/projects/btl_scratch/saninta/hiv_tree/hiv_tree.png", hiv_tree, device = "png", width=50, height=30, units = "cm", dpi = 300)
ggsave("/projects/btl_scratch/saninta/hiv_tree/hiv_tree.pdf", hiv_tree, device = "pdf", width=50, height=30, units = "cm", dpi = 300)

# Plot a cladogram
hiv_cladogram <- ggtree(tree,branch.length = "none") + ggtitle("Evolution of HIV-1 (Human Immunodeficiency Virus)") + 
  theme(plot.title = element_text(hjust = 0.5,face="bold")) + geom_tiplab(color="purple",size = 2) 

ggsave("/projects/btl_scratch/saninta/hiv_tree/hiv_cladogram.png", hiv_cladogram, device = "png", width=50, height=30, units = "cm", dpi = 300)
ggsave("/projects/btl_scratch/saninta/hiv_tree/hiv_cladogram.pdf", hiv_cladogram, device = "pdf", width=50, height=30, units = "cm", dpi = 300)
