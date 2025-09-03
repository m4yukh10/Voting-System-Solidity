# Vote Smart Contract

## Overview
`Vote` is a simple Solidity smart contract that allows users to cast **yes** or **no** votes. Each address can vote only once. The contract keeps track of the total number of `yes` and `no` votes.

## Features
- Cast a **yes** vote.
- Cast a **no** vote.
- Prevents multiple votes from the same address.
- Tracks total votes for each option.

## Functions

### `yesVote()`
- Allows the caller to cast a **yes** vote.
- Reverts if the caller has already voted.

### `noVote()`
- Allows the caller to cast a **no** vote.
- Reverts if the caller has already voted.

### Public Variables
- `yes`: Number of yes votes.
- `no`: Number of no votes.
- `onlyVote`: Array of addresses that have already voted.

## Example Usage
1. Deploy the contract on an Ethereum-compatible network.
2. Call `yesVote()` or `noVote()` to cast your vote.
3. Check `yes` and `no` variables to see the current vote counts.
4. Attempting to vote again with the same address will fail.

## Security Notes
- Voting is tracked by address; each address can vote only once.
- Uses a simple linear search to check previous votes — may become costly in gas if many addresses vote.