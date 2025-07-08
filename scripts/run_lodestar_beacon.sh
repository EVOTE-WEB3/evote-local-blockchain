export NODE_OPTIONS="--max-old-space-size=8192"

# lodestar beacon \
./lodestar-v1.31.0-linux-amd64/lodestar beacon \
 --suggestedFeeRecipient "0xCaA29806044A08E533963b2e573C1230A2cd9a2d" \
  --dataDir ./beacon-data \
  --paramsFile ./consensus/config.yaml \
  --genesisStateFile ./consensus/genesis.ssz \
  --execution.urls http://localhost:8545 \
  --jwtSecret ./consensus/jwt.hex \
  --eth1.providerUrls http://localhost:8545 \
  --enr.ip 127.0.0.1 
