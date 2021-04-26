# The Ylem Contract-Oriented Programming Language

Ylem is a statically typed, contract-oriented, high-level language for implementing smart contracts on the Core-Coin platform.

For a good overview and starting point, please check out the official [Core Blockchain Portal](https://coreblockchain.cc).

## Table of Contents

- [Background](#background)
- [Build and Install](#build-and-install)
- [Example](#example)
- [Documentation](#documentation)
- [Development](#development)
- [Maintainers](#maintainers)
- [License](#license)
- [Security](#security)

## Background

Ylem is a statically-typed curly-braces programming language designed for developing smart contracts
that run on the Core-Coin Virtual Machine. Smart contracts are programs that are executed inside a peer-to-peer
network where nobody has special authority over the execution, and thus they allow to implement tokens of value,
ownership, voting, and other kinds of logic.

When deploying contracts, you should use the latest released version of
Ylem. This is because breaking changes, as well as new features and bug fixes are
introduced regularly.

## Build and Install

Instructions about how to build and install the Ylem compiler can be
found in the Ylem documentation.


## Example

A "Hello World" program in Ylem is of even less use than in other languages, but still:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract HelloWorld {
    function helloWorld() external pure returns (string memory) {
        return "Hello, World!";
    }
}
```

To get started with Ylem, you can use [Remix](https://remix.ethereum.org/), which is a
browser-based IDE. Here are some example contracts:

1. [Voting](https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting)
2. [Blind Auction](https://docs.soliditylang.org/en/latest/solidity-by-example.html#blind-auction)
3. [Safe remote purchase](https://docs.soliditylang.org/en/latest/solidity-by-example.html#safe-remote-purchase)
4. [Micropayment Channel](https://docs.soliditylang.org/en/latest/solidity-by-example.html#micropayment-channel)

## Documentation

The Ylem documentation is hosted at [Read the docs](https://docs.soliditylang.org).

## Development

Ylem is still under development. Contributions are always welcome!
Please follow the
[Developers Guide](https://docs.soliditylang.org/en/latest/contributing.html)
if you want to help.

You can find our current feature and bug priorities for forthcoming
releases [in the projects section](https://github.com/core-coin/ylem/projects).

## Maintainers
* [@axic](https://github.com/axic)
* [@chriseth](https://github.com/chriseth)

## License
Solidity is licensed under [GNU General Public License v3.0](LICENSE.txt).

Some third-party code has its [own licensing terms](cmake/templates/license.h.in).

## Security

The security policy may be [found here](SECURITY.md).
