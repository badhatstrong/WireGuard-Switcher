# WireGuard-Switcher

## PowerShell script that helps you to switch between local and home networks

Unfortunately, postUp and postDown doesn't work on Windows due to limied set of commands. If you're working on your own PC or maybe taking company laptop out, this script will help you switching your WireGuard' interface on and off depends on what network you're connected to.
All you need to know is the IP address of your office DHCP-server to adjust 6th string.

Also, you can add this script to startup with Task Scheduler.
