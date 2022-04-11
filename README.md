# nix-template

Nix template for OneIsland projects

***

## Overview

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Features

Supports a Deno microservice which will deployed using the assets from './public/'.

Also includes esbuild which will compile './src/main.js' to './public/main.bundle.js' for deployment.

## Installation

Fistly ensure [Nix](https://nixos.org) is installed using 

```sh
$ sh <(curl -L https://nixos.org/nix/install)
```

After Nix is installed you can simply clone this repository

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2022-present, OneIsland Limited