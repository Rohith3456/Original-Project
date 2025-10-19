const request = require('supertest');
const app = require('../src/index');

describe('GET /', () => {
  it('returns 200 and greeting', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.body.msg).toMatch(/Hello from my-app/);
  });
});

