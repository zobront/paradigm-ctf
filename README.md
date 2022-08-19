# Paradigm CTF Setup

This is a template for the Spearbit Rearguard team (or anyone else who finds it) to use for Paradigm CTF 2022.

## Set Up

- Create a .env file in the root directory with PARADIGM_RPC_URL and PRIVATE_KEY (these will be used for submission scripts)
- Add your Paradigm RPC to the foundry.toml file (this will be used to fork for tests)

## Running Challenges

- Create a folder in /src with the contracts for the challenge.
- Copy the Template.t.sol file in /test and set it up for the challenge. Link in needed contracts (including mocks). It's already set up to fork the Paradigm network at the start of the test.
- Write exploit in the test, using cast commands or console.logs in the test to aid as needed.
- When the test succeeds, copy everything over to script/Exploitoor.s.sol.
- Call `bash exploit.sh` to run the script on the Paradigm network with your private key.