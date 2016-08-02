
This repository contains a Visual Studio Team Services plugin called "Azure App Services - Start and Stop". More information is available on the Visual Studio Marketplace: https://marketplace.visualstudio.com/items?itemName=rbengtsson.appservices-start-stop


# Using the extension


## About ##

Under certain circumstances, you will have to stop your Azure AppService / Azure WebApp before deployment as it may lock DLL-files (and thus prevent a successful deployment).

This extension has two tasks, one is for stopping and the other one is for starting an Azure AppService / Azure WebSite as a part of a VSTS build.

The tasks has been tested with a hosted instance of VSTS in combination with Azure AppServices.


## How to use ##

 * Install this extension to your instance of VSTS (hit that install-button)
 * Wrapp your "Azure Web App Deployment step" with stop and start-tasks from this extension, ie.:
   * Azure AppServices Stop
   * Azure Web App Deployment
   * Azure AppServices Start

Configuration of the build steps is done similar to the standard Azure PowerShell build step, i.e. you will have to connect your subscription to VSTS and then select your subscription from a list. You will also have to specify the name of the AppService to stop / start.


## Contributors ##

 * Robert Bengtsson - https://github.com/rbengtsson
 * Greg Pakes - https://github.com/gregpakes
 

# License and usage

MIT License

Copyright (c) 2016 Robert Bengtsson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


# Developing and building the extension

This section contains techical information that is only useful if you want to enhance / improve the extension yourself.


## Installing build environment

 * Get code from github
 * Install NPM
 * Install TFS-tools by executing: npm i -g tfx-cli

More information here: https://www.visualstudio.com/docs/integrate/extensions/develop/add-build-task


## Build & publish

* Create a package by executing: tfx extension create --manifest-globs vss-extension.json
* Upload the result to: https://marketplace.visualstudio.com/manage/publishers/rbengtsson


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
