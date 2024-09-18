import app from '../../server.js';

let server;

export const startServer = () => {
  const port = 4001;
  return new Promise((resolve, reject) => {
    server = app.listen(port, (err) => {
      if (err) return reject(err);
      console.log(`Test server running on http://localhost:${port}`);
      resolve(server);
    });
  });
};

export const stopServer = () => {
  return new Promise((resolve, reject) => {
    if (server) {
      server.close((err) => {
        if (err) return reject(err);
        console.log('Test server stopped');
        resolve();
      });
    } else {
      resolve();
    }
  });
};
