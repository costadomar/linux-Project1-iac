#!/bin/bash

echo "Crindo os diretórios......"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos......"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários"

useradd carlos -c "Usuário convidado"  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Colocando o Dono dos diretório"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Add as permissões de usuário"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finaliza]ndo o Script....."
