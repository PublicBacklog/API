### Generating API Key

<div class="pb-warning">
    <i class="material-icons" style="font-size: 24px;">warning</i>
    <p style="margin-left: 10px;">
        Handle your API key securely. It grants full access to your organization’s PublicBacklog endpoints. Store it in environment variables and manage it through your deployment process. Never expose it in client-side code.
   </p> 
</div>

API key generation is simple. The key is shown only once; it won't be visible after you leave the page. Record it immediately.

![1728447506363](image/README/1728447506363.png)

![1728447518063](image/README/1728447518063.png)

### Regenerating your API key

To change your API key, go to API Configuration in Organization Settings and click Generate New API Key. The process is the same as initial creation.

**This action immediately invalidates the previous API key.**

![1728447623161](image/README/1728447623161.png)

![1728447630246](image/README/1728447630246.png)

#### Examples

For examples on how to include your API key in requests head to the [Endpoints Documentation](/api/?id=public-backlog-api-documentation)