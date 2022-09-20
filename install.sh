#rename .env
cp .env.example .env

#clone project lumen api - backend
git clone https://github.com/RicardoSantosSantana/meli-api-lumen.git

    #run composer to install dependencies  
    cd meli-api-lumen 
    composer install 
    cp .env.example .env

#clone golang project - backend
cd ..
git clone -b menu https://github.com/RicardoSantosSantana/meli-golang-background-process.git

#clone frontend project
git clone https://github.com/RicardoSantosSantana/meli-frontend-react-nextjs.git
cd meli-frontend-react-nextjs
cp .env.example .env
npm install 

