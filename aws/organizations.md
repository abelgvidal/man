# Organization

AWS accounts can be used using organizations. These resources allow:

- Automate AWS account creation and management, and provision resources with AWS CloudFormation Stacksets
- Maintain a secure environment with policies and management of AWS security services
- Govern access to AWS services, resources, and regions
- Centrally manage policies across multiple AWS accounts
- Audit your environment for compliance 
- View and manage costs with consolidated billing 
- Configure AWS services across multiple accounts

AWS accounts can be added to an organization. If we need extended nodes, we may use OU (Organizational Units). OU depend on other OU (max: 5 levels) and an Organization (Root).

    org1
    |
    |- OU1
    |   |
    |   OU2
    |   |
    |   | - account1
    |   | - account2

or not using OUs

    org2
    | - account1
    | - account2