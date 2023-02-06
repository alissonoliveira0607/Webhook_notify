FROM alpine

#expondo a porta para a aplicação
EXPOSE 5000 

#IRÁ EXECUTAR OS COMANDO DURANTE A CRIAÇÃO DA IMAGEM PARA INSTALAR AS DEPENDÊNCIAS
RUN apk add py3-pip


#copia os arquivos do diretório atual para /opt/app
COPY ls /opt/app


#instala as dependências para a aplicação
RUN pip3 install -r /opt/app/requirements.txt

#seta um diretório padrão para a imagem 
WORKDIR /opt/app

#define o comando principal do container
CMD python webhook_v2.py