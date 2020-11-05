variable "enabled" {
  type    = bool
  default = true
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name."
}

variable "cluster_identity_oidc_issuer" {
  type        = string
  description = "The OIDC Identity issuer for the cluster"
}

variable "cluster_identity_oidc_issuer_arn" {
  type        = string
  description = "The OIDC Identity issuer ARN for the cluster that can be used to associate IAM roles with a service account"
}

variable "helm_chart_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "Ingress Gateway Helm chart name."
}

variable "helm_chart_release_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "Ingress Gateway Helm chart release name."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "Ingress Gateway Helm repository name."
}

variable "helm_chart_version" {
  type        = string
  default     = "1.0.3"
  description = "Ingress Gateway Helm chart version."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create k8s namespace with name defined by `namespace`"
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "Ingress Gateway Helm chart namespace which the alb-ingress service account has been created."
}

variable "service_account_name" {
  default     = "aws-alb-ingress-controller"
  description = "The k8s alb-ingress service account name"
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable"
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://github.com/aws/eks-charts/tree/master/stable/aws-load-balancer-controller"
}