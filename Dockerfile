# Use uma imagem base do Node.js com suporte para o Angular
FROM node:16

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo package.json e o arquivo package-lock.json (se existir)
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código-fonte da aplicação
COPY . .

# Construa a aplicação Angular
RUN npm run build

# Expõe a porta em que a aplicação Angular será executada (geralmente a porta 80)
EXPOSE 80

# Inicie a aplicação Angular quando o contêiner for iniciado
CMD ["npm", "start"]
