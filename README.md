# dirssh

per-project ssh config manager

## Description

This is per-project ssh config manager.
This is very simple and made from pure shell scripts.

## Support only ZSH currently

This tool uses the `add-zsh-hook` function, so it supports only zsh currently.

## Requirements

This tool is made from pure shell scripts and depends on the shell only.

## Install

### With no plugin manager

```
$ git clone https://github.com/suzuki-shunsuke/dirssh ~/.dirssh
$ vim ~/.zshrc
```

```sh
# .zshrc
source ~/.dirssh/dirssh.zsh
```

## Usage

1. Create the per-project ssh configuration file `dirsshcfg` in the project's root directory.
2. Run `dirssh` in the project's root or sub directory.

## Environment Variable

* DIRSSH_CFGNAME: ssh configuration file name. default is `dirsshcfg`
* DIRSSH_ALIAS: alias name. default is `dirssh`

Compared to `ssh`, `dirssh` is a little long and you may think that it is troublesome to type it.
In that case you can set `DIRSSH_ALIAS` to `ssh` to ease.

## How it works

dirssh adds the precmd hook function using add-zsh-hook.
This hook function makes an alias `$DIRSSH_ALIAS(dirssh)="ssh -F <dirsshcfg path>"`.

## Contributing

1. Fork (https://github.com/suzuki-shunsuke/dirssh/fork)
2. Create a feature branch
3. Commit your changes
4. Rebase your local changes against the master branch
6. Create a new Pull Request

## License

[MIT](LICENSE)

## Author

[Suzuki Shunsuke](https://github.com/suzuki-shunsuke)
