## WebChat LiveHelperChat rodando em Docker

### Fazer o Build da Imagem


```shellscript

docker image build -t webchat:2.0

```

### Subir o container

```shellscript

docker run -it -d -p 8080:80 --name webchat webchat:2.0


```

### Executar script das permissões.

```shellscript

docker exec webchat chmod +x permissao.sh && docker exec webchat ./permissao.sh


```

### Agora basta abrir na porta IP:8080/lhc_web/ e configurar o banco de dados.