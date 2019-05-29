git_repo_url = attribute(
  "git_repo_url",
  description: "The Terraform configuration under test must define the " \
  "equivalently named output",
)

control 'check_website' do

  describe http(git_repo_url) do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome codebase' }
  end

end
