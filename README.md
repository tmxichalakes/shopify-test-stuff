# Shopify Test Stuff
Synchronizing with Git is not automatic (yet)

## Store info:
**Domain**: bobsdiscountcomicgrading.myshopify.com
**ALT Domain**: bobs-bike-repair-and-customization.myshopify.com

Some notes:
- First, the alt domain was the original name of the site before I decided to make the test site more in-line with the actual application.
- Second, for whatever reason, none of this seems to work particularly well in powershell. Thus, I recommend using git bash if you're on a windows machine. 

## Install Shopify Locally:
```
npm install -g @shopify/cli@latest
```

## Login to your shopify store:
```
shopify auth login
```

This will redirect you to the browser, where you'll have to confirm that the code displayed matches what appeared in your console. 

## Listing themes
```
shopify theme list --store bobs-bike-repair-and-customization.myshopify.com
```