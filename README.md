## HI Fluency Academy
---
<div class="container">

# Documentation

</div>
This challenge is to Design and implement a simple subset of a Domain Name System.

### How to install:

The code for this project is in my [git](https://git.arturgomes.com.br/arturgomes/teste-tecnico---fluency-academy).  
So, you will need to:

    - Clone the repo, git clone https://git.arturgomes.com.br/arturgomes/teste-tecnico---fluency-academy.git
    - Make sure that you have docker and docker-compose installed on your system
    - To create the dockers and install all dependencies inside the folder run: sudo make server.install
    - To run just type: sudo make server.daemon
    - Now you have the server running on localhost:5300
    - In names.db you will have the hosts to add.
    - Enjoy.

### Tests:

    - To run the DIG test just type: sudo make server.test

### Issues:

    - There is no implementation for AAAA records

### Logs:

    - Server log: tail -f dns-server.log