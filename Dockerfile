FROM quay.io/keycloak/keycloak:26.2.5

EXPOSE 8080
# Entrypoint
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
