## PublicBacklog Organization Users

Organization Users are one of the most important parts of PublicBacklog. They're your users! The same users who will ultimately be providing the feedback to make your product or service better.

They come in two flavors **Users** and **Admins**.

Users are able to acess any of the data that is presented under the `_feedback` section of the website.

Admins have full access to the admin section, approving tickets, modifying roadmaps, making announcements ect.

### Adding Organization Users

#### Public Backlogs

By default a user is able to join a public backlog without any interaction from an admin.

#### Private Backlogs

<div class="pb-warning">
    <i class="material-icons" style="font-size: 24px;">warning</i>
    <p style="margin-left: 10px;">
        Backlogs are by default <strong style="color: #92400e">public</strong>, you can change this in the Organization Settings
   </p> 
</div>

If your backlog is set to private you have two options for allowing users to submit feedback depending on your PublicBacklog integration method.

#### With the &nbsp; [Simple Setup]()

The simple setup gives you more limited options when allowing user feedback. In your [Organization User Management]() section of your backlog you'll find two buttons. Upload and Download.

Start by clicking the Download button.

![1728261282089](image/README/1728261282089.png)

You may also download it from [here](https://api.publicbacklog.com/files/user-template)

Please populate this with the users that you wish to allow access to give feedback on any backlog in the organization.

The only required field is the email field. It is used as a unique identifier for the organization user but the first and last names will be auto-filled with the backlog name as the first name and User as the last name if neither are provided. You may also provide just a first name if you choose, and the last name will be left blank.

Then upload these users via the upload users button

![1728261931930](image/README/1728261931930.png)

Once the users are uploaded an email will be sent to the user asking them to confirm that they wish to receive email communication from us. Regardless of that they will immediately be able to access any backlog within the organization and leave feedback on them.

These users are given basic acess to the feedback section of your backlogs.

Beyond that they are locked out of the admin portion

#### With the &nbsp; [Advanced Setup]()

The Advanced setup gives you the most felxability in terms of setting up users who you want to give feedback. This method does require a higher degree of code integration and testing on your part. But if a private Backlog is the route you want to take this is the best way to do that.

We do offer an api endpoint to add an organization user. This endpoint is only capable of adding a rengular user **not** an admin. Adding a user through this endpoint will immediately allow them to start interacting with your private Backlogs on redirect.

You can explore the endpoint documentation [here](/api/?id=add-organization-user)

#### Adding an adiminstrator

Many organizations want more than one person to manage organizations. While an organization can only have one owner it can have any number of administrators.

To add a new administrator to an organization go to the User section of the Organization Settings. You'll find in button gorup in the top right a button to add administrators.

![1728263011933](image/README/1728263011933.png)

![1728263198009](image/README/1728263198009.png)

Enter in your admin's email and they will be sent a link to accept the invitation.

Unlike a regular organization user, an admin user will need to confirm their email before they are able to sign in and perform any actions on the orgnization or backlogs.

### Removing Users

If you find yourself needing to remove a user from a backlog for whatever reason you can accomplish this easily.

All you need to do is select a user from the User Management section then click the elipses at the top and you will see the remove user option. This performs a soft delete on the user disallowing them to rejoin the organization after removal.

![1728353625542](image/README/1728353625542.png)

### Readding Deleted Users

To readd a deleted user you can use one of two methods. 

If it is an Admin you're trying to add back simply use the Add Admin button. This will not require them to accept the invitation again via an email link.

If it is a regular user you're looking to add you can use the Upload Users functionality to readd them. They will also not be required to accep the invitation via email.
