# aws

## EC2 get-password-data
[get-password-data](http://docs.aws.amazon.com/cli/latest/reference/ec2/get-password-data.html) 

  Retrieves the encrypted administrator password for an instance running Windows.

  The Windows password is generated at boot if the EC2Config service plugin, Ec2SetPassword , is enabled. This usually only happens the first time an AMI is launched, and then Ec2SetPassword is automatically disabled. The password is not generated for rebundled AMIs unless Ec2SetPassword is enabled before bundling.

  The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.

  Password generation and encryption takes a few moments. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.
