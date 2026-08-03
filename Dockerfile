# Imagem base
FROM nginx:alpine

# Informações da imagem
LABEL maintainer="Marcelo Rocha"
LABEL project="Laboratorio DevOps"

# Remove a página padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia nossa aplicação
COPY website/ /usr/share/nginx/html/

# Porta utilizada
EXPOSE 80

# Inicia o nginx
CMD ["nginx", "-g", "daemon off;"]