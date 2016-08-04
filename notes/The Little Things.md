Getting back into gear, I am assisting Andrew ID some targets from a salmonid transcriptome. With said transcriptome I am taking the [blast output](https://github.com/sr320/nb-2016/blob/master/Crazy-blast-Andrew-1--sp.ipynb) and getting some protein names _sans_ SQLshare. 

The tldr can be seen [here](https://github.com/sr320/nb-2016/blob/master/Andrew/Annotation.ipynb), but if you have the time I will point out the key code aspects and leave you with an tabular file.

First we had the good ol `tr`.
<img src="http://eagle.fish.washington.edu/cnidarian/skitch/Annotation_1D4BD559.png" alt="Annotation_1D4BD559.png"/>

Then I went ahead and downloaded the newest version of Swiss-prot details
`http://www.uniprot.org/uniprot/?query=reviewed%3ayes&force=yes&format=tab&columns=id,entry%20name,go-id,interactor,database(GO),go,reviewed,interpro,pathway,protein%20names,genes,tools,organism,length"`

Before `join`ing I needed to `sort`.
<img src="http://eagle.fish.washington.edu/cnidarian/skitch/Annotation_1D4BD5EC.png" alt="Annotation_1D4BD5EC.png"/>

And with the `join` I needed a few parameters

```
!join -t $'\t' -1 3 -2 1 \
blastx_sprot.sort \
/Users/sr320/git-repos/nb-2016/uniprot-reviewed.sort
```

And because we need to get to Excel
`!open blastx-join-uniprot-info.tab -a "Microsoft Excel"`

_Volia_ [a tab file is created](https://github.com/sr320/nb-2016/blob/master/Andrew/blastx-join-uniprot-info.tab?raw=true) that can be examined further.