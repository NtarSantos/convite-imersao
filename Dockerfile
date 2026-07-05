FROM nginx:alpine

# Site estático: copia os arquivos da raiz para o diretório servido pelo nginx.
COPY index.html favicon.svg /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
