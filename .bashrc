#!/bin/bash

webhook_url="https://discord.com/api/webhooks/1174398437060522095/pepOwSg-njhvhxn3-Prag5kgJBZwUSLkqno03kzogB4FK2XcE7roesUyk2_yetEE5Oee"

function log_command {
    current_date=$(date +"%d-%m %T")
    ip_address=$(echo $SSH_CONNECTION | awk '{print $1}')

    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"**Commande exécutée**\n\n**Date et Heure:** $current_date\n**IP:** $ip_address\n**Commande:** \`\`\`$BASH_COMMAND\`\`\`\"}" $webhook_url
}

trap 'log_command' DEBUG
