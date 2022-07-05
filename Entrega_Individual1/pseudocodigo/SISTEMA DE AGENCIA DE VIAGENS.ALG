Algoritmo "travel agency system"
// Disciplina   : Module 2 - Introduction to the World of Computing,
//                Computer Programming and Front-end Fundamentals.

// teacher: Artur Brandt

// Description : menu to register data about clients, travels destination
//              and their database query.

// Author: Rubí

Var
   // var to clients and rotulation
   clients: vetor [1..30,1..11] de caractere
   rotulateDataClients: vetor [1..11] de caractere
   x, y, numberTimesClients: inteiro

   // var to destination and rotulation
   destination: vetor [1..30,1..5] de caractere
   rotulateDataDestination: vetor [1..5] de caractere
   l, c, numberTimesDestination : inteiro

   // var to choice and system navegation
   chosenOption, backMenu: inteiro
   
   // var to identifiction clients and destination
   crn, drn: inteiro
   
Inicio
   // rotulation to clients vetor
   rotulateDataClients[1] <- "Clients registration number (CRN): "
   rotulateDataClients[2] <- "Full name: "
   rotulateDataClients[3] <- "Birth date: "
   rotulateDataClients[4] <- "Andress: "
   rotulateDataClients[5] <- "Neighborhood: "
   rotulateDataClients[6] <- "City: "
   rotulateDataClients[7] <- "State: "
   rotulateDataClients[8] <- "Country: "
   rotulateDataClients[9] <- "Telephone number: "
   rotulateDataClients[10] <- "E-mail: "
   rotulateDataClients[11] <- "ID Number: "

   // rotulation to destination vetor
   
   rotulateDataDestination[1] <- "Destination registration number (DRN):"
   rotulateDataDestination[2] <- "Country: "
   rotulateDataDestination[3] <- "State: "
   rotulateDataDestination[4] <- "City: "
   rotulateDataDestination[5] <- "Neighborhood: "

   enquanto verdadeiro faca
   //style to menu  system
      escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
      escreval("-                                                       -")
      escreval("-      Client Registration System, Destinations         -")
      escreval("-                 and Consultations                     -")
      escreval("-                                                       -")
      escreval("-  Chooce one options betwenn 1 to 7 from list bellow   -")
      escreval("-              (Enter only one number)                  -")
      escreval("-                                                       -")
      escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
      escreval()
      escreval("Press ESC to exit system")
      escreval()
      escreval("   1. - Guidelines for first access")
      escreval("   2. - Register clients")
      escreval("   3. - Register destinations")
      escreval("   4. - List of registered clients ")
      escreval("   5. - List of registered destinations")
      escreval("   6. - Search specific clien")
      escreval("   7. - Search specific destination")
      escreval()
      escreva("Enter here the number chosen:")
      leia(chosenOption)
      
   //loop

         escolha chosenOption
              caso 1
              limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-    1. CNR - you need to input in numeric order        -")
                   escreval("-       order crescent.                                 -")
                   escreval("-                                                       -")
                   escreval("-    2. DNR - you need to input in numeric order        -")
                   escreval("-       order crescent.                                 -")
                   escreval("-                                                       -")
                   escreval("-    3. you can enter any key to back to menu,          -")
                   escreval("-       after you finish to input the destination,      -")
                   escreval("-       clients or consultat information.               -")
                   escreval("-                                                       -")
                   escreval("-    4. Only enter numbers to choose a menu             -")
                   escreval("-       option, unless the system will back to          -")
                   escreval("-       menu.                                           -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   limpatela

              
              caso 2
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-     How many clients do you want to register?         -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   leia(numberTimesClients)
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-              Fill in clients data below               -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para x de 1 ate numberTimesClients faca
                        para y de 1 ate 11 faca
                             escreva(rotulateDataClients[y])
                             leia(clients[x,y])
                        fimpara
                        escreval()
                   fimpara
                   escreval("Client(s) registered successfully")
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   limpatela

              caso 3
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-     How many destination do you want to register?     -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   leia(numberTimesDestination)
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-            Fill in destination data below             -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para l de 1 ate numberTimesDestination faca
                        para c de 1 ate 5 faca
                             escreva(rotulateDataDestination[c])
                             leia(destination[l,c])
                        fimpara
                   escreval()
                   fimpara
                   escreval("Destination(s) registered successfully")
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   limpatela
                   
              caso 4
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-              List of registered clients               -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para x de 1 ate numberTimesClients faca
                      para y de 1 ate 11 faca
                           escreva(rotulateDataClients[y])
                           escreval(clients[x,y])
                      fimpara
                   escreval()
                   fimpara
                   escreval("There are ", x, " clients cadastre")
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   limpatela
                   
              caso 5
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-            List of registered destinations            -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para l de 1 ate numberTimesDestination faca
                      para c de 1 ate 5 faca
                           escreval
                           escreva(rotulateDataDestination[c])
                           escreval(clients[l,c])
                      fimpara
                      escreval()
                   fimpara
                   escreval("There are ", l, " destination cadastre")
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   limpatela

              caso 6
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-              Search specific client                   -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval()
                   escreva("Enter CRN: ")
                   leia(crn)
                   limpatela
                   para x de crn ate crn faca
                        para y de 1 ate 11 faca
                             escreva(rotulateDataClients[y])
                             escreval(clients[crn,y])
                        fimpara
                   fimpara
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
                   
              caso 7
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-            Search specific destination                -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval()
                   escreva("Enter DRN: ")
                   leia(drn)
                   limpatela
                   para l de drn ate drn faca
                        para c de 1 ate 5 faca
                             escreva(rotulateDataDestination[c])
                             escreval(destination[drn,c])
                        fimpara
                   fimpara
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(backMenu)
      fimescolha
   fimenquanto
Fimalgoritmo