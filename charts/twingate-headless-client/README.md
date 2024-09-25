# twingate-headless-client

A Helm chart for twingate-headless-client

![Version: 0.0.14](https://img.shields.io/badge/Version-0.0.14-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.157.1](https://img.shields.io/badge/AppVersion-0.157.1-informational?style=flat-square)

## Additional Information

### Snapshot classes

| name     | resource group | incremental |
|----------|----------------|-------------|

### Default resources

```yaml
{}
```

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add foo-bar http://charts.foo-bar.com
$ helm install my-release foo-bar/twingate-headless-client
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| daemonset.enabled | bool | `false` |  |
| deployment.autoscaling.enabled | bool | `false` |  |
| deployment.autoscaling.replicaCount | int | `1` |  |
| env[0].name | string | `"SERVICE_KEY"` |  |
| env[0].value | string | `"''"` |  |
| env[1].name | string | `"ENABLE_PORT_FORWARDING"` |  |
| env[1].value | bool | `false` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/docker-collection/twingate_headless"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext.capabilities.add[0] | string | `"NET_ADMIN"` |  |
| securityContext.privileged | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
