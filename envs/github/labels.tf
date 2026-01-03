locals {

  labels = [
    {
      name        = "bet"
      color       = "9d00cd"
      description = "Issues related to betting features"
    },
    {
      name        = "bug"
      color       = "ed0018"
      description = "Something isn't working"
    },
    {
      name        = "hypothesis"
      color       = "e0d100"
      description = "Issues related to hypotheses"
    },
    {
      name        = "experiment"
      color       = "d100a7"
      description = "Issues related to experiments"
    },
    {
      name        = "user-story"
      color       = "00e240"
      description = "Issues related to user stories"
    },
    {
      name        = "technical-task"
      color       = "0054db"
      description = "Issues related to technical tasks"
    },
    {
      name        = "improvement"
      color       = "059bc0"
      description = "An improvement to an existing feature or process"
    },
    {
      name        = "technical-debt"
      color       = "fc8541"
      description = "Technical debt that needs to be addressed"
    }
  ]

  vflopes_repositories = [
    "saas-boilerplate"
  ]


  vflopes_labels = tomap({
    for pair in setproduct(local.vflopes_repositories, local.labels) :
    "${pair[0]}:${pair[1].name}" => merge(pair[1], {
      repository = pair[0]
    })
  })

}


resource "github_issue_label" "vflopes" {
  provider    = github.github_vflopes
  for_each    = local.vflopes_labels
  repository  = each.value["repository"]
  name        = each.value["name"]
  description = each.value["description"]
  color       = each.value["color"]
}
