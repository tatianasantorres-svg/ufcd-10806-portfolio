#!/bin/bash
DATASET="dataset_oficial_2026.csv"
echo "A iniciar limpeza do ficheiro: $DATASET"
grep "normal" $DATASET > registos_normais.csv
