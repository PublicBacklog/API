### Quick Installation Guide

Quick installation guide for PublicBacklog. Setup takes under **5 minutes**.

Minimal configuration required. Access to your codebase is needed. Update your HTML and start collecting feedback immediately.

### Include the sdk
You'll need to initialize the PublicBacklog sdk. You can do so with the following code. 

Include the sdk in your app. This code will handle asynchronous loading for sites build with technololgy like React.
```html
<script>!function(n,t,i,r){function u(){if(!t.getElementById(i)){var u=t.getElementsByTagName(r)[0],n=t.createElement(r);n.type="text/javascript";n.async=!0;n.src="https://api.publicbacklog.com/files/sdk.js";u.parentNode.insertBefore(n,u)}}if("function"!=typeof n.PublicBacklog){var f=function(){f.q.push(arguments)};f.q=[];n.PublicBacklog=f;"complete"===t.readyState?u():n.attachEvent?n.attachEvent("onload",u):n.addEventListener("load",u,!1)}}(window,document,"publicbacklog-sdk","script")</script>
```
### Initialize the sdk
Initialize the user with the SDK. This enables feedback submission without requiring users to create a PublicBacklog account.
```html
<script>
    PublicBacklog({
        email: "test@test.com",
        name: "test test",
        organizationName: "PublicBacklog",
        backlogName: "Website",
      });
</script>
```
### Link users to the feedback form
Optionally, include a link to the feedback. If the link has a `data-pb-link` attribute, the SDK will auto-update it to the correct backlog URL.

```html
<a data-pb-link>
    Give Feedback
</a>
```

<div class="pb-warning">
    <i class="material-icons" style="font-size: 24px;">warning</i>
    <p style="margin-left: 10px;">
        This configuration will work by default for backlogs that are set to public. If your backlog is set to private, the user will need to be preconfigured via the <a href="/organization-users/?id=publicbacklog-organization-users">User Management</a> section of your organization.
   </p> 
</div>

### That's it!

With the code added, users are automatically logged in via their Organization User account. They can submit feedback when visiting your backlog.