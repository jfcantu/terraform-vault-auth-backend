resource "vault_auth_backend" "auth" {
    type = var.type
    path = var.path
    description = var.description
    local = var.local
    tune {
        default_lease_ttl = lookup(var.tune, "default_least_ttl", null)
        max_lease_ttl = lookup(var.tune, "max_lease_ttl", null)
        audit_non_hmac_response_keys = lookup(var.tune, "audit_non_hmac_response_keys", [])
        audit_non_hmac_request_keys = lookup(var.tune, "audit_non_hmac_request_keys", [])
        listing_visibility = lookup(var.tune, "listing_visibility", "")
        passthrough_request_headers = lookup(var.tune, "passthrough_request_headers", [])
        allowed_response_headers = lookup(var.tune, "allowed_response_headers", [])
        token_type = lookup(var.tune, "token_type", "")
    }
}