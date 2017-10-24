## About ##

Under certain circumstances, you will have to stop your Azure AppService / Azure WebApp before deployment as it may lock DLL-files (and thus prevent a successful deployment).

This extension has two tasks, one is for stopping and the other one is for starting an Azure AppService / Azure WebSite as a part of a VSTS build.

The tasks has been tested with a hosted instance of VSTS in combination with Azure AppServices.



## How to use ##

 * Install this extension to your instance of VSTS (hit that install-button on the top of this page)
 * Wrapp your "Azure Web App Deployment step" with stop and start-tasks from this extension, ie.:
   * Azure AppServices Stop
   * Azure Web App Deployment
   * Azure AppServices Start

Configuration of the build steps is done similar to the standard Azure PowerShell build step, i.e. you will have to connect your subscription to VSTS and then select your subscription from a list. You will also have to specify the name of the AppService to stop / start.

You may also specify the deployment slot if you are using that. Just leave the field empty if you are not using deployment slots.


## Contributors ##

 * Robert Bengtsson - https://github.com/rbengtsson
 * Greg Pakes - https://github.com/gregpakes
 * Joseph Jacobson - https://github.com/flyingpilot3006


## More information ##

Source code and technical information:
https://github.com/rbengtsson/appservices-start-stop