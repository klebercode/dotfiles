python_prompt() {
    [[ -f Pipfile || -f .python-version || -f requirements.txt || -f pyproject.toml ]] || return

    local version=''
    local python_icon='\uf81f'

    if dotfiles::exists python; then
        version=${$(pyenv version-name 2>/dev/null)//:/ }
    fi

    [[ -n version ]] || return

    dotfiles::print '029' "$python_icon $version"
}
