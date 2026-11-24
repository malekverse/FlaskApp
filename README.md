# FlaskApp

A minimal Flask "Hello, World!" application, containerized with Docker and tested
by a GitHub Actions CI pipeline.

## Run locally

```bash
pip install -r requirements.txt
python app.py          # http://localhost:5000
pytest -v
```

## Run with Docker

```bash
docker build -t flaskapp .
docker run -p 5000:5000 flaskapp
```

## CI pipeline (`.github/workflows/ci.yml`)

- Triggered on pushes and pull requests to `main`
- `test` and `build` jobs run in parallel
- `push` publishes the image to Docker Hub and GHCR, only if both jobs succeed (and not for pull requests)
- An email is sent if the tests fail
