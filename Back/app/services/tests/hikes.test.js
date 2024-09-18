import request from 'supertest';
import { startServer, stopServer } from '../server-to-test.js';

let server;

beforeAll(async () => {
  server = await startServer();
});

afterAll(async () => {
  await stopServer();
});

describe('Hikes API', () => {
  it('should fetch all hikes', async () => {
    const res = await request(server).get('/hikes');
    expect(res.status).toEqual(200);
    expect(Array.isArray(res.body)).toBe(true);
    expect(res.body.length).toBeGreaterThan(0);
  });

  it('should fetch a single hike by ID', async () => {
    const hikeId = 1;
    const res = await request(server).get(`/hikes/${hikeId}`);
    expect(res.status).toEqual(200);
    expect(res.body).toHaveProperty('id', hikeId);
  });


});
