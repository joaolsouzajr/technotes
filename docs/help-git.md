# Help git

https://help.github.com/articles/set-up-github

Configurações globais de nome e email respectivamente:

	git config --global user.name "seu nome"
	git config --global user.email "seu email"


## Gerando chaves SSH

#### Step 1 - Verificando Chaves
	
	cd ~/.ssh 

#### Step 2 - Fazendo backup e deletando chaves antigas
	
	ls
  	mkdir key_backup
  	cp id_rsa* key_backup
  	rm id_rsa*
  
#### Step 3 - Gerando novas chaves
  	$ ssh-keygen -t rsa -C "your_email@youremail.com"
  
  	#Your identification has been saved in /home/you/.ssh/id_rsa.
  	#Your public key has been saved in /home/you/.ssh/id_rsa.pub.

#### Step 4 - Configurando chaves ssh no github copiar todo o conteudo de id_rsa.pub no github
	
1. Va para Account Settings
2. Clique em SSHKeys
3. Clique "Add SSH key"
4. Cole a chave de  id_rsa.pub no campo "Key"
5. Clique "Add key"

#### Step 5 - Testando autenticação
	
	ssh -T git@github.com

#### Step 6 -  Criando Breanch
	
	git branch <nome_branch> #criando breanch
	git checkout <nome_branch> #muda para a branch
	# lembrar que a branch do git nao é como no SVN
	

#### Inicialiazando um repository local com git.

	cd /path/to/my/repo
	git remote add origin https://joaosouza@bitbucket.org/ibsoft/ibsoft-suporte.git
	git push -u origin master   # to push changes for the first time

  

#### Explicações sobre GIT
 
#### Inicializando e reinicializando repositorio:

 	git init
 
#### Colonando um repositorio existente:

 	git clone [url] //pode se usar os protocolos ssh, https e git

#### Adicionado repositorio remoto:

 	git remote add [nome] [url]

#### Criando branch:

Apenas cria
  	
	git branch [nome]

Cria e muda

 	git checkout -b [nome]

#### Mudando para uma branch:

	git checkout [nome da branch]

#### Recuperando a partir da branch remota
  
	git checkout -b [mybranch] [remote]/[mybranch]

#### Deletar branch

Local
  	git branch -d [nome da branch]
  	git push [remote] :[nome da branch] #deletar remotamente

Remote
	git push [remote_name] --delete [branch_name]

### Visualizar todas as branchs

	git branch -v -a

#### Pegando as alterações antes do merge

	git rebase [branch base]

#### Empurrando alterações no repositorio remoto

	git push [remote] [branch]

#### Obetendo alterações do repositorio remoto na branch corrente

	git pull [remote]


#### Criando Tags: O Git permite criar dois tipos de tag (lightweight e  annotated)

lightweight, é semelhante  um branch já o tipo annotated, cria um copia de tudo.

**Annotaqted**

	git tag -a [nome da tag] -m "comentarios da tag"

**Lightweight:**

	git tag [nome da tag] -lw

**Removendo tag:**

	git tag -d [nome da tag] 

**Push nova tag:**
i	
	git push origin [nome da tag]

#### Merge:

	$ git merge [branch]

#### Resolvendo conflito manual:

	$ git mergetool

#### Recuperando alteracoes do ramo descendente

	$ rebase [nome do ramo descenentes] #exemplo.: rebase master

#### Restaurando remote repo

	$ git fatch origin
	$ git reset --hard origin/master

#### Obtem ultimo commit

	git log -n 1 --pretty=format:"%H"  #To get only hash value of commit

#### Show history 
	
	git log --follow <name fiele>

#### Reverte from commit

	git checkout <commit> <file>
	

#### Reset credential

	git config --system --unset credential.helper
