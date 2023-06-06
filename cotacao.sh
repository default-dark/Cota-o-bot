while true; do 
  clear
  echo -e """
             ┈╭━━━━━━━━━━━╮┈
             ┈┃╭━━━╮┊╭━━━╮┃┈
             ╭┫┃┈▇┈┃┊┃┈▇┈┃┣╮
             ┃┃╰━━━╯┊╰━━━╯┃┃
             ╰┫╭━╮╰━━━╯╭━╮┣╯
             ┈┃┃┣┳┳┳┳┳┳┳┫┃┃┈
             ┈┃┃╰┻┻┻┻┻┻┻╯┃┃┈
             ┈╰━━━━━━━━━━━╯┈
             para extrair o outro valor euro,bitcoin, apenas tire outras tec # 
             caso não deseje extrai algum valor apenas comente o codigo com a #
             """  
             echo -e "" 
             echo -e " █▀▀▄ █▀▀█ ▀▀█▀▀ ░░ █▀▀ █▀▀█ ▀▀█▀▀ █▀▀█ █▀▀ █▀▀█ █▀▀█  " 
             echo -e " █▀▀▄ █░░█ ░░█░░ ▀▀ █░░ █░░█ ░░█░░ █▄▄█ █░░ █▄▄█ █░░█  " 
             echo -e " ▀▀▀░ ▀▀▀▀ ░░▀░░ ░░ ▀▀▀ ▀▀▀▀ ░░▀░░ ▀░░▀ ▀▀▀ ▀░░▀ ▀▀▀▀  " 
             function dolar(){
               dolar1=$(curl -X GET  https://economia.awesomeapi.com.br/last/USD-BRL|jq ".USDBRL.low" |sed 's/"//g')
                porcentagem=$("termux-battery-status" |jq ".percentage" |sed 's/"//g')
                termux-tts-speak -r 0.7 extraindo o valor do dólar atualmente
                termux-toast -c black $dolar1 
                termux-vibrate 
                termux-notification -c $dolar1 -t "dolar atual e bateria" --image-path /data/data/com.termux/files/home/cotacao/dólar.jpg
                termux-tts-speak -r 0.7  sua bateria está em $porcentagem %
                sleep 300
                 }
                 dolar


              #function euro(){
                #euro=$(curl -X GET https://economia.awesomeapi.com.br/last/EUR-BRL |jq ".EURBRL.low" |sed 's/"//g')
                #porcentagem=$("termux-battery-status" |jq ".percentage" |sed 's/"//g')
                #termux-tts-speak -r 0.9 extraindo o valor do euro atual 
                #termux-toast -c black $euro 
                #termux-vibrate 
                #termux-notification -c $euro -t "euro atual" --image-path /data/data/com.termux/files/home/cotacao/euro.jpg
                #termux-tts-speak -r 0.7 sua bateria está em $porcentagem%
                 #}
                  #euro 

              #function bitcoin(){
                #bitcoin=$(curl -X GET https://economia.awesomeapi.com.br/last/BTC-BRL|jq ".BTCBRL.low" |sed 's/"//g')
                #porcentagem=$("termux-battery-status" |jq ".percentage" |sed 's/"//g')
                #termux-tts-speak -r 0.7 extraindo o valor do bitcoin atualmente
                #termux-toast -c black $bitcoin 
                #termux-vibrate 
                #termux-notification -c $bitcoin -t "bitcoin atual" --image-path /data/data/com.termux/files/home/cotacao/bitcoin.webp 
                #termux-tts-speak -r 0.7 sua bateria está em $porcentagem%
                #}
                #bitcoin
            done

