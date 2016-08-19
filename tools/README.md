I was experiencing a lot of issues with BoxStarter performing unnecessary
restarts, these stem from the fact that powershell seems to add a bunch of
pending file renames to the registry that should be performed on boot.
Boxstarter picks these up and then performs a reboot, but we loop since we can
never get past that step as each package index refresh causes new file renames.

Get-PendingReboot is a useful script to help debug these issues
