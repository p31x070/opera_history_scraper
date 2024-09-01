Sim, é possível simplificar esse código usando um loop `for` para iterar sobre uma lista de diretórios e arquivos. Isso tornará o script mais conciso e fácil de manter. Veja como ficaria:

```bash
#!/bin/bash

# Listas de diretórios e arquivos
dirs=(
  "opera-history-scraper/config"
  "opera-history-scraper/data/output"
  "opera-history-scraper/scripts"
  "opera-history-scraper/.vscode"
)

files=(
  "opera-history-scraper/config/config.yaml"
  "opera-history-scraper/data/history.db"
  "opera-history-scraper/scripts/extract_data.py"
  "opera-history-scraper/.gitignore"
  "opera-history-scraper/README.md"
  "opera-history-scraper/requirements.txt"
  "opera-history-scraper/.vscode/settings.json"
)

# Criar diretórios
for dir in "${dirs[@]}"; do
  mkdir -p "$dir"
done

# Criar arquivos
for file in "${files[@]}"; do
  touch "$file"
done

echo "Estrutura de diretórios e arquivos criada com sucesso."
```

### Explicação:
- **Arrays**: As listas `dirs` e `files` contêm os diretórios e arquivos que você deseja criar.
- **Loop `for`**:
  - O primeiro `for` itera sobre a lista de diretórios (`dirs`) e cria cada um usando `mkdir -p`.
  - O segundo `for` itera sobre a lista de arquivos (`files`) e cria cada um usando `touch`.
- **"${dirs[@]}" e "${files[@]}"**: Estas sintaxes são usadas para expandir a lista de diretórios e arquivos.

Com esse script, você pode adicionar ou remover diretórios e arquivos das listas `dirs` e `files` de forma simples, sem precisar repetir comandos.