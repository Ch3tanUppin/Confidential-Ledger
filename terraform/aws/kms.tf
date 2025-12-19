resource "aws_kms_key" "verifier_key" {
  description = "Key for attestation verifier signing"
}
