# dotfiles
A repo to store all my desktop configurations

## Setup dotfiles
to setup automatically a new evironment with this dotfiles, simply run the following command:

```bash
curl -L https://bit.ly/fabiloco-dotfiles -o setup_dotfiles.sh && source setup_dotfiles.sh 
```

## Generate symbolic links
there's a lil bash script file to generate the symbolic links for each configuration folder and
file, to run it simple type the following at the repo's root:

```bash
chmod +xrw create_symbolic_links.sh
./create_symbolic_links.sh
``` 

