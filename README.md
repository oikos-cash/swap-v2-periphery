# Swap V2

[![Actions Status](https://github.com/oikos-cash/swap-v2-periphery/workflows/CI/badge.svg)](https://github.com/oikos-cash/swap-v2-periphery/actions)
[![npm](https://img.shields.io/npm/v/@oikos/swap-v2-periphery?style=flat-square)](https://npmjs.com/package/@oikos/swap-v2-periphery)

Port of Uniswap v2 periphery for Tron. In-depth documentation on Uniswap
V2 (Ethereum version) is available at
[uniswap.org](https://uniswap.org/docs).

The built contract artifacts can be browsed via [unpkg.com](https://unpkg.com/browse/@oikos/swap-v2-periphery@latest/).

## Contract Addresses

| Chain   | Contract | Address                                                                                                       |
| ------- | -------- | ------------------------------------------------------------------------------------------------------------- |
| Mainnet | Router   | [TMbtBax52khEa4Rjy5NLEhmMkW6GULKSXX](https://tronscan.org/#/contract/TMbtBax52khEa4Rjy5NLEhmMkW6GULKSXX)      |
| Mainnet | Migrator | [TWdWP2WKNYiXCypPMmg9DurFDjsobBAtaJ](https://tronscan.org/#/contract/TWdWP2WKNYiXCypPMmg9DurFDjsobBAtaJ)      |
| Nile    | Router   | [TMs1rzzLCxEQDXVFKg6fU5vCJF5XgLjHfm](https://nile.tronscan.org/#/contract/TMs1rzzLCxEQDXVFKg6fU5vCJF5XgLjHfm) |

Compiled with `solc 0.6.6+commit.6c089d02.Emscripten.clang`.

# Local Development

The following assumes the use of `node@>=10`.

## Install Dependencies

```
nvm use 12
npm install
```

## Compile Contracts

`npm run compile`

## Run Tests

`npm test`

## Deploy

```sh
npm run deploy:nile
```
