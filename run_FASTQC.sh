#!/bin/bash

mkdir -p fastqc_results

for file in /*.fastq.gz; do
    fastqc "$file" -o fastqc_results
done

multiqc fastqc_results -o multiqc_results
