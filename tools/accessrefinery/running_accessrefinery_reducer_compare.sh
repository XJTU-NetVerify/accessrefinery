#!/bin/bash

# Wrapper to compare reduction outputs between BDD and SAT backends.
# Results are stored under `results/accessrefinery_reducer_compare_results/`.

mkdir -p results/accessrefinery_reducer_compare_results

# Compare BDD reducer outputs with SAT reducer outputs for 'Correctness'.
sh tools/accessrefinery/compare.sh results/accessrefinery_bdd_reducer_10rs/Correctness/  \
    results/accessrefinery_sat_reducer_3rs/Correctness/ \
    results/accessrefinery_reducer_compare_results/Correctness_RRI_AccessRefinery_BDD_with_AccessRefinery_SAT.log

sh tools/accessrefinery/compare.sh results/accessrefinery_bdd_reducer_10rs/Scalability_05Keys/  \
    results/accessrefinery_sat_reducer_3rs/Scalability_05Keys/ \
    results/accessrefinery_reducer_compare_results/Scalability_05Keys_RRI_AccessRefinery_BDD_with_AccessRefinery_SAT.log

sh tools/accessrefinery/compare.sh results/accessrefinery_bdd_reducer_10rs/Scalability_06Keys/  \
    results/accessrefinery_sat_reducer_3rs/Scalability_06Keys/ \
    results/accessrefinery_reducer_compare_results/Scalability_06Keys_RRI_AccessRefinery_BDD_with_AccessRefinery_SAT.log
