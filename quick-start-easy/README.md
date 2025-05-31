### Quick Installation Guide

Welcome to the quick installation guide for PublicBacklog. Following this guide should have you up and running in less than 5 minutes

This guide is meant to require minimal setup from your side. All it takes is a simple update to your html and you'll be collecting feedback in no time!

#### First things first

This code will need to be added somewhere on your website. This will automatically log in your user to PublicBacklog so they are able to provide feedback immediately.

##### Link to feedback
The important components here are the `<a></a>` tag and the `data-pb-link` attribute. Beyond that it can be styled or be a sub component for anything you'd like.

```html
<a data-pb-link>
    Give Feedback
</a>
```

Next you'll need to initialize the PublicBacklog sdk. You can do so with the following code. 

```html
<script>!function(n,t,i,r){function u(){if(!t.getElementById(i)){var u=t.getElementsByTagName(r)[0],n=t.createElement(r);n.type="text/javascript";n.async=!0;n.src="https://api.publicbacklog.com/files/sdk.js";u.parentNode.insertBefore(n,u)}}if("function"!=typeof n.PublicBacklog){var f=function(){f.q.push(arguments)};f.q=[];n.PublicBacklog=f;"complete"===t.readyState?u():n.attachEvent?n.attachEvent("onload",u):n.addEventListener("load",u,!1)}}(window,document,"publicbacklog-sdk","script")</script>

<script>
    PublicBacklog({
        email: "test@test.com",
        name: "test test",
        organizationName: "PublicBacklog",
        backlogName: "Website",
      });
</script>
```

##### Public backlogs

This configuration will work by default for backlogs that are set to public (default)

##### Private backlogs

If your backlog is set to private, the user will need to be preconfigured via the [User Management](/organization-users/?id=publicbacklog-organization-users) section of your organization.

#### That's it!

Now that bit of code is added to your website upon loading the page they will be automatically logged in via their Organization User account and when directed to your backlog they will be able to leave feedback!