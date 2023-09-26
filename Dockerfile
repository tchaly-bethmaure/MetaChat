FROM node:20

WORKDIR .

RUN git config --global user.email "tchaly.bethmaure@gmail.com"

RUN git config --global user.name "tbethmaure"

RUN npm install -g @angular/cli

RUN ng new chatmeta --minimal --style=css

WORKDIR chatmeta/

RUN npm run build

EXPOSE 4200

RUN ng serve --host localhost
