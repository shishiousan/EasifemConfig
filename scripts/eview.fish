function eview -d "view easifem doc"
    set -l myloc (pwd)
    cd $docs
    cd $docs/(fd --type d | fzf)

    if command -q glow
        glow -p (fd -I --type f -e md -e F90 -e f90  | fzf )
    else if command -q bat
        bat (fd -I --type f -e md -e F90 -e f90  | fzf )
    else
        cat (fd -I --type f -e md -e F90 -e f90  | fzf )
    end


    cd $myloc
end
