/*

# Get All Teams
data "dataset_teams" "all" {
}

# Dump all tokens from All Accounts
data "dataset_tokens" "all" {
  for_each = toset(data.dataset_teams.all.teams)
}

output "teams" {
  value = data.dataset_teams.all.teams
}

output "keys" {
  value = data.dataset_tokens.all
}

*/
