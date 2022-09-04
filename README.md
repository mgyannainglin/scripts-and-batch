## Renaming the computers' name via Domain Controller

### I know "you're already know how to rename your computer name"
###   But how about for ***thousnad of computers***? Will you do it manually?

### Here is a powershell script that you can use and reference.

### Prerequisite
    1. All the domain clients must be turn off windows firewall domain profile setting. (We can do it via group policy for that) below is the how to turn off windows domain firewall through Group Policy. You can import [this](./domain-profile-off-GPO.wfw) policy to GPO as well.
    ```
      group policy management > Create a GPO in this domain and Link it here >
    ```
    And then
    ```
    Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Windows Defender Firewall with Advanced Security
    ```
    2. Log off the computers or reboot after pushing the GPO update.

### Run the powershell script
    1. change the **csvfile** path with your computers list csv file