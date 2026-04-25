#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="yijing-suangua"
DIST_DIR="dist"
SKILL_SRC="skills/${SKILL_NAME}"

rm -rf "${DIST_DIR}"
mkdir -p "${DIST_DIR}"

cd skills
zip -r "../${DIST_DIR}/${SKILL_NAME}.zip" "${SKILL_NAME}"
cd ..

echo "✅ Built ${DIST_DIR}/${SKILL_NAME}.zip"
