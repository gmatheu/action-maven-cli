# GitHub Action for the Maven CLI

The GitHub Action for [Maven](https://maven.apache.org/) wraps the Maven CLI to enable Maven commands to be run. This can be used to run every Maven Command.

## Versions

* OS: Debian (based on [binarybabel/oracle-jdk](https://hub.docker.com/r/binarybabel/oracle-jdk) image)
* Java: Oracle JDK 8
* Maven: 3.6.0 (from [SDKman](https://sdkman.io/install))


## Usage

```
action "package" {
  uses = "gmatheu/action-maven-cli@oracle-jdk-8"
  args = "clean install"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
