# Help comandos


## Extrair arquivos

#### Extrair .zip

    $ unzip file.zip -d [diretorio destino]

#### Extrair .taz.gz

    $ taz -zxvf [file].tar.gz

#### Compactar .zip

    $zip -r [arquivo].zip <dir/arq>

#### Comapctar .tar.gz

    $tar -czvf [novo arquivo].tar.gz <arq1 dir1 arq2 dir2 ...>

#### Compactar .tar

    $tar -cvf [novo arquivo].tar <arq1 dir1 arq2 dir2 ...>

#### Compactar .gz

    $gzip [arquivo].tar

#### Listar processo ativos filtrando pelo nome

    $ ps aux | grepe [filtro]


#### Formatar PenDrive


1. Localizar onde o pendriver esta montado.

        $ sudo mount

2. Desmontar pendrive

        $ sudo umount /dev/<unidade> #ex.: sudo umount  /dev/sdb1

3. Formatar pendrive com fat32.

            $ mkfs.ntfs /dev/<unidade>

3.1 NTFS

    $ ntfslabel /dev/sdb1 <novo nome pendrive> 

#### Renomear PenDrive

1. Instalar dosfstools se não existir.
    
    $ sudo yum install dosfstools

2. Renomear

    $ sudo dosfslabel /dev/sdb1 <novo nome>

#### Montar iso

    $ mkdir -p /mnt/disk
    $ mount -o loop <arquivo>.iso /mnt/disk
 

#### Listar pacotes instalados -RPM

    $ rpm -qa | grep <nome-pacote>
    
#### Listar pacotes instalados - DEB

    $ dpkg -l | grep <nome-pacote>

#### Renomear arquisp

    $ rename (option) 's/oldname/newname'  pattern

#Iptables

iptables -A INPUT -p <prototcol> --dport <portnumber> -j ACCEPT


TMUX
=

ctrl-b c   Create a new window
ctrl-b n   Change to next window
ctrl-b p   Change to previous window
ctrl-b "   Split pane horizontally
ctrl-b %   Split pane vertically
ctrl-b ,   Rename current window
ctrl-b o   Move to next pane

Criptografia
=

Encriptando dados
$ gpg -e arquivo.txt

Encriptando dados com saída ASCII 7 bits
$ gpg -e -a arquivo.txt

Encriptando dados com outra chave publica
$ gpg -r [nome/e-mail/ID] -e arquivo.txt

Decriptando dados com o gpg
$ gpg -d arquivo.txt.asc > arquivo.txt
$ gpg -d arquivo.txt.gpg > arquivo.txt

Assinando arquivos
$ gpg -s arquivo.txt

Assinando plan texts
$ gpg -s --clearsign arquivo.txt

Checando assinaturas
$ gpg --verify arquivo.txt.asc
$ gpg --verify arquivo.txt.gpg

Extraindo sua chave pública do chaveiro
$ gpg --export -a usuario >chave-pub.txt

Adicionando chaves públicas ao seu chaveiro pessoa
$ gpg --import chave-pub-usuario.txt

Listando chaves de seu chaveiro
$ gpg --list-keys

Apagando chaves de seu chaveiro
$ gpg --delete-key usuario

Mudando sua Frase Senha
$ gpg --edit-key
