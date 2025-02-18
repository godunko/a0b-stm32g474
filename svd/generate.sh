#!/bin/sh

svd2ada STM32G474.svd \
  --output ../source/svd \
  --package A0B.STM32G4XX.SVD \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-elaboration-code-all \
  --no-vfa-on-types
