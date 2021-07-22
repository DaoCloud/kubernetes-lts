#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

ROOT="$(dirname "${BASH_SOURCE}")/.."
OUTPUT="../release"
WORKDIR="${ROOT}/workdir"
cd "${WORKDIR}"

KUBE_BUILD_PLATFORMS=(
    linux/amd64
)

make KUBE_BUILD_HYPERKUBE=n KUBE_BUILD_CONFORMANCE=n KUBE_BUILD_PULL_LATEST_IMAGES=n KUBE_RELEASE_RUN_TESTS=n KUBE_BUILD_PLATFORMS="${KUBE_BUILD_PLATFORMS}" release-images