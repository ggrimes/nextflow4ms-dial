# Nextflow4MS-DIAL

**Nextflow pipeline for reproducible metabolomics data processing with MS-DIAL**.

[![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A520.04.0-brightgreen.svg)](https://www.nextflow.io/)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/4e70a66767f74537a5f8b0999b9e9030)](https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Nextflow4Metabolomics/nextflow4ms-dial&amp;utm_campaign=Badge_Grade)

## Introduction

<!-- TODO nf-core: Write a 1-2 sentence summary of what data the pipeline is for and what it does -->
**nextflow4ms-dial** is a bioinformatics best-practise analysis workflow for Liquid Chromatography-High Resolution Mass Spectrometry (LC-HRMS) metabolomics data processing

The pipeline is built using [Nextflow](https://www.nextflow.io), a workflow tool to run tasks across multiple compute infrastructures in a very portable manner. It comes with docker containers making installation trivial and results highly reproducible.

The workflow support MacOS and Linux operating systems.

## Installation

1. Install [`nextflow`](https://nf-co.re/usage/installation)

2. Install any of [`Docker`](https://docs.docker.com/engine/installation/), [`Singularity`](https://www.sylabs.io/guides/3.0/user-guide/) or [`Podman`](https://podman.io/) for full pipeline reproducibility _(please only use [`Conda`](https://conda.io/miniconda.html) as a last resort; see [docs](https://nf-co.re/usage/configuration#basic-configuration-profiles))_

## Quick Start

1. Download the pipeline repo and dirct to the folder:
	```bash
	git clone https://github.com/Nextflow4Metabolomics/nextflow4ms-dial.git && cd nextflow4ms-dial
	```

2. Run the pipeline with example data:
    ```bash
    nextflow main.nf -profile functional_test > logs/execution.log
    ```

## Configuration


- Before running for your own data files, make sure the reference file in `conf/base.config` and the MS-DIAL config file are set correctly.
- Configuration for running with Docker are set in the file `conf/base.config`.
- Configuration for running with High-Performance Computing and Singularity are set in the file `conf/HiPerGator.config`.
- Parameters for MS-DIAL and MS-FLO are set in their specific configuration files.

## FAQ

1. Why one of the process was not executed after pipeline execution?
	- To avoid unexpected error, please do not use any special characters in file names (except underscore).

2. I allocated 20 CPUs for running the pipeline using Slurm, why I got an error like `Process requirement exceed available CPUs -- req: 5; avail: 3`
	- Make sure to use `--max_cpus` instead of `--cpus` in the config file to define the allocated CPUs for each process.

## Forum

Please put discussions on our [GitHub Discussions](https://github.com/Nextflow4Metabolomics/nextflow4ms-dial/discussions)

## Documentation

The nf-core/nfmsdial pipeline comes with documentation about the pipeline: [usage](https://nf-co.re/nfmsdial/usage) and [output](https://nf-co.re/nfmsdial/output).

## Credits

Dr. Dominick Lemas (Xinsong Du's Ph.D. advisor) and Xinsong Du play an important role on conceptulization.
The `nextflow4ms-dial` was mainly developed by Xinsong Du. 

We thank the following people for their extensive assistance in the development
of this pipeline:

## Semantic Annotations

- Input: mzML [EDAM:format_3244]
- Output: CSV [EDAM:format_3752]
- Operation: peak detection [EDAM:operation_3215]; chromatogram alignment [EDAM:operation_3628]; metabolite identification [EDAM:operation_3803]

## Log File Interpretation

- `execution_report.html` has information regarding run time and the use of computational resources for the workflow execution.
- `execution_timeline.html` has information about the execution timeline of each process.
- `logs/execution.log` is an example log file for a successful execution. The log file includes metadata of the execution such as the versions of the dependency (Nextflow) and the workflow, parameter information such as resource allocation and the software container, the workflow execution progress, and the execution log for each process.
- `error.txt` is an example error log for a failed execution.