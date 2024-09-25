# database-backup-s3

A Docker container to periodically backup supported databases to an S3 compatible object storage.

![Version: 0.0.10](https://img.shields.io/badge/Version-0.0.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.18](https://img.shields.io/badge/AppVersion-3.18-informational?style=flat-square)

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
$ helm install my-release lookinglass-in/database-backup-s3
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| action.enabled | bool | `false` |  |
| action.restartPolicy | string | `"Never"` |  |
| action.type | string | `"backup"` |  |
| affinity | object | `{}` |  |
| configmap.enabled | bool | `true` |  |
| configmap.existingConfigMap | string | `""` |  |
| configmap.values.BACKUP_ALL | string | `"false"` |  |
| configmap.values.BACKUP_KEEP_DAYS | int | `7` |  |
| configmap.values.CONFIRM_RESTORE | string | `"no"` |  |
| configmap.values.DATABASE_HOST | string | `"postgres"` |  |
| configmap.values.DATABASE_NAME | string | `"dbname"` |  |
| configmap.values.DATABASE_PORT | int | `5432` |  |
| configmap.values.DATABASE_TYPE | string | `"postgres"` |  |
| configmap.values.PASSPHRASE | string | `"passphrase"` |  |
| configmap.values.S3_BUCKET | string | `"my-bucket"` |  |
| configmap.values.S3_ENDPOINT | string | `"http://localhost:9000"` |  |
| configmap.values.S3_PREFIX | string | `"backups"` |  |
| configmap.values.S3_REGION | string | `"us-east-1"` |  |
| configmap.values.SCHEDULE | string | `"@weekly"` |  |
| configmap.values.WAIT_FOR_IT_ARGS | string | `"-t 15 postgres:5432 minio:9000"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/lookinglass-in/database-backup-s3"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.exec.command[0] | string | `"ps"` |  |
| livenessProbe.exec.command[1] | string | `"-ef"` |  |
| livenessProbe.exec.command[2] | string | `"|"` |  |
| livenessProbe.exec.command[3] | string | `"grep"` |  |
| livenessProbe.exec.command[4] | string | `"cron"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.exec.command[0] | string | `"ps"` |  |
| readinessProbe.exec.command[1] | string | `"-ef"` |  |
| readinessProbe.exec.command[2] | string | `"|"` |  |
| readinessProbe.exec.command[3] | string | `"grep"` |  |
| readinessProbe.exec.command[4] | string | `"cron"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secrets.enabled | bool | `true` |  |
| secrets.existingSecret | string | `""` |  |
| secrets.values.DATABASE_PASSWORD | string | `"password"` |  |
| secrets.values.DATABASE_USER | string | `"user"` |  |
| secrets.values.PASSPHRASE | string | `"passphrase"` |  |
| secrets.values.S3_ACCESS_KEY_ID | string | `"key"` |  |
| secrets.values.S3_SECRET_ACCESS_KEY | string | `"secret"` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
