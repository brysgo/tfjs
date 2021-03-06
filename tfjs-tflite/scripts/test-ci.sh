#!/usr/bin/env bash
# Copyright 2021 Google LLC. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =============================================================================

# Exit immediately if a command exits with a non-zero status.
set -e

if [ "$NIGHTLY" = true ]; then
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_safari_mac"
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_ios_11"
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_firefox_mac"
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_chrome_mac"
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=win_10_chrome"
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_android_9"
else
  node ../scripts/run_flaky.js "yarn run-browserstack --browsers=bs_chrome_mac"
fi
