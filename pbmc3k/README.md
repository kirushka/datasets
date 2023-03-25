# PBMC3K dataset

Dataset of Peripheral Blood Mononuclear Cells (PBMC) single-cell RNA-sequencing (scRNA-seq). The raw data is freely available from 10X Genomics website.


## pbmc3k_umap.tsv

2639 PBMC cells (after filtering) with cell type labels (`cell_type`) and UMAP coordinates (`UMAP_1`, `UMAP_2`). Gene expression values for 3 marker genes (CD20, CD3E, CD14) are aslo included.

- CD20 (MS4A1 gene) - marker of B-cells,
- CD3E - marker of T-cells,
- CD14 - marker of CD14+ monocytes.

This dataset can be used for making scatter plot with color labelling by cell type or gene expression levels (use facets).
