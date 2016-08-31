FROM mhart/alpine-node
COPY run .
RUN chmod +x run
COPY package.json .
RUN npm install
COPY compile /compile
CMD ./run
