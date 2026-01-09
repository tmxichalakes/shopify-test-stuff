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
You can find information on how to integrate the official shopify github plugin [here.](https://shopify.dev/docs/storefronts/themes/tools/github)
This setup is slightly different than a usual github repo, in that each *branch* represents a theme with no intention of merging branches. Work can still be done in a way that is source controlled - you can still branch a theme and merge back to it. But there's not a "main" branch, there's no reason to ever do a PR between themes, etc. This means that if you have a change, you'll have to apply it to each branch.

However, this is also aided by the fact that the branches themselves are automatically committed to as shopify saves them. Thus, there is a degree of version control among themes, and moreover, they can be edited in a simple text editor and simply imported. 

### Creating a new theme,
- Create the new theme in shopify.
- Using the shopify cli, list themes and identify the theme.
- Create a new branch and run the shell script
```
shopify theme pull --theme <your theme's id> --store <the base domain of your store> --path . --force
```