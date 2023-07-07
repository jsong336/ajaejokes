echo -n $(cat pyproject.toml| grep -oP 'version = "\K.*?(?=")')
