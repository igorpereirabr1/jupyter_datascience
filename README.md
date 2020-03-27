
# JUPYTER DATA SCIENCE

Ambiente para estudo com Julia, Python e R em docker.

![Ecossistema](jupyter.jpg)

## SOFTWARES NECESSÁRIOS
#### Para a criação e uso do ambiente vamos utilizar git e docker
   * Instalação do Docker no [Windows ou Mac](https://docs.docker.com/toolbox/overview/) ou no [Linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
   *  [Instalação do git](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)

## SETUP
*OBS: Esse passo deve ser realizado apena uma vez. Após o ambiente criado, utilizar o docker-compose para iniciar os containers como mostrado no tópico INICIANDO O AMBIENTE*

#### Criação do diretório docker
   *  No Windows:
      *  Criar na raiz do seu drive o diretório docker
         ex: C:\docker
          
#### Baixar o repo dentro diretório docker
          git clone https://github.com/fabiogjardim/bigdata_docker.git

### No diretório bigdata_docker vai existir os seguintes objetos
![ls](ls.JPG)

   *  No Windows:

      *renomear o arquivo docker-compose_windows.yml para docker-compose.yml*

            mv docker-compose_windows.yml docker-compose.yml
      *Executar o arquivo virtualbox_config.bat*
         <br><i>O arquivo bat cria/reacria a VM default com disco de até 100GB, 8GB de memória, drive do repo compartilhado como /d e todas as portas necessárias mapeadas</i></br>
         <br><i>OBS: se o ser driver raiz for diferente de D:, altere o arquivo virutalbox_config.bat na parte indicada no comentário</i></br>  
   *  No Linux: *Não é necessário alterar nem executar nada*

## INICIANDO O AMBIENTE
   
  *No Windows abrir o Docker Quickstart Terminal, do Linux um terminal*

### Em um terminal, no diretorio bigdata_docker, executar o docker-compose
          docker-compose up -d        

### Verificar imagens e containers
 
         docker image ls

![docker image ls](docker_image_ls.JPG)

         docker container ls

![docker container](docker_container_ls.JPG)

## SOLUCIONANDO PROBLEMAS 
   
  *No Windows abrir o Docker Quickstart Terminal*

### Parar um containers
         docker stop [nome do container]      

### Parar todos containers
         docker stop $(docker ps -a -q)
  
### Remover um container
         docker rm [nome do container]

### Remover todos containers
         docker rm $(docker ps -a -q)         

### Dados do containers
         docker container inspect [nome do container]

### Iniciar um container
         docker-compose up -d [nome do container]

### Iniciar todos os containers
         docker-compose up -d 

### Acessar log do container
         docker container logs [nome do container] 



## Imagens   

[Docker Hub fjardim](https://hub.docker.com/u/fjardim)

[Docker Hub Original](https://hub.docker.com/r/jupyter/datascience-notebook)


## Documentação Oficial

* https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html
* https://docs.python.org/3/
* https://www.r-project.org/other-docs.html
* https://docs.julialang.org/en/v1/
