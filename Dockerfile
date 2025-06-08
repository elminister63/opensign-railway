# Etapa de compilación si necesitas alguna. Aquí solo usamos Caddy base.
FROM caddy:2

# Copiamos el proxy inverso
COPY Caddyfile /etc/caddy/Caddyfile

# Copia el resto del proyecto (asumiendo que está en /src)
COPY . /srv

EXPOSE 80

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
