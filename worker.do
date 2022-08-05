export default {
  fetch: (req, env) => fetch(`https://api.cloudflare.com/client/v4/accounts/${new URL(req.url).pathname}/workers/durable_objects/namespaces`, { headers: { authorization: 'Bearer ' + env.CF_API_TOKEN }})
}
