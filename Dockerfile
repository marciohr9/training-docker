# syntax=docker/dockerfile:1
# seleciona qual imagem a nossa imagem personalizada do serviço usará como base
FROM node:14

# seta o diretório de trabalho do container atualmente para esta
WORKDIR /app-node

#variáveis de ambiente e argumentos
ARG PORT_BUILD=3000
ENV PORT=$PORT_BUILD

# seta a porta que será exposta para o projeto no dockerfile
EXPOSE $PORT_BUILD

# copia os arquivos do diretório local atual para o diretório de trabalho setado anteriormente
COPY . .

# roda o comando padrão de instalação de dependências do node.
RUN npm install

# define como ponto de entrada, ou comando a ser executado ao inicializar o container como este.
ENTRYPOINT npm start