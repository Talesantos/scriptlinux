#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd eduarda -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_ADM
useradd veronica -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_ADM
useradd hilda -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_ADM

useradd pantera -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_VEN
useradd maya -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_VEN
useradd mel -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_VEN

useradd rogerio -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl paswd -crypt Senha123) -G GRP_sEC

echo "Especificando permissões aos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim...."

