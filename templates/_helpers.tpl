{{/*
Expand the name of the chart.
*/}}
{{- define "continuouspipe.name" -}}
{{- trunc 63 .Chart.Name | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the component, based on the release name .
*/}}
{{- define "continuouspipe.component_name" -}}
{{- printf "%s-%s" .Release.Name .Component | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "continuouspipe.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
