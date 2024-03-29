# Configuring EASIFEM 

## Config

This repository contains the markdown snippets for writing documentation of easifem. The snippets are `json` files and they should work with the visual studio code and neovim.

### Using snippets in neovim

Clone this repository by using one of the ways given below:

HTTPS:

```bash 
https://github.com/easifem/snippets.git
```

SSH:

```bash
git@github.com:easifem/snippets.git
```

GitHub CLI:

```bash
gh repo clone easifem/snippets
```

Step-2: Move these snippets to `neovim` config folder. 

```bash 
cd snippets
cp easifem-fortran.json ~/.config/nvim/snippets/easifem-fortran.json
cp easifem-markdown.json ~/.config/nvim/snippets/easifem-markdown.json
```

Step-3: Add config files to `package.json`

```bash 
cd ~/.config/nvim/snippets/
```

Open the `package.json` file and add the following.

```bash
{
  "language": ["markdown"],
  "path": "./easifem-markdown.json"
},
{
  "language": ["fortran", "markdown"],
  "path": "./easifem-fortran.json"
},
```

## Fish scripts

You can read about fish scripts installation and usage [here](./scripts/README.md)

