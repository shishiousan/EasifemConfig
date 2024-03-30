function edoc -d "open a easifem doc file in nvim"
    set -l myloc (pwd)
    cd $docs
    cd $docs/(fd --type d | fzf)
    nvim (fd -I --type f -e md -e F90 -e f90  | fzf )
    cd $myloc
end
