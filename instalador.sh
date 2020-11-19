## Instação do Chrome

echo "📥 Baixando Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Atualizando repositórios..."
if [ ! apt-get update ] 
then
echo "Não foi possivel atualizar os repositórios. Verifique o arquivo /etc/apt/sources.list"
exit 1
fi 
echo "✅ Atualização feita com sucesso!"

if ! apt-get dist-upgrade -y
then
echo "⛔ Não foi possível atualizar pacotes!"
exit 1
fi 
echo "✅ Atualização de pacotes feita com sucesso!"

print -P "%F{33}▓▒░ %F{220}🛠️ Instalando %F{33}Google Chrome%F{220}"
sudo apt install ./google-chrome-stable_current_amd64.deb && \
        print -P "%F{33}▓▒░ %F{34}Instalação feita com sucesso!.%f%b" || \
        print -P "%F{160}▓▒░ ⛔ Falha na instalação! .%f%b"

## Instalação do NodeJs

echo "📥 Baixando NodeJs LTS"
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

echo "Atualizando pacotes"
if [ ! apt-get update ] 
then
echo "⛔ Não foi possivel atualizar os repositórios. Verifique o arquivo /etc/apt/sources.list"
exit 1
fi 
echo "✅ Atualização feita com sucesso!"

if ! apt-get dist-upgrade -y
then
echo "⛔ Não foi possível atualizar pacotes!"
exit 1
fi 
echo "✅ Atualização de pacotes feita com sucesso!"


print -P "%F{33}▓▒░ %F{220} 🛠️ Instalando %F{33}NodeJs%F{220}"
sudo apt-get install -y nodejs && \
        print -P "%F{33}▓▒░ %F{34}Instalação feita com sucesso!.%f%b" || \
        print -P "%F{160}▓▒░ ⛔ Falha na instalação! .%f%b"

echo "Versão do Node" 
node --version
echo "Versão do NPM"
npm --version

## Instalação do Yarn

print -P "%F{33}▓▒░ %F{220} 🛠️ Instalando %F{33}Yarn%F{220}"
npm install -g yarn && \
        print -P "%F{33}▓▒░ %F{34}Instalação feita com sucesso!.%f%b" || \
        print -P "%F{160}▓▒░ ⛔ Falha na instalação! .%f%b"
echo "Versão do Yarn"
yarn --version