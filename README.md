# Swap V2

[![Actions Status](https://github.com/oikos-cash/swap-v2-periphery/workflows/CI/badge.svg)](https://github.com/oikos-cash/swap-v2-periphery/actions)
[![npm](https://img.shields.io/npm/v/@oikos/swap-v2-periphery?style=flat-square)](https://npmjs.com/package/@oikos/swap-v2-periphery)

Port of Uniswap v2 periphery for Tron. In-depth documentation on Uniswap
V2 (Ethereum version) is available at
[uniswap.org](https://uniswap.org/docs).

The built contract artifacts can be browsed via [unpkg.com](https://unpkg.com/browse/@oikos/swap-v2-periphery@latest/).

## Contract Addresses

| Chain   | Address                                                                                                       |
| ------- | ------------------------------------------------------------------------------------------------------------- |
| Mainnet | [todo](https://tronscan.org/#/contract/todo)                                                                  |
| Nile    | [TBBNYtDL6wkfwLcBeXLEC4XpLV84PCHkWA](https://nile.tronscan.org/#/contract/TBBNYtDL6wkfwLcBeXLEC4XpLV84PCHkWA) |

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
