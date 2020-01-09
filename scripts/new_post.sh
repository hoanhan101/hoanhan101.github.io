#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

NOW=$(date +"%F")

FILE="_posts/$NOW-$1.md"

echo "---
layout: post
title: Template's title
summary : Template's summary
categories: Template
tags: [templates]
---

This is a template for you to copy from!" > "$FILE"

vi "$FILE"
