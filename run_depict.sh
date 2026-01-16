#!/bin/bash
set -e

# Runtime workspace (must be writable)
export DEPICT_RUN=/userdata
export TMPDIR=${DEPICT_RUN}/tmp

mkdir -p "$DEPICT_RUN/tmp"
mkdir -p "$DEPICT_RUN/backgrounds"
mkdir -p "$DEPICT_RUN/results"

# Force DEPICT to use writable paths
export DEPICT_BACKGROUND_DIR="$DEPICT_RUN/backgrounds"
export DEPICT_GENOTYPE_DIR="$DEPICT_RUN/genotype_data_plink"

exec /opt/depict/src/python/depict.py "$@"
