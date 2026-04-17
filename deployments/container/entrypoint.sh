#!/bin/bash
# Copyright 2026 NVIDIA CORPORATION / CoreWeave
#
# Minimal entrypoint wrapper so the NVIDIA GPU Operator's ClusterPolicy can
# invoke the device plugin via `/bin/bash -c /bin/entrypoint.sh`. All runtime
# configuration is passed through environment variables
# (DP_DISABLE_HEALTHCHECKS, RESOURCE_PREFIX, RESOURCE_SUFFIX,
# DEVICE_LIST_STRATEGY, CDI_ENABLED, CDI_ANNOTATION_PREFIX, etc.) which
# nvidia-device-plugin reads directly, so we simply exec into the binary.
set -e
exec /usr/bin/nvidia-device-plugin "$@"
