# nodejs-mysql-api-sample
<img width="1261" alt="Screen Shot 2021-07-28 at 13 53 57" src="https://user-images.githubusercontent.com/66588352/141428835-833078e3-1047-4770-b7c8-212a5a82a490.png">
a sample rest api made with node js, express js and mysql

simple the project represent asimple api with a simple GET method reteriving info about programming languages from a local database

this project was built for learning pruposes and the base of it this tutorial
<a href='https://blog.logrocket.com/node-js-express-js-mysql-rest-api-example/'> logrocket Blog </a>
use it as a Refrence in case of any mistakes i made in my own project

you will find a sql file to setup your database easily in the main folder of the repositry
and other version in json format

The project uses ``Docker`` to init the database server but you can use any online database in the web
change the db config if you wish with your db setup info in the ``config.js``

```
    host: env.DB_HOST || 'Host-Name',
    user: env.DB_USER || 'User-Name', 
    password: env.DB_PASSWORD || 'Password',
    database: env.DB_NAME || 'DB-Name',
```

or you simple can try it online and see the results from <a href='pl-test-api.herokuapp.com' > here </a>

If you wish to try it by your self you can install docker from <a href='https://www.docker.com/products/docker-desktop'> here </a>

and run this command from the ``terminal`` 
```
$  docker compose
```
make sure you are in your project directory to call the ``docker-compose.yml`` which is simply creating your mysqldb and init PHPmyAdmin to manage it

go to ``localhost:8080`` and enter in the username ``root`` and the password ``my-secret-pw``

create new database call it for example ``nodedb`` and import the Sql file in the project to create your db table, that will create the db for you

after creating the mysqldb it's time to init your node Server 

update the ``config.js`` with your db info

```
    host: env.DB_HOST || 'localhost',
    user: env.DB_USER || 'root', 
    password: env.DB_PASSWORD || 'my-secret-pw',
    database: env.DB_NAME || 'nodedb',
```

enter the command below

```
$ npm install
```
to install node packages in your project, that might take few seconds

and then enter the next command to init the server

```
$ npm start
```
and you have your backend server running & you should see the results in console like that

`
server is listening on port 3000...
`

Reach the ``` localhost:3000/programming-languages ``` link and see the json results
and you should see the results as it appears in the cover image

in case of any unexpacted errors or any mistakes i did -> start an issue in the repo and i will help you and try to solve your error 
or simply dm me on my <a href='https://twitter.com/BebarsMahmoud' > twitter </a> & i will help you
