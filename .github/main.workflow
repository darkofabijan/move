workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Heroku"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@6aeb2acb39f91da283faf4c76898a723a03b2264"
}

action "GitHub Action for Heroku" {
  uses = "actions/heroku@466fea5e8253586a6df75b10e95447b0bfe383c1"
  needs = ["GitHub Action for Slack"]
}
