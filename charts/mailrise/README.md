# mailrise

An SMTP gateway for Apprise notifications.

![Version: 0.0.9](https://img.shields.io/badge/Version-0.0.9-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.4.0](https://img.shields.io/badge/AppVersion-1.4.0-informational?style=flat-square)

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
$ helm repo add lookinglass-in https://lookinglass-in.github.io/helm-charts
$ helm install my-release lookinglass-in/mailrise
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| envVarsConfigmap.enabled | bool | `true` |  |
| envVarsConfigmap.existingConfigMap | string | `""` |  |
| envVarsConfigmap.values.TLS_MODE | string | `"OFF"` |  |
| filesConfigmap.enabled | bool | `true` |  |
| filesConfigmap.existingConfigMap | string | `""` |  |
| filesConfigmap.values."mailrise.conf" | string | `"tls:\n   mode: !env_var TLS_MODE\n#  certfile: /path/to/certificate.pem\n#  keyfile: /path/to/privatekey.pem\n\nsmtp:\n  auth:\n    basic:\n      !env_var SMTP_USERNAME: !env_var SMTP_PASSWORD\n\nconfigs: \n  # Wildcard targets are evaluated in the order they appear in the\n  # configuration file, and Mailrise uses the first match. So, this config\n  # will catch any addresses not matched by the previous targets.\n  #\n  # Note that if you use \"*\" as your pattern, Mailrise will expand that to\n  # \"*@mailrise.xyz\", which is probably not the catch-all target you wanted.\n  #\n  \"*@*\":\n    urls:\n      - !env_var MAILRISE_SLACK_DEFAULT_URI\n"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"yoryan/mailrise"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | string | `""` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secrets.enabled | bool | `true` |  |
| secrets.existingSecret | string | `""` |  |
| secrets.values.MAILRISE_SLACK_DEFAULT_URI | string | `"slack://T02FUKG2E/B07NX99HFPC/RG6huWnBGEZ0E2NMB0jb02V8/#general"` |  |
| secrets.values.SMTP_PASSWORD | string | `"changeme"` |  |
| secrets.values.SMTP_USERNAME | string | `"username"` |  |
| securityContext | object | `{}` |  |
| service.nodePort | int | `30825` |  |
| service.port | int | `8025` |  |
| service.type | string | `"NodePort"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| verboseMode | bool | `false` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
