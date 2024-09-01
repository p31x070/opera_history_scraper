import sqlite3
import pandas as pd
import yaml
import os

# Carregar as configurações a partir do YAML
with open('config/config.yaml', 'r') as file:
    config = yaml.safe_load(file)

# Caminho para o banco de dados
db_path = config['database']['path']

# Conexão com o banco de dados SQLite
conn = sqlite3.connect(db_path)
cursor = conn.cursor()

# Consulta SQL para extrair URLs e outras informações
query = """
SELECT 
    urls.url, 
    urls.title, 
    urls.visit_count, 
    datetime(urls.last_visit_time/1000000-11644473600, 'unixepoch') as last_visit 
FROM 
    urls
"""

# Executar a consulta e armazenar o resultado em um DataFrame do pandas
df = pd.read_sql_query(query, conn)

# Fechar a conexão com o banco de dados
conn.close()

# Aplicar filtros definidos no YAML
filtered_df = pd.DataFrame()
for scope in config['search_scope']:
    filtered_df = pd.concat([filtered_df, df[df['url'].str.contains(scope['pattern'])]])

# Eliminar duplicatas, se houver
filtered_df = filtered_df.drop_duplicates()

# Verificar e criar o diretório de saída, se necessário
output_dir = config['output']['directory']
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Salvar o DataFrame filtrado no formato especificado
output_path = os.path.join(output_dir, f"filtered_data.{config['output']['format']}")
filtered_df.to_csv(output_path, index=False)

print(f"Data saved to {output_path}")