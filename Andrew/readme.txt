Guide to files

Diff_all:

Pairwise comparison output from EDGER. Each tab represents a different comparison between sites across all individuals. The total number of transcripts represented, is less than half of the total number of contigs, the data was filtered for lowly expressed transcripts before comparisons. 

CO= Coulter Creek (reference site)
IS= Issaquah creek (low urban)
JE= Jenkins Creek (med urban)
SW= Swamp Creek (high urban)

Full_Sailfish_output_per_individual:

Folder containing 24 files. Each file contains the transcript count for each individual using the transcriptome.fasta as a reference. Columns are:

Name: Trinity derived transcript name
Length: Contig length
TPM: counts per million reads metric
NumReads: estimated raw read count for a given transcript

Sailfish_Counts_all

This file contains the NumReads column for each individual organized by site. 

transcriptome.fasta

Trinity assembled transcript from PEAR merged PE reads for 4 biggest (largest number of raw illumina reads) individuals, one from each site. 

 

