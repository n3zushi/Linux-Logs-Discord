# Command Logger with Discord Webhook

This Bash script allows tracking and notifying each command executed on a Linux machine using a Discord webhook.

## Features

- Records the time and date of each command.
- Captures the IP address of the connection for SSH connections.
- Sends a structured notification to a Discord channel via a webhook.

## Configuration

1. **Add the script to the shell profile file:**

   Add the script content to the user's shell profile file (e.g., `.bashrc` or `.bash_profile`).

   ```bash
   nano ~/.bashrc
Copy the script content and save the changes.

Configure the Discord webhook:

Replace https://discordapp.com/api/webhooks/ with your Discord webhook URL in the script.

2. **Configure the IP whitelist (Optional):**

```bash
whitelist=("192.168.1.1" "192.168.1.2")
```

Edit the script to include the IP addresses you want to whitelist. Look for the whitelist array in the script and add the desired IP addresses.

3. **Restart the shell:**

Restart your shell session or open a new terminal.

Discord Notification Structure

Command executed

```
Date and Time: [date and time]
IP: [IP address]
Command: [executed command]
```
Example
A typical notification will look like this:


Command executed
```
Date and Time: 15-11 10:30:45
IP: 192.168.1.100
Command: ls -l
```
