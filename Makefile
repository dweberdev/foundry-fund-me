-include .env

build:; forge build

deploysepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

cleanbuild:
	forge clean
	forge build

testfunc:
	forge test --match-test $(func)

test:
	forge test
