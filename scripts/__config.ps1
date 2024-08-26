$global:repositoryName = "" #  "organization/repository" or "repository"
$global:date           = Get-Date -UFormat "%Y%m"

$global:composeProjectName = ""


if (-not $global:repositoryName) {
    Throw "'repositoryName' is not set."
}
if (-not $global:composeProjectName) {
    Throw "'composeProjectName' is not set."
}
