# [Backstage](https://backstage.io)


### HOST BUILD

The required steps in the host build are to install dependencies with yarn install, generate type definitions using yarn tsc, and build the backend package with yarn build:backend.:

```sh
yarn install --frozen-lockfile

# tsc outputs type definitions to dist-types/ in the repo root, which are then consumed by the build
yarn tsc

# Build the backend, which bundles it all up into the packages/backend/dist folder.
# The configuration files here should match the one you use inside the Dockerfile below.
yarn build:backend --config ../../app-config.yaml
```
<br>

create a new .env file
```sh
cp .env.example .env
```
start/build app
```sh
docker compose up --build -d
```
bring down
```sh
docker compose down
```


