# Jelastic ownCloud Add-on

This repository provides [ownCloud](https://owncloud.org/) add-on for Jelastic Platform.
[![GET IT HOSTED](https://raw.githubusercontent.com/JelasticJPS/ownCloud/master/images/getithosted.png)](http://go.jelastic.com/test?hoster-select=1&theme=modern&app=https://raw.githubusercontent.com/JelasticJPS/ownCloud/master/ownCloud-8.1.1.json)

**ownCloud** represents an open source and free file cloud storage.

**Type of nodes this add-on can be applied to**:
- apache2
- mysql5

### What it can be used for?
ownCloud represents an open source and free file cloud storage. It can be easily used for data sharing and synchronization, as well as just for storing documents.



### What Jelastic add-on is?

Jelastic add-on represents a package with a kind of a patch, that can be applied to an environment in order to improve and complement its functionality. The full list of the available at a platform add-ons can be seen at the corresponding same-named section of [Jelastic Marketplace](https://docs.jelastic.com/marketplace#add-ons].

### How to install an add-on?
###### For Developers

In case you can’t find the desired package within the list of available ones, copy and save the content of add-on’s manifest as a *.json* file and [import](https://docs.jelastic.com/environment-export-import#import) it to the dashboard. Herewith, you can apply any necessary adjustments to an add-on through this file (if such are required) and install its customized version in the similar way.

###### For Cluster Admins

In order to add the desired add-on to your platform and make it available for users, perform the following:
- copy the content of its manifest 
- switch to the [Marketplace](http://ops-docs.jelastic.com/marketplace-46) section of your JCA panel and choose **Add > Add-on** menu option
- paste the copied strings into the appeared frame and **Save** the template
- choose your newly added add-on within the list and click on **Publish** above

Also, you are able to adjust the given add-on template according to your needs and provide its customized version.


