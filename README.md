## Usage
  
    $ ./shell [@layer1 @layer2 ...] [command]

Launches a Neo4j instance using `docker-compose`.
Configuration is done through layers, enabled with e.g. `@foo`. 
These are applied as overlayed docker-compose files, e.g. `docker-compose.foo.yml`.

## Examples

| Command                  |                                                                                             |
|--------------------------|---------------------------------------------------------------------------------------------|
| `./shell`                | Starts a Neo4j EE latest and launches a cypher-shell.                                       |
| `./shell bash`           | Starts a Neo4j EE latest and launches bash.                                                 |
| `./shell @4.4`           | Starts a Neo4j EE 4.4 and launches a cypher-shell.                                          |
| `./shell @4.4 @ports up` | Starts a Neo4j EE 4.4. Neo4j ports are mapped to the host machine for use with e.g. Browser |

### Examples using dev builds:

| Command                                          |                                                                                                                                        |
|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| `$ ./shell fetch`                                | Downloads latest successful Neo4j dev build from TeamCity.                                                                             |
| `$ ./shell fetch Neo4j44_Docker_DockerArmDebian` | Downloads latest successful Neo4j 4.4 ARM build from TeamCity.                                                                         |
| `$ ./shell @dev bash`                            | Starts a Neo4j using the compose layers docker-compose.yml, docker-compose.dev.yml                           and launches a bash shell |

## Commands

| Command              |                                                                                                   |
|----------------------|---------------------------------------------------------------------------------------------------|
| `run`                | Start Neo4j and launch cypher-shell [default]                                                     |
| `up`                 | Start Neo4j                                                                                       |
| `down`               | Stop Neo4j                                                                                        |
| `bash`               | Start Neo4j and launch bash                                                                       |
| `ps`                 | Show containers for selected layers                                                               |
| `pss`                | Show containers for all layers                                                                    |
| `fetch [<build-id>]` | Download dev build docker image from TeamCity. Default build-id is `Neo4jDev_Docker_DockerDebian` |
| `<other>`            | Arguments relayed to docker-compose                                                               |

## Config

* Defaults are set in `config/config.sh`.
* Auth (for TeamCity) is set in `config/auth.sh`