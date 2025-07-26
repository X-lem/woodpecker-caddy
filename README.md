# woodpecker-caddy
A caddie reverse proxy for [Woodpecker CI](https://github.com/woodpecker-ci/woodpecker).


### Testing locally

**Build**

```docker build . -t woodpecker-caddy```


**Run**
```
docker run -e SERVER_DOMAIN=some_domain \
           -e AGENT_DOMAIN=some_domain \
          woodpecker-caddy
```