[![ownCloud](../../raw/master/images/ownCloud.png)](../../../owncloud)
## ownCloud

The JPS package deploys ownCloud that initially contains 1 application server and 1 database container. The package provides vertical scalling per node and horizontal scaling for each layer out-of-the-box.

### Highlights
This package is designed to deploy ownCloud environment which represents an open source and free file cloud storage. It can be easily used for data sharing and synchronization, as well as just for storing documents.

### Environment Topology

![owncloud-environment-topology](images/owncloud-environment-topology.png)

### Specifics

Layer                |     Server    | Number of CTs <br/> by default | Cloudlets per CT <br/> (reserved/dynamic) | Options
-------------------- | --------------| :----------------------------: | :---------------------------------------: | :-----:
AS                   | Apache 2 (MOD_PHP) |       1                        |           1 / 16                          | -
DB                   |    MySQL      |       1                        |           1 / 16                           | -

* AS - Application server 
* DB - Database 
* CT - Container

**ownCloud Version**: 8.1.1<br/>
**PHP Engine**: PHP 5.5.36<br/>
**MySQL Database**: 5.7.12

### Deployment

In order to get this solution instantly deployed, click the "Get It Hosted Now" button, specify your email address within the widget, choose one of the [Jelastic Public Cloud providers](https://jelastic.cloud) and press Install.

[![GET IT HOSTED](https://jelastic.com/getithosted/button.png)](https://jelastic.com/install-application/?manifest=https%3A%2F%2Fgithub.com%2Fjelastic-jps%2Fowncloud%2Fraw%2Fmaster%2Fmanifest.jps)

To deploy this package to Jelastic Private Cloud, import [this JPS manifest](../../raw/master/manifest.jps) within your dashboard ([detailed instruction](https://docs.jelastic.com/environment-export-import#import)).

More information about Jelastic JPS package and about installation widget for your website can be found in the [Jelastic JPS Application Package](https://github.com/jelastic-jps/jpswiki/wiki/Jelastic-JPS-Application-Package) reference.
