# jdk17-module
This is a basic template project that can be used for creating a basic jdk based module. This includes src and corresponding test directories

# Build & run

```bash
docker build --network=host -t my-jdk17-module .

docker run --rm --dns 8.8.8.8 my-jdk17-module
```
