const env = process.env;

const config = {
  db: { /* db used in this project was retrived from localhost using xxamp rea the redme file for  important setup tips */
    host: env.DB_HOST || 'Host-Name',
    user: env.DB_USER || 'User-Name',
    password: env.DB_PASSWORD || 'Password',
    database: env.DB_NAME || 'DB-Name',
  },
  listPerPage: env.LIST_PER_PAGE || 10,
};


module.exports = config;
