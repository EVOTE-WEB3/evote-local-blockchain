../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-1/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8551 \
  --jwtSecret ./config/jwt.hex \
  --port 9000 \
  --rest.port 9596

../lodestar-v1.31.0-linux-amd64/lodestar beacon \
  --dataDir ./node-1/consensus \
  --network dev \
  --paramsFile ./config/config.yaml \
  --genesisStateFile ./config/genesis.ssz \
  --execution.urls http://localhost:8551 \
  --jwtSecret ./config/jwt.hex \
  --port 9000 \
  --discoveryPort 9000 \
  --rest.port 9596 \
  --targetPeers 3 \
  --enr.ip 172.24.204.147

