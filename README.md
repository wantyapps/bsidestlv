# BSIDESTLV

* The `challenge.c` file is for the 8080/tcp port.
* the port 9999/tcp seems interesting.
* http/https is the nginx. Noticed that it doesn't show nginx version in
  404.

## In challenge.c

* line 84, function return_loan(), scanf is insecure!
* https://stackoverflow.com/questions/43146375/why-is-scanf-always-returning-1
* if invest>312, risk is too high. line 136
* line 148!!!!!!!!

## Actual

* Any input is actually only integer! 
  example:
  ```c
  scanf("%d", &cmd);
  ```
  Any input that is not integer (ex. char) is crashing the connection
  ("bye bye!")
