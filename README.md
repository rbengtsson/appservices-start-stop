## About ##

This repository contains a Visual Studio Team Services plugin called "Azure App Services - Start and Stop". The plugin has two task, one is for starting and the other one is for stopping an Azure App Service as a part of a VSTS build. It has been tested with a hosted installation of VSTS in combination with Azure Web Apps.


## Installing build environment

 * Get code from github
 * Install NPM
 * npm i -g tfx-cli

More information here: https://www.visualstudio.com/docs/integrate/extensions/develop/add-build-task


## Build & publish

* Execute: tfx extension create --manifest-globs vss-extension.json
* Upload to: https://marketplace.visualstudio.com/manage/publishers/rbengtsson


## More informaiton / links

* Info about writing plugins
  * https://www.visualstudio.com/en-us/docs/integrate/extensions/overview
  * https://www.visualstudio.com/en-us/docs/integrate/extensions/develop/add-build-task  
  * https://www.simple-talk.com/sql/database-delivery/writing-build-vnext-tasks-for-visual-studio-online/
* Plugin examples:
  * https://github.com/Microsoft/vsts-tasks/tree/master/Tasks
* Manifest examples:
  * https://github.com/jessehouwing/vsts-extension-tasks/blob/master/vss-extension.json
  * https://russellyoung.net/2016/06/18/visual-studio-team-system-vstsbuild-and-release-task-powershell-extensions/
