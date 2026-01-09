# Shopify Test Stuff

## Using the Shopify API locally
### Store info:
**Domain**: bobsdiscountcomicgrading.myshopify.com
**ALT Domain**: bobs-bike-repair-and-customization.myshopify.com

Some notes:
- First, the alt domain was the original name of the site before I decided to make the test site more in-line with the actual application.
- Second, for whatever reason, none of this seems to work particularly well in powershell. Thus, I recommend using git bash if you're on a windows machine. 

### Install Shopify Locally:
```
npm install -g @shopify/cli@latest
```

### Login to your shopify store:
```
shopify auth login
```

This will redirect you to the browser, where you'll have to confirm that the code displayed matches what appeared in your console. 

### Listing themes
```
shopify theme list --store bobs-bike-repair-and-customization.myshopify.com
```

## Automatic Git Integration
There is a git action, defined in `.github/workflows/run-script-on-main.yml`. This script requires that we produce an API key from shopify.

### Generating the API key


### Placing the API Key
Once you've generated the key, it should go in Settings > Secrets and variables > Actions, or you can follow this link structure: `https://github.com/{your github}/{your repo name}/settings/secrets/actions/new`. 