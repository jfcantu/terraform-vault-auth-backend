variable "type" {
    type = string
}

variable "path" {
    type = string
    default = null
}

variable "description" {
    type = string
    default = null
}

variable "local" {
    type = string
    default = null
}

variable "tune" {
    type = object({
        default_lease_ttl = string
        max_lease_ttl = string
        audit_non_hmac_response_keys = list(string)
        audit_non_hmac_request_keys = list(string)
        listing_visibility = string
        passthrough_request_headers = list(string)
        allowed_response_headers = list(string)
        token_type = string
    })
    default = null
}