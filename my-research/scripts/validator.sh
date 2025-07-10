# Terminal untuk SEMUA 8 validator
../lodestar-v1.31.0-linux-amd64/lodestar validator \
    --dataDir ./validator-data \
    --beaconNodes http://localhost:9596,http://localhost:9597,http://localhost:9598,http://localhost:9599 \
    --importKeystores ./config/keystores \
    --importKeystoresPassword ./config/keystores/password.txt \
    --startValidators 0..7 \
    --suggestedFeeRecipient 0x3E08eE0bF834ed10345D49E0e31238111a51C93E

../lodestar-v1.31.0-linux-amd64/lodestar validator \
  --dataDir ./node-1/validator-data \
  --network dev \
  --beaconNodes http://localhost:9596 \
  --importKeystores ./keys/node1 \
  --importKeystoresPassword ./keys/node1/password.txt \
  --suggestedFeeRecipient 0x3E08eE0bF834ed10345D49E0e31238111a51C93E

../lodestar-v1.31.0-linux-amd64/lodestar validator \
  --dataDir ./node-2/validator-data \
  --network dev \
  --beaconNodes http://localhost:9597 \
  --importKeystores ./keys/node2 \
  --importKeystoresPassword ./keys/node2/password.txt \
  --suggestedFeeRecipient 0x3E08eE0bF834ed10345D49E0e31238111a51C93E


../lodestar-v1.31.0-linux-amd64/lodestar validator \
  --dataDir ./node-3/validator-data \
  --network dev \
  --beaconNodes http://localhost:9598 \
  --importKeystores ./keys/node3 \
  --importKeystoresPassword ./keys/node3/password.txt \
  --suggestedFeeRecipient 0x3E08eE0bF834ed10345D49E0e31238111a51C93E

../lodestar-v1.31.0-linux-amd64/lodestar validator \
  --dataDir ./node-4/validator-data \
  --network dev \
  --beaconNodes http://localhost:9599 \
  --importKeystores ./keys/node4 \
  --importKeystoresPassword ./keys/node4/password.txt \
  --suggestedFeeRecipient 0x3E08eE0bF834ed10345D49E0e31238111a51C93E