Microsoft Defender for Storage is an Azure-native solution offering an advanced layer of intelligence for threat detection and mitigation in storage accounts, powered by Microsoft Threat Intelligence, Microsoft Defender Antimalware technologies, and Sensitive Data Discovery. With protection for Azure Blob Storage, Azure Files, and Azure Data Lake Storage services, it provides a comprehensive alert suite, near real-time malware scanning (add-on), and sensitive data threat detection (no extra cost), allowing quick detection, triage, and response to potential security threats with contextual information. It helps prevent the three major impacts on your data and workload: malicious file uploads, sensitive data exfiltration, and data corruption.

With Microsoft Defender for Storage, organizations can customize their protection and enforce consistent security policies by enabling it on subscriptions and storage accounts with granular control and flexibility.

> [!TIP]
> If you already have the Defender for Storage (classic) enabled and want to access the new security features and pricing, you'll need to [migrate to the new pricing plan](/azure/defender-for-cloud/defender-for-storage-introduction).

## Availability<br>

| **Aspect**                      | **Details**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Release state:                  | General Availability (GA)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Feature availability:           | - Activity monitoring (security alerts) – General Availability (GA)<br>\- Malware scanning – General Availability (GA)<br>\- Sensitive data threat detection (Sensitive Data Discovery) – Preview<br><br>Visit the pricing page to learn more.                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Required roles and permissions: | For malware scanning and sensitive data threat detection at subscription and storage account levels, you need Owner roles (subscription owner/storage account owner) or specific roles with corresponding data actions. To enable Activity Monitoring, you need 'Security Admin' permissions. Read more about the required permissions.                                                                                                                                                                                                                                                                                                                                                                                      |
| Clouds:                         | :::image type="content" source="https://learn.microsoft.com/azure/defender-for-cloud/media/icons/yes-icon.png" alt-text="Icon of Yes.":::  Azure Commercial clouds\*<br>:::image type="content" source="https://learn.microsoft.com/azure/defender-for-cloud/media/icons/no-icon.png" alt-text="Icon of No.":::  Azure Government (only activity monitoring support on the classic plan)<br>:::image type="content" source="https://learn.microsoft.com/azure/defender-for-cloud/media/icons/no-icon.png" alt-text="Icon of No.":::  Azure China 21Vianet<br>:::image type="content" source="https://learn.microsoft.com/azure/defender-for-cloud/media/icons/no-icon.png" alt-text="Icon of No.":::  Connected AWS accounts |

Azure Domain Name System (DNS) Zone is not supported for malware scanning and sensitive data threat detection.

## Prerequisites for malware scanning<br>

To enable and configure malware scanning, you must have Owner roles (such as Subscription Owner or Storage Account Owner) or specific roles with the necessary data actions.

## Set up and configure Microsoft Defender for Storage

To enable and configure Microsoft Defender for Storage and ensure maximum protection and cost optimization, the following configuration options are available:

 -  Enable/disable Microsoft Defender for Storage at the subscription and storage account levels.<br>
 -  Enable/disable the malware scanning or sensitive data threat detection configurable features.
 -  Set a monthly cap ("capping") on the malware scanning per storage account per month to control costs (default value is 5,000GB).
 -  Configure methods to set up response to malware scanning results.
 -  Configure methods for saving malware scanning results logging.

> [!IMPORTANT]
> The Malware Scanning feature has advanced configurations to help security teams support different workflows and requirements.<br>

 -  Override subscription-level settings to configure specific storage accounts with custom configurations that differ from the settings configured at the subscription level

There are several ways to enable and configure Defender for Storage: using the Azure built-in policy (the recommended method), programmatically using Infrastructure as Code templates, including Terraform, Bicep, and Azure Resource Manager (ARM) templates, using the Azure portal, or directly with the REST API.

Enabling Defender for Storage via a policy is recommended because it facilitates enablement at scale and ensures that a consistent security policy is applied across all existing and future storage accounts within the defined scope (such as entire management groups). This keeps the storage accounts protected with Defender for Storage according to the organization's defined configuration.

> [!NOTE]
> To prevent migrating back to the legacy classic plan, make sure to disable the old Defender for Storage policies. Look for and disable policies named `Configure Azure Defender for Storage to be enabled`, Azure Defender for Storage should be enabled, or `Configure Microsoft Defender for Storage to be enabled (per-storage account plan)` or deny policies that prevent the disablement of the classic plan.<br>
