# Check-content
Utilitario para aferir conteudo de variavel. Serve para troubleshooting.


${{ vars.MINHAVAR }} # calor foobar
```sh
jobs:
  test:
    runs-on: ubuntu-latest

    permissions:
      packages: read

    steps:
      - name: Login Registry
        uses: docker/login-action@v3
        with:
          registry: ghcr.io
          username: ${{ github.actor }}
          password: ${{ secrets.DOCKER_TOKEN }}

      - name: Run container
        run: docker run docker.io/library/alpine@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8 ${{ vars.MINHAVAR }}
```
procure nos logs: aec070645fe53ee3b3763059376134f058cc337247c978add178b6ccdfb0019f, é o shua256sum de foobar.