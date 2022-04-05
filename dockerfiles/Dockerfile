# seleciona qual imagem a nossa imagem personalizada do serviço usará como base
FROM node:14

# seta o diretório de trabalho do container atualmente para esta
WORKDIR /app-node

# seta a porta que será exposta para o projeto no dockerfile
EXPOSE 3000

# copia os arquivos do diretório local atual para o diretório de trabalho setado anteriormente
COPY . .

# roda o comando padrão de instalação de dependências do node.
RUN npm install

# define como ponto de entrada, ou comando a ser executado ao inicializar o container como este.
ENTRYPOINT npm start