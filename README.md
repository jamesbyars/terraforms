# AWS Terraform Scripts

I've decided to publish some terraform scripts for AWS.  Good Luck.

## Everything Runs In Docker

### Build

```
docker build -t terraforms .
```

No, you shouldn't push this image to a Docker repository because the creation of it also 
generates your AWS key-pair - something that shouldn't be made "available" to anyone.

### Get Docker Shell

```
docker run -it -v $(pwd):/home terraforms bash
```

### Apply Terraform Script

`cd` to the directory you want and apply it

```
terraform apply -var 'access_key=[your access key]' -var 'secret_key=[your secret key]'
```
