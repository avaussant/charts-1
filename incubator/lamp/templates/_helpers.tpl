{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Apache host
*/}}
{{- define "apache_fullname" -}}
{{- printf "%s-%s" .Release.Name "apache" | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Mysql host
*/}}
{{- define "mysql_fullname" -}}
{{- printf "%s-%s" .Release.Name "mysql" | trunc 24 | trimSuffix "-" -}}
{{- end -}}