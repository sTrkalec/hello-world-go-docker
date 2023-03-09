# Hello World em Go usando Docker

Este é um projeto simples que demonstra como criar um programa "Hello World" em Go usando o Docker.

## Pré-requisitos

Antes de começar, certifique-se de ter o Docker instalado na sua máquina. Você pode baixar o Docker em [https://www.docker.com/get-started](https://www.docker.com/get-started).

## Como usar

Caso queira utilizar a minha imagem já existente:
```javascript
    docker run strkalec-challenge-docker-1
```

Para executar o projeto e criar sua imagem do zero, siga as instruções abaixo:

1. Clone este repositório em sua máquina local: git clone https://github.com/strkalec/hello-world-go-docker.git


2. Navegue até o diretório do projeto: 

```javascript
    cd meu-projeto
```

3. Construa a imagem Docker:

```javascript
    docker build -t hello-world-go .
```

4. Execute o contêiner Docker:
```javascript
    docker run hello-world-go
```


Ao executar o contêiner Docker, você deverá ver a mensagem "Hello, world!" impressa no console.

## Como funciona

Este projeto consiste em um arquivo Go simples, `main.go`, que imprime a mensagem "Hello, world!" no console. Além disso, ele inclui um arquivo Dockerfile que especifica como construir a imagem Docker para executar o programa Go.

O Dockerfile começa com uma imagem base do Go que será usada para compilar e executar o programa Go. Ele, então, copia o código-fonte do projeto para a imagem Docker e executa o comando `go build` para compilar o código-fonte em um arquivo executável.

Finalmente, o Dockerfile especifica um comando `CMD` para executar o arquivo executável criado pela compilação do programa Go.

