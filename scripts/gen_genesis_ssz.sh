./eth2-testnet-genesis merge \
  --config=../consensus/config.yaml \
  --mnemonics=../consensus/mnemonics.yaml \
  --eth1-config=../execution/genesis.json \
  ../consensus/genesis.ssz

./eth2-testnet-genesis/eth2-testnet-genesis merge \
  --config=./consensus/config.yaml \
  --mnemonics=./consensus/mnemonics.yaml \
  --eth1-config=./execution/genesis.json \
  ./consensus/genesis.ssz

./prysm.sh prysmctl testnet generate-genesis \
  --output-ssz=../consensus/genesis.ssz \
  --geth-genesis-json-in=../execution/genesis.json \
  --geth-genesis-json-out=../execution/genesis-prysm.json \
  --num-validators=3 \
  --fork=capella \
  --genesis-time=$(date +%s) \
  --chain-config-file=../consensus/config.yaml