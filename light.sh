#!bin/bash
echo "Atualizando repositórios..."
if [ ! apt-get update ] 
then
echo "Não foi possivel atualizar os repositórios. Verifique o arquivo /etc/apt/sources.list"
exit 1
fi 
print -P "%F{33}▓▒░ %F{220}Atualizando %F{33}pacotes%F{220}"
echo "✅ Atualização feita com sucesso!"
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"

if ! apt-get dist-upgrade -y
then
echo "⛔ Não foi possível atualizar pacotes!"
exit 1
fi 
print -P "%F{33}▓▒░ %F{220}Atualizando %F{33}pacotes%F{220}"
echo "✅ Atualização de pacotes feita com sucesso!"
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"

if ! apt-get install $1
then
echo "Não foi possível instalar o pacote $1!"
exit 1
fi 
echo "Instalação finalizada!"
