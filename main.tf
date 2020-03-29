resource "vault_auth_backend" "auth" {
    type = var.type
    path = var.path
    description = var.description
    local = var.local
    tune = var.tune
}