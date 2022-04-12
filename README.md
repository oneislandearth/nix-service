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

## Installation

Fistly ensure [Nix](https://nixos.org) is installed using 

```sh
$ sh <(curl -L https://nixos.org/nix/install)
```

After Nix is installed you can simply install to your repository

```sh
$ sh <(curl -L https://raw.githubusercontent.com/oneislandearth/nix-service/main/bash/install)
```

Once installed to your working directory, run the following to open the shell

```sh
$ nix-shell
```

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2022-present, OneIsland Limited