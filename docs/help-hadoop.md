Hadoop Help

Processo de instalação no linux
===

Existe três modos de configuração do hadoop: standalone (local), peseudo-destribuido e totalmente destribuido 


Modo Local
# é o default, sem configuração a fazer

Processo do hadoop:
$ cd $HADOOP_HOME
Iniciando: $ ./bin/start-all.sh
Parando:   $ ./bin/stop-all.sh

Peseudo-destribuido

Teste se ssh esta funcionando com:
$ ssh localhost

Se não tiver comunicação tente gerar as chaves novamente, como abaixo:

Configurar SSH para acesso localhost:
$ ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
$ cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys

Caso o problema persista verific se o servidor de ssh está no ar:
$ sudo service sshd status
$ sudo service sshd start # iniciar sevirço se necessario




Modo Totalmente destribuido


HDFS comnados
===

listar arquivos
$ hadoop fs -ls [path-remote]
$ hadoop fs -lsr [path-remote] #ler recursivamente
 
Put arquivos
$hadoop fs -put [path-local] [path-remote]

Obter arquivos  
$hadoop fs -get [path-remote] [path-local]

Exibir conteudo do arquivo
$hadoop fs -cat [path-remote]
$hadoop fs -tails [path-remote]

Deletar arquivos
$hadoop fs -rm [path-remote]

Help de comandos
$hdoop fs -help [comando]

Listar blocks
$hadoop fsck / -files -blocks