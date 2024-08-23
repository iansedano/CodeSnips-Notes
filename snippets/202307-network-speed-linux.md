- To print a log of the wireless signal strengths with timestamps to the console, you can use a `while` loop:

    ```bash
    while true; do 
        echo $(date) " : " $(nmcli -f IN-USE,SIGNAL dev wifi | grep '^*' | awk '{print $2}')
        sleep 1
    done
    ```

- If a computer is connected to both a wired and a wireless network, it generally uses one or the other for a particular data stream, not both simultaneously. The system typically prefers the connection with the lower metric, which is usually the wired connection.

- To perform a speed test similar to online speed tests, you can use `speedtest-cli`:
