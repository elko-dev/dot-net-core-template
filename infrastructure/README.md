# MW Infrastructure

## Pre-reqs for running terraform

1. Terraform ```brew install hashicorp/tap/terraform```
2. Azure CLI ```brew update && brew install azure-cli```

Once the Azure CLI is installed run the ```az login``` command to login to the correct subscription. Then, set it to your default on the CLI with:

```az account set --subscription <name or id>```

To retrieve a list of current local subscriptions use:
```az account list --output table```

Then, init your local directory. For Azure App Service perform the following:

``` bash
    $ make init
    $ make plan
    $ ENVIRONMENT=dev make apply
```

Then, if you need to delete simply run:

```bash
    $ make destroy
```

TODO -

1. ~~remove password~~
2. follow up on pricing
