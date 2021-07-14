# Sp2battlebot Docker Version [Telegram]

Copyright @ [JoneWang](https://github.com/JoneWang/sp2battlebot) 

Step 1 

` touch ./sp2battle.db `

Step 2 
```
docker run -d \
  --name sp2battlebot \
  -v <file to sp2battle.db>:/sp2battlebot/sp2battle.db \
  -v <patch to logs>:/sp2battlebot/logs
  -e TELEGRAM_BOT_TOKEN="Bot token" \
  -e ADMINISTRATOR_USERNAME="@Bot_administrator_username" \
  ennawyang/sp2battlebot
```
