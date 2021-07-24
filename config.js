const env = process.env;

const config = {
  db: { /* don't expose password or any sensitive info, done only for demo */
    host: env.DB_HOST || 'Host-Name',
    user: env.DB_USER || 'User-Name',
    password: env.DB_PASSWORD || 'Password',
    database: env.DB_NAME || 'DB-Name',
  },
  listPerPage: env.LIST_PER_PAGE || 10,
};


module.exports = config;