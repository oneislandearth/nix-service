# nix-service

A Nix environment for development

***

## Overview

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Features

JavaScript environment management with [Nix](https://nixos.org) including webservices with [spstic](https://github.com/danzlarkin/spstic)

## Usage

If not already installed, please install [Nix](https://nixos.org) by running the following

```sh
$ sh <(curl -s -L https://nixos.org/nix/install)
```

After Nix is installed you can simply install to your repository

```sh
$ sh <(curl -s -L https://raw.githubusercontent.com/oneislandearth/nix-service/main/bash/install)
```

Once installed to your working directory, run the following to open the shell

```sh
$ nix-shell
```

You will be presented with a selection of options to be ran from the shell

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2022-present, OneIsland Limited