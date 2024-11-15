# KaylAzureAD

>- Kayl is a Blooded Bayonet for Firewall Throat Cutting. DNS THROATCUTTER

>- Basically a Firewall Execution, Bypasser, Attacks, etc.

## How to Use [Kayl](https://github.com/byt3n33dl3/KaylAzureAD)

```
usage: ./kayl -[u|l|b|g] VALUE|PATH|PATH|PATH [-p|--pl] PAYLOAD,..|PATH [--args]

optional arguments:
  -h, --help            show this help message and exit

mandatory arguments:
  arguments that have to be passed for the program to run

  -u URL, --url URL     Pass a single URL to detect the protection
  -l PATH, --list PATH, -f PATH, --file PATH
                        Pass a file containing URL's (one per line) to detect
                        the protection
  -b FILE-PATH, --burp FILE-PATH
                        Pass a Burp Suite request file to perform WAF
                        evaluation
  -g GOOGLER-JSON-FILE, --googler GOOGLER-JSON-FILE
                        Pass a JSON file from the Googler CMD line tool (IE
                        googler -n 100 --json >> googler.json)

request arguments:
  arguments that will control your requests

  --pa USER-AGENT       Provide your own personal agent to use it for the HTTP
                        requests
  --ra                  Use a random user-agent for the HTTP requests
                        (*default=kayl/2.0 (Language=2.7.10;
                        Platform=Darwin))
  -H HEADER=VALUE,HEADER:VALUE.., --headers HEADER=VALUE,HEADER:VALUE..
                        Add your own custom headers to the request. To use
                        multiple separate headers by comma. Your headers need
                        to be exact(IE: Set-Cookie=a345ddsswe,X-Forwarded-
                        For:127.0.0.1) (*default=None)
  --proxy PROXY         Provide a proxy to run behind in the format
                        type://address:port (IE socks5://10.54.127.4:1080)
                        (*default=None)
  --tor                 Use Tor as the proxy to run behind, must have Tor
                        installed (*default=False)
  --check-tor           Check your Tor connection (default=False)
  -p PAYLOADS, --payloads PAYLOADS
                        Provide your own payloads separated by a comma IE AND
                        1=1,AND 2=2
  --pl PAYLOAD-LIST-PATH
                        Provide a file containing a list of payloads 1 per
                        line
  --force-ssl           Force the assignment of HTTPS instead of HTTP while
                        processing (*default=HTTP unless otherwise specified
                        by URL)
  --throttle THROTTLE-TIME (seconds)
                        Provide a sleep time per request (*default=0)
  --timeout TIMEOUT     Control the timeout time of the requests (*default=15)
  -P, --post            Send a POST request (*default=GET)
  -D POST-STRING, --data POST-STRING
                        Send this data with the POST request (*default=random)
  -t threaded, --threads threaded
                        Send requests in parallel (specify number of threads
                        (*default=1)
  -tP CONFIGTORPORT, --tor-port CONFIGTORPORT
                        Change the port that Tor runs on (*default=9050)
  -T, --test            Test the connection to the website before starting
                        (*default=True)

encoding options:
  arguments that control the encoding of payloads

  -e PAYLOAD [TAMPER-SCRIPT-LOAD-PATH ...], --encode PAYLOAD [TAMPER-SCRIPT-LOAD-PATH ...]
                        Encode a provided payload using provided tamper
                        script(s) you are able to payy multiple tamper script
                        load paths to this argument and the payload will be
                        tampered as requested
  -el PATH TAMPER-SCRIPT-LOAD-PATH, --encode-list PATH TAMPER-SCRIPT-LOAD-PATH
                        Encode a file containing payloads (one per line) by
                        passing the path and load path, files can only encoded
                        using a single tamper script load path

output options:
  arguments that control how kayl handles output

  -F, --format          Format the output into a dict and display it
  -J, --json            Send the output to a JSON file
  -Y, --yaml            Send the output to a YAML file
  -C, --csv             Send the output to a CSV file
  --fingerprint         Save all fingerprints for further investigation
  --tamper-int INT      Control the amount of tampers that are displayed
                        (*default=5)
  --traffic FILENAME    store all HTTP traffic headers into a file of your
                        choice
  --force-file          Force the creation of a file even if there is no
                        protection identified
  -o DIR, --output DIR  Save a copy of the file to an arbitrary directory

database arguments:
  arguments that pertain to kayls database

  -c, --url-cache       Check against URL's that have already been cached into
                        the database before running them saves some time on
                        scanning multiple (*default=False)
  -uC, --view-url-cache
                        Display all the URL cache inside of the database, this
                        includes the netlock, tamper scripts, webserver, and
                        identified protections
  -pC, --payload-cache  View all payloads that have been cached inside of the
                        database
  -vC, --view-cache     View all the cache in the database, everything from
                        URLs to payloads
  --export FILE-TYPE    Export the already encoded payloads to a specified
                        file type and save them under the home directory

misc arguments:
  arguments that don't fit in any other category

  --verbose             Run in verbose mode (more output)
  --hide                Hide the banner during the run
  --update              Update kayl to the newest development version
  --save FILENAME       Save the encoded payloads into a file
  --skip                Skip checking for bypasses and just identify the
                        firewall
  --verify-num INT      Change the request amount to verify if there really is
                        not a WAF present(*default=5)
  -W, --determine-webserver
                        Attempt to determine what web server is running on the
                        backend (IE Apache, Nginx, etc.. *default=False)
  --wafs                Output a list of possible firewalls that can be
                        detected by kayl
  --tampers             Output a list of tamper script load paths with their
                        description
  -M, --mine            Pass this flag to mine XMR for you and the kayl
                        development team

```