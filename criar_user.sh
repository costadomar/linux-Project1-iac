#!/bin/bash

echo "Criando usuários do sistema..."

useradd gest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd gest10 -e

useradd gest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd gest11 -e

useradd gest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd gest12 -e

echo "Finalizando!!"


