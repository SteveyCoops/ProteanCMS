# ProteanCMS (formerly EonicWeb5)
.Net / XSLT based Content Management System, with Ecommerce and membership facilities.

## Project Description
Protean CMS is an extremely robust and flexible platform. Every aspect can be themed using XSLT, with a wide range of content types, modules available 'out-of-the-box', as well as many high quality themes ready to go. New modules can be easily created using XForms, XSLT and .Net assemblies.

The CMS contains full Ecommerce and user membership functionality.

## Background
Developed over 16 years by leading web design company Eonic LLP - www.eonic.com - it's been used on hundreds of web projects and has the capacity to cope with almost any customer's web requirements.

Until recently, the project has been managed internally at Eonic and has only recently moved to GitHub, hence the reduced level of product history.

## List of Features
http://www.proteancms.com/Why-eonicweb5/Feature-List


## Example Websites
https://www.proteancms.com/Web-Design-Portfolio

## Developers
The team welcome new developers and contributors to the platform and will actively support and encourage those that are contributing to its evolution.

## Quick Guide - Getting up and running locally...

Make a clone or download the files, create a new site locally in IIS and point it to the wwwroot folder in your downloaded files.

Create an empty SQL server database

Complete the following settings in eonic.web.config
```xml
  <add key="DatabaseType" value="SQL" />
  <add key="DatabaseServer" value="" />
  <add key="DatabaseAuth" value="user id=user; password=pwd" />
  <add key="DatabaseName" value="" />
  <add key="DatabaseUsername" value="user" />
  <add key="DatabasePassword" value="pwd" />
```
  ...and go to http://mylocalproject/ewcommon/setup to install the DB.

  Any problems, issues or queries, please email trevor@eonic.co.uk or raise an issue at
  
  https://github.com/Eonic/proteancms/issues

  Detailed installer guides and videos will be available shortly.

## Partners
Commercial hosting, consultancy and support is available. For any new requirements, please our website - www.eonic.com

For more information go to http://www.proteancms.com



