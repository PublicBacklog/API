### Quick Installation Guide
Welcome to the quick installation guide for PublicBacklog. Following this guide should have you up and running in less than 5 minutes

This guide is meant to require minimal setup from your side. All it takes is a simple update to your html and you'll be collecting feedback in no time!

#### First things first
This code will need to be added somewhere on your website. This will automatically log in your user to PublicBacklog so they are able to provide feedback immediately.

```html
<script src="https://api.publicbacklog.com/files/sdk.js"></script>

<script>
    PublicBacklog({
        email: "test@test.com",
        name: "test test",
        organizationName: "PublicBacklog",
      });
</script>
```
You don't specifically need this. Simply redirecting a user to your feedback url will allow them to register/login to their own PublicBacklog account.

#### Public backlogs
This configuration will work by default for backlogs that are set to public (default)

##### Private backlogs
If your backlog is set to private, the user will need to be preconfigured via the [User Management]() section of your organization. 