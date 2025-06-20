### Overview

Organizations have a range of configurable settings to support various needs.

Access your settings at `/_admin/_settings`. By default, you’ll land on the integrations page: `/_admin/_settings/_integrations`.

### Integrations
We offer a wide range of integrations to allow you push alerts and entire tickets to your particular ecosystem.

Integration-specific documentation is available for:

- [Github]()
- [Jira]()
- [Asana]()
- [Discord]()

### Api Key Settings
Located at `/_admin/_settings/_api`

This page allows you to generate an API key for use with your app. Available only on the **Business** tier and above.

### Webhooks
This page enables webhook configuration to receive real-time updates on your webserver.

Authorization is handled through webhook secrets sent in the **PublicBacklog-Secret** header.

On first save, a webhook secret is generated and shown once. Record it before leaving the page—it won’t be shown again unless regenerated, similar to the [API Key](/organizations/?id=api-key-settings).

You can regenerate the secret from this page. If a webhook exists, a **Regenerate** button will appear. Clicking it immediately invalidates the old secret. This may cause missed events during secret deployment, but PublicBacklog retries webhook events every 10 minutes, up to 5 times.

### Users
This page is where you can manage your users for your Organization. This includes adding admins to help with administrator or regular users to provide feedback.

You can learn more about the full capabilities of users in the [Organization Users](/organization-users/) documentation.

### Danger Zone

<div class="pb-warning">
    <i class="material-icons" style="font-size: 24px;">warning</i>
    <p style="margin-left: 10px;">
        This page in the Organization settings has long last impacts. Be careful when modifying these settings.
   </p> 
</div>

### Delete Organization

Only the Organization owner can delete an Organization. This restriction prevents unauthorized or accidental deletions.

Deleted Organizations cannot be restored by users. Data is retained for 30 days, after which it is permanently removed. To request reinstatement during this window, contact [support@publicbacklog.com]().


### Billing

Billing is handled per Organization. Upgrading applies to a specific Organization and unlocks paid features for that Organization and its Backlogs.

All payments are processed through [Stripe](https://www.stripe.com); no other payment methods are supported.

See the full feature list for each plan on our [Home Page](https://www.publicbacklog.com).