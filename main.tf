resource "vault_auth_backend" "auth" {
    type = var.type
    path = var.path
    description = var.description
    local = var.local
    dynamic "tune" {
        for_each = (var.tune == null ? [] : [var.tune])
        content {
            default_lease_ttl = tune.value["default_lease_ttl"]
            max_lease_ttl = tune.value["max_lease_ttl"]
            audit_non_hmac_response_keys = tune.value["audit_non_hmac_response_keys"]
            audit_non_hmac_request_keys = tune.value["audit_non_hmac_request_keys"]
            listing_visibility = tune.value["listing_visibility"]
            passthrough_request_headers = tune.value["passthrough_request_headers"]
            allowed_response_headers = tune.value["allowed_response_headers"]
            token_type = tune.value["token_type"]
        }
    }
}