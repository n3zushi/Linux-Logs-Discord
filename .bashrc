#!/bin/bash

webhook_url="https://discord.com/api/webhooks/"

function log_command {
    current_date=$(date +"%d-%m %T")
    ip_address=$(echo $SSH_CONNECTION | awk '{print $1}')

    if [[ " ${whitelist[@]} " =~ " $ip_address " ]]; then
        # IP in the whitelist
        message="✅ Authorized IP: $ip_address"
    else
        # IP not authorized
        message="❌ Unauthorized IP: $ip_address - @everyone"
    fi

    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"**Command executed**\n\n**Date and Time:** $current_date\n$message\n**Command:** \`\`\`$BASH_COMMAND\`\`\`\"}" $webhook_url
}

trap 'log_command' DEBUG
