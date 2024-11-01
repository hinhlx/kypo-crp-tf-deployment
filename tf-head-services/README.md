<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kypo_crp"></a> [kypo\_crp](#module\_kypo\_crp) | git::https://gitlab.ics.muni.cz/muni-kypo-crp/devops/terraform-modules/kypo-crp-tf-module-kypo-crp-helm.git | v1.0.8 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acme_contact"></a> [acme\_contact](#input\_acme\_contact) | Let's encrypt contact email address | `string` | n/a | yes |
| <a name="input_application_credential_id"></a> [application\_credential\_id](#input\_application\_credential\_id) | Application credentials ID for accessing OpenStack project | `string` | n/a | yes |
| <a name="input_application_credential_secret"></a> [application\_credential\_secret](#input\_application\_credential\_secret) | Application credentials secret for accessing OpenStack project | `string` | n/a | yes |
| <a name="input_deploy_head_timeout"></a> [deploy\_head\_timeout](#input\_deploy\_head\_timeout) | Timeout for deploying kypo-crp-head helm package in seconds | `number` | `3600` | no |
| <a name="input_gen_user_count"></a> [gen\_user\_count](#input\_gen\_user\_count) | Number of local users to generate | `number` | n/a | yes |
| <a name="input_git_config"></a> [git\_config](#input\_git\_config) | Git configuration for KYPO. For internal GIT, set privateKey to empty string. | <pre>object({<br>    type                 = string<br>    server               = string<br>    sshPort              = number<br>    restServerUrl        = string<br>    user                 = string<br>    privateKey           = string<br>    accessToken          = string<br>    ansibleNetworkingUrl = string<br>    ansibleNetworkingRev = string<br>    }<br>  )</pre> | n/a | yes |
| <a name="input_guacamole_admin_password"></a> [guacamole\_admin\_password](#input\_guacamole\_admin\_password) | Password of guacamole admin user | `string` | n/a | yes |
| <a name="input_guacamole_user_password"></a> [guacamole\_user\_password](#input\_guacamole\_user\_password) | Password of guacamole normal user | `string` | n/a | yes |
| <a name="input_head_host"></a> [head\_host](#input\_head\_host) | FQDN/IP address of node/LB, where KYPO head services are running | `string` | n/a | yes |
| <a name="input_head_ip"></a> [head\_ip](#input\_head\_ip) | IP address of node/LB, where KYPO head services are running | `string` | n/a | yes |
| <a name="input_helm_repository"></a> [helm\_repository](#input\_helm\_repository) | Repository with KYPO-head helm packages | `string` | `"https://gitlab.ics.muni.cz/api/v4/projects/2358/packages/helm/stable"` | no |
| <a name="input_kubernetes_client_certificate"></a> [kubernetes\_client\_certificate](#input\_kubernetes\_client\_certificate) | Base64 encoded client certificate for authentication to Kubernetes API | `string` | n/a | yes |
| <a name="input_kubernetes_client_key"></a> [kubernetes\_client\_key](#input\_kubernetes\_client\_key) | Base64 encoded client key for authentication to Kubernetes API | `string` | n/a | yes |
| <a name="input_kubernetes_host"></a> [kubernetes\_host](#input\_kubernetes\_host) | FQDN/IP address of Kubernetes API | `string` | n/a | yes |
| <a name="input_kypo_crp_head_version"></a> [kypo\_crp\_head\_version](#input\_kypo\_crp\_head\_version) | Version of kypo-crp-head helm package | `string` | `"2.0.0"` | no |
| <a name="input_kypo_postgres_version"></a> [kypo\_postgres\_version](#input\_kypo\_postgres\_version) | Version of kypo-postgres helm package | `string` | `"2.1.0"` | no |
| <a name="input_man_flavor"></a> [man\_flavor](#input\_man\_flavor) | Flavor name used for man nodes | `string` | `"csirtmu.tiny1x2"` | no |
| <a name="input_man_image"></a> [man\_image](#input\_man\_image) | OpenStack image used for man nodes | `string` | `"debian-10-man"` | no |
| <a name="input_oidc_providers"></a> [oidc\_providers](#input\_oidc\_providers) | List of OIDC providers. Set issuerIdentifier and userInfoUrl to empty string if not used. | <pre>list(object({<br>    url              = string<br>    logoutUrl        = string<br>    clientId         = string<br>    label            = string<br>    issuerIdentifier = string<br>    userInfoUrl      = string<br>    responseType     = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_os_auth_url"></a> [os\_auth\_url](#input\_os\_auth\_url) | OpenStack authentication URL | `string` | n/a | yes |
| <a name="input_proxy_host"></a> [proxy\_host](#input\_proxy\_host) | FQDN/IP address of proxy-jump host | `string` | n/a | yes |
| <a name="input_proxy_key"></a> [proxy\_key](#input\_proxy\_key) | Base64 encoded proxy-jump ssh private key | `string` | n/a | yes |
| <a name="input_sandbox_ansible_timeout"></a> [sandbox\_ansible\_timeout](#input\_sandbox\_ansible\_timeout) | Timeout for sandbox provisioning stage | `number` | `7200` | no |
| <a name="input_tls_private_key"></a> [tls\_private\_key](#input\_tls\_private\_key) | Base64 encoded tls private key. If not specified, it will be generated. | `string` | `""` | no |
| <a name="input_tls_public_key"></a> [tls\_public\_key](#input\_tls\_public\_key) | Base64 encoded tls public key. If not specified, it will be generated | `string` | `""` | no |
| <a name="input_users"></a> [users](#input\_users) | Dictionary with with users, that should be created in KYPO. For users from external OIDC providers, set password to empty string. | <pre>map(<br>    object({<br>      iss        = string<br>      password   = string<br>      email      = string<br>      fullName   = string<br>      givenName  = string<br>      familyName = string<br>      admin      = bool<br>      }<br>  ))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
