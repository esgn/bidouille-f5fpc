Mettre le script `vpn_connect.sh` dans l'emmplacement de son choix (`/home/username` typiquement) et rajouter les lignes suivantes dans le crontab 

```
# m h  dom mon dow   command
  * *   *   *   *    bash /home/username/vpn_connect.sh >/dev/null 2>&1
  * *   *   *   *    ( sleep 15 ; bash /home/username/vpn_connect.sh >/dev/null 2>&1 )
  * *   *   *   *    ( sleep 30 ; bash /home/username/vpn_connect.sh >/dev/null 2>&1 )
  * *   *   *   *    ( sleep 45 : bash /home/username/vpn_connect.sh >/dev/null 2>&1 )
```

