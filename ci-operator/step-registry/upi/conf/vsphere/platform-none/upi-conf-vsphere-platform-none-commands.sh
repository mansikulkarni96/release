#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

# Remove the platform type details from current install-config
sed -i '/platform:/,$d' "${SHARED_DIR}/install-config.yaml"

# Add platform type: none
cat >> "${SHARED_DIR}/install-config.yaml" << EOF
platform:
  none: {}
EOF
echo "install-config.yaml"
echo "-------------------"
cat ${SHARED_DIR}/install-config.yaml
