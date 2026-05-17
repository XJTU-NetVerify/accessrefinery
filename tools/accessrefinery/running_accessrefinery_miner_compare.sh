#!/bin/bash

# Wrapper to run structured comparisons between AccessAnalyzer CLI outputs
# and AccessRefinery mining outputs. Results are written to
# `results/accessrefinery_miner_compare_results/` as log files per dataset.

mkdir -p results/accessrefinery_miner_compare_results

# Compare Access Analyzer CLI with AccessRefinery using the BDD backend.
sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Correctness/ \
    results/accessrefinery_bdd_miner_10rs/Correctness/ \
    results/accessrefinery_miner_compare_results/Correctness_AccessRefinery_with_WebAccessAnalyzer.log

sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Scalability_05Keys/ \
    results/accessrefinery_bdd_miner_10rs/Scalability_05Keys/ \
    results/accessrefinery_miner_compare_results/Scalability_05Keys_AccessRefinery_with_WebAccessAnalyzer.log

sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Scalability_06Keys/ \
    results/accessrefinery_bdd_miner_10rs/Scalability_06Keys/ \
    results/accessrefinery_miner_compare_results/Scalability_06Keys_AccessRefinery_with_WebAccessAnalyzer.log

# Compare Access Analyzer CLI with AccessRefinery using the SAT backend.
sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Correctness/  \
    results/accessrefinery_sat_miner_10rs/Correctness/ \
    results/accessrefinery_miner_compare_results/Correctness_MCI_AccessRefinery_BDD_with_AccessRefinery_SAT.log

sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Scalability_05Keys/  \
    results/accessrefinery_sat_miner_10rs/Scalability_05Keys/ \
    results/accessrefinery_miner_compare_results/Scalability_05Keys_MCI_AccessRefinery_BDD_with_AccessRefinery_SAT.log

sh tools/accessrefinery/compare.sh results/accessanalyzer_cli/Scalability_06Keys/  \
    results/accessrefinery_sat_miner_10rs/Scalability_06Keys/ \
    results/accessrefinery_miner_compare_results/Scalability_06Keys_MCI_AccessRefinery_BDD_with_AccessRefinery_SAT.log
