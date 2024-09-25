#!/bin/bash

# https://github.com/norwoodj/helm-docs
helm-docs --chart-search-root=charts --template-files ./README.md.gotmpl
