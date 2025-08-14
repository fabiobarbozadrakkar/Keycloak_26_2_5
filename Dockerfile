FROM quay.io/keycloak/keycloak:26.2.5

# Modo Quarkus (recomendado nas versões mais novas)
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://${KC_DB_HOST}:${KC_DB_PORT}/${KC_DB_DATABASE}
ENV KC_DB_USERNAME=${KC_DB_USERNAME}
ENV KC_DB_PASSWORD=${KC_DB_PASSWORD}
ENV KC_HOSTNAME=0.0.0.0
ENV KC_HTTP_ENABLED=true

# Entrypoint
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
