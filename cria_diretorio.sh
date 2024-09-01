#!/bin/bash

# Criar diretórios
mkdir -p opera-history-scraper/config
mkdir -p opera-history-scraper/data/output
mkdir -p opera-history-scraper/scripts
mkdir -p opera-history-scraper/.vscode

# Criar arquivos
touch opera-history-scraper/config/config.yaml
touch opera-history-scraper/data/history.db
touch opera-history-scraper/scripts/extract_data.py
touch opera-history-scraper/.gitignore
touch opera-history-scraper/README.md
touch opera-history-scraper/requirements.txt
touch opera-history-scraper/.vscode/settings.json

echo "Estrutura de diretórios e arquivos criada com sucesso."

