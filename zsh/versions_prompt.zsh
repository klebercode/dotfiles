versions_prompt() {
    local version=''
    local icon=''

    if [[ -f package.json || -d node_modules ]]; then
        if dotfiles::exists node; then
            icon='\ue718'
            version=$(node -v 2>/dev/null)
        fi
    fi

    # -n "$PYENV_VERSION" || 
    if [[ -f Pipfile || -f .python-version || -f requirements.txt ]]; then
        if dotfiles::exists python; then
            icon='\uf81f'
            version=${$(pyenv version-name 2>/dev/null)//:/ }
        fi
    fi

    [[ -n version ]] || return

    dotfiles::print '029' "$icon $version"
}
