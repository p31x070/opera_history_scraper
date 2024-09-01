# Opera History Scraper

Este projeto foi criado para extrair e filtrar dados do histórico de navegação do navegador Opera. Ele permite que você configure o escopo das pesquisas por meio de um arquivo YAML, extraindo URLs de interesse (como repositórios do GitHub) e salvando-os em um formato manipulável, como CSV.

## Estrutura de Diretórios

- `config/`: Contém o arquivo de configuração YAML.
- `data/`: Diretório para o banco de dados e arquivos de saída.
- `scripts/`: Scripts para extração e processamento de dados.
- `.vscode/`: Configurações do VSCode.
- `README.md`: Documentação do projeto.
- `requirements.txt`: Dependências do projeto.

## Configuração

### 1. Clonar o Repositório

```bash
git clone https://github.com/usuario/opera-history-scraper.git
cd opera-history-scraper