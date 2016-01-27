# zsh-travis

ZSH plugin to open Travis CI page for the current repo (if it exists).

## Usage

```sh
$ git-trav
```

### As a git alias

```sh
$ git config --global alias.trav '!zsh -ic git-trav'
```

## Installation

#### Using antibody:

```sh
$ antibody bundle denolfe/zsh-travis
```

#### Using antigen:

```sh
$ antigen bundle denolfe/zsh-travis
```

#### Using zgen:

```sh
$ zgen load denolfe/zsh-travis
```

## To Do

- Open other specific Travis pages
- Open last or current build

## Contributing

1. Fork it!
2. Create your feature branch: \`git checkout -b my-new-feature\`
3. Commit your changes: \`git commit -am 'Add some feature'\`
4. Push to the branch: \`git push origin my-new-feature\`
5. Submit a pull request :D
