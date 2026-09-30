# frankenphp-php84

Image de base : [FrankenPHP](https://frankenphp.dev) (PHP 8.4) avec les extensions `pdo_pgsql`, `intl`, `zip`, `opcache`,
`apcu`, `gd`, `exif` et Composer. Elle ne contient ni code applicatif ni secret.

Compiler ces extensions (surtout `intl`) prend plusieurs minutes : l'image est construite une fois ici, puis utilisée
comme point de départ (`FROM`) d'autres images.

```dockerfile
FROM ghcr.io/kgonella/frankenphp-php84:1
```

## Publication

Le workflow [publish.yml](.github/workflows/publish.yml) construit l'image et la publie sur GHCR à chaque changement du
`Dockerfile` ou de `VERSION` (le contenu de `VERSION` est le tag). Pour changer les extensions : modifier le
`Dockerfile`, incrémenter `VERSION`.
