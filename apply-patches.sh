#!/bin/bash
#
# Copyright (C) 2022 Giovanni Ricca
#
# SPDX-License-Identifier: Apache-2.0
#

for project_name in $(cd /home/fido/lineageos20/build/patches/lineage20; echo */); do
    project_path="$(tr _ / <<<$project_name)"

    cd /home/fido/lineageos20/"$project_path"
    git am /home/fido/lineageos20/build/patches/lineage20/"$project_name"/*.patch
    git am --abort &> /dev/null
done

# Return to source rootdir
croot
