FROM ubuntu:20.04

# Instalacja wymaganych narzędzi
RUN apt-get update && \
    apt-get install -y curl sudo unzip git docker.io apt-transport-https ca-certificates gnupg lsb-release && \
    rm -rf /var/lib/apt/lists/*

# Dodanie użytkownika (opcjonalnie)
RUN useradd -m azureagent && echo "azureagent ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Instalacja agenta Azure DevOps
WORKDIR /azp
COPY start.sh .

RUN chmod +x start.sh

CMD ["./start.sh"]
