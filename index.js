import { Elysia } from 'elysia'
import { staticPlugin } from '@elysiajs/static'

const port = process.env.PORT ?? 8068;

const app = new Elysia()
  .use(staticPlugin({
    assets: 'public',
    prefix: '/',
  }))
  .listen(port)

console.log(`Serving on port ${port}`)
