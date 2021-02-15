<#setting time_zone='UTC'>
<html>
    <body style="font-family: Calibri,sans-serif,Arial; font-size: small">

    <p>Dear ${user.preferredDisplayName},</p>
    <p>The size of <a href="${collection.portalUrl}/metadata">collection ${collection.title}</a>
        has reached ${(100 * collection.quotaRatio)?int}% of its total capacity. You will not be able to add
        anymore files when the quota limit has been reached.</p>
    <p>Your research administrator can increase the quota limit, or free up space by deleting files.</p>

    <p>Kind regards,</p>
    <p>${senderName}</p>

    </body>
</html>