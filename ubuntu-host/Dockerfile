FROM ubuntu:22.04

# Zainstaluj OpenSSH server i sudo
RUN apt-get update && apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

# Utwórz użytkownika devops z hasłem "devops" (zmień na swoje!)
RUN useradd -m -s /bin/bash devops && echo "devops:devops" | chpasswd && \
    usermod -aG sudo devops

# Zezwól na logowanie SSH przez hasło
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Usuń zbędne usługi lub pliki (opcjonalnie, obraz jest minimalny)
# Expose port SSH
EXPOSE 22

# Uruchom SSHD w trybie pierwszoplanowym
CMD ["/usr/sbin/sshd", "-D"]
