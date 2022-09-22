# Snakemake Workflow: Align2MSA.

[![Snakemake](https://img.shields.io/badge/snakemake-≥5.11.0-brightgreen.svg)](https://snakemake.bitbucket.io)

A Snakemake workflow for building concensus sequences of the female specific *Anopheles gambiae* doublesex isoform (__AgdsxF__) from chromosome 2R whole genome sequence data.

## Prerequisites.
* Snakemake
* BWA
* samtools
* bcftools
* tabix
* mafft

## Workflow Configuration.
Within the `config.yaml` file in the `/config` directory, the path to sequence reads needs to be specified under `samplepath:`. The desired sample ID's should be specified within the `sampleids.csv` file.

## Workflow Execution.

To ensure your configuration is suitable, perform a dry run:

    snakemake --cores 1 -n

Should the dry run be successful, execute the workflow by providing a desired number of cores, 8 given in this example.

    snakemake --cores 8

## Generate DAG of Jobs.

In order to visualize the workflow execution process you may consider generating a directed-acyclic-graph(DAG) of jobs. This can be done as a dry run.

    snakemake --cores 1 --dag | dot -Tsvg > align2msaDAG.svg

## Generate Workflow Report.
Generate a workflow execution report using;

    snakemake --report align2msa.html

    