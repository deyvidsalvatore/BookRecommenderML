# Define a imagem base que será usada
FROM python:3.11.2

# Copia todos os arquivos do diretório atual para o diretório /app no container
COPY . /app

# Define o diretório de trabalho como /app
WORKDIR /app

# Instala as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 8501 para que a aplicação seja acessível externamente
EXPOSE 8501

# Inicializa o servidor do Streamlit para executar a aplicação
CMD ["streamlit", "run", "app.py", "--server.port=8501"]
