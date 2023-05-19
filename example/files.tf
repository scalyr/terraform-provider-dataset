/*
# Query a specific configuration file
data "dataset_file" "test" {
  path = "/logParsers/test123"
}

# A New Configuration File
resource "dataset_file" "test" {
  path = "/test/test"
  content = <<-EOF
Hello there
  EOF
}

# Output the content
output "file_content" {
  value = data.dataset_file.test.content
}
*/
