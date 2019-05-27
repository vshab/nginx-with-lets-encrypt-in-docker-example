# nginx with Let's Encrypt in Docker container configuration example

A complete example to the [article](https://medium.com/@vshab/nginx-with-lets-encrypt-in-docker-container-e549d18c00d7)

## Content

- `nginx/Dockerfile` - image of `nginx` with installed `Certbot`
- `nginx/entrypoint.sh` - image's entrypoint
- `nginx/nginx.conf` - `nginx` configuration
- `nginx/renew` - certificates renew script
- `docker-compose.yml` - compose configuration with letsencrypt volume

## How to run

1. Replace `example.com` with your domain in `entrypoint.sh` and `nginx.conf`
2. Replace `example@gmail.com` with your email in `entrypoint.sh`
3. `docker-compose build`
4. `docker-compose up -d`

## License

This code is MIT License.
