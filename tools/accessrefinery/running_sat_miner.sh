#!/bin/bash

# Run AccessRefinery in SAT (MiniSAT) mining mode for multiple datasets.
# Options used:
#   -m        : enable intent mining
#   -s        : use SAT encoding for bit-vectors (MiniSAT)
#   --round N : run N mining rounds (10 rounds here for statistical averaging)

# Run mining on the 'Correctness' dataset (short, correctness-focused cases).
java -jar target/accessrefinery-1.0.jar -m -s --round 10 -f data/Correctness/

# Run mining on scalability datasets to evaluate performance.
java -jar target/accessrefinery-1.0.jar -m -s --round 10 -f data/Scalability_05Keys/
java -jar target/accessrefinery-1.0.jar -m -s --round 10 -f data/Scalability_06Keys/

# Collect outputs: ensure a `results` folder exists and move the generated
# `result/` directory there for later analysis and plotting.
mkdir -p results
mv result/ results/accessrefinery_sat_miner_10rs/
