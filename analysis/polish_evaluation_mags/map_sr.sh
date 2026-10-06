#!/bin/bash

# cd /data/Projects/ShanghaiDogs/

for i in {0..8}
  do
    coverm genome \
        -1 intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D00${i}_350_trim_filter.pair.1.fq.gz \
        -2 intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D00${i}_350_trim_filter.pair.2.fq.gz \
        --single intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D00${i}_350_trim_filter.singles.fq.gz \
        --genome-fasta-directory intermediate-outputs/MAGs_by_sample/D00${i} \
        --genome-fasta-extension gz \
        --output-file intermediate-outputs/polish_evaluation_mags/map_sr/D00${i}.tsv \
        --output-format dense \
        --mapper bwa-mem \
        --min-read-aligned-length 45 \
        --min-read-percent-identity 95 \
        --methods mean \
        -t 40
  done

for i in {10..52}
  do
    coverm genome \
        -1 intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D0${i}_350_trim_filter.pair.1.fq.gz \
        -2 intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D0${i}_350_trim_filter.pair.2.fq.gz \
        --single intermediate-outputs/long-mg-dog/00_quality_control/01_trim_filter_data/ngs/D0${i}_350_trim_filter.singles.fq.gz \
        --genome-fasta-directory intermediate-outputs/MAGs_by_sample/D0${i} \
        --genome-fasta-extension gz \
        --output-file intermediate-outputs/polish_evaluation_mags/map_sr/D0${i}.tsv \
        --output-format dense \
        --mapper bwa-mem \
        --min-read-aligned-length 45 \
        --min-read-percent-identity 95 \
        --methods mean \
        -t 40
  done
