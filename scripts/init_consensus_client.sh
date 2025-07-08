ACTIVE_PRESET=mainnet lodestar beacon \
  --dataDir ./beacon-data \
  --paramsFile ./consensus/config.yaml \
  --genesisStateFile ./consensus/genesis.ssz \
  --execution.urls http://localhost:8545 \
  --jwtSecret ./consensus/jwt.hex \
  --eth1.providerUrls http://localhost:8545 \
  --rest
