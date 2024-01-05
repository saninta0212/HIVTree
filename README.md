## Description:

 Visualizing evolution in HIV (Human Immunodeficiency Virus) </br>
 
 ## Steps taken: </br>

1. Run [BLAST](https://blast.ncbi.nlm.nih.gov/Blast.cgi) </br>
   - Query: [sequence](https://www.ncbi.nlm.nih.gov/nuccore/AF033819.3?report=fasta) </br>
   - Results: [hiv_blast.fa](./hiv_blast.fa)

  
2. Perform Multiple Sequence Alignment using [MUSCLE](https://www.ebi.ac.uk/Tools/msa/muscle/) </br>
   - Query: [hiv_blast.fa](./hiv_blast.fa) </br>
   - Results: [hiv_muscle.fa](./hiv_muscle.fa)
   
   
3. Build a phylogenetic tree using [Simple Phylogeny](https://www.ebi.ac.uk/Tools/phylogeny/simple_phylogeny/) </br>
   - Query: [hiv_muscle.fa](./hiv_muscle.fa) </br>
   - Results: [hiv_tree.nwk](./hiv_tree.nwk)
   

4. Use [ggTree](./phyl_trees.R) (R Tree package) to visualize the tree: </br>
   -  Input: [hiv_tree.nwk](./hiv_tree.nwk) </br>
   -  Results: Tree Output - [hiv_tree.png](./hiv_tree.png) and
               Cladogram Output - [hiv_cladogram.png](./hiv_cladogram.png)
               
   
   
   
    
 

