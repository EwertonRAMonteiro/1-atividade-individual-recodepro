Algoritmo "travel agency system"
// Disciplina   : Module 2 - Introduction to the World of Computing,
//                Computer Programming and Front-end Fundamentals.

// teacher: Artur Brandt

// Description : menu to register data about clients, travels destination
//              and their database query.

// Author: Rubí

arquivo "jh.txt"

Var

   clients: vetor [1..30,1..11] de caractere                            // variavel to vector to colect data of clients
   x, y, number_times_clients: inteiro                                                        //variable to matrix to data of clients
   rotulate_data_clients: vetor [1..11] de caractere                     //rotulate to consult datas

   destination: vetor [1..30,1..5] de caractere                         //variable to vetor to colect data of destination
   l, c, number_times_destination : inteiro                                                       //variable to matrix to data of destination
   rotulate_data_destination: vetor [1..5] de caractere

   chosen_option, back_menu: inteiro
   crn, drn: inteiro
                                                      //variable to access the fu



Inicio

   rotulate_data_clients[1] <- "Clients registration number (CRN): "
   rotulate_data_clients[2] <- "Full name: "
   rotulate_data_clients[3] <- "Birth date: "
   rotulate_data_clients[4] <- "Andress: "
   rotulate_data_clients[5] <- "Neighborhood: "
   rotulate_data_clients[6] <- "City: "
   rotulate_data_clients[7] <- "State: "
   rotulate_data_clients[8] <- "Country: "
   rotulate_data_clients[9] <- "Telephone number: "
   rotulate_data_clients[10] <- "E-mail: "
   rotulate_data_clients[11] <- "ID Number: "

   rotulate_data_destination[1] <- "Destination registration number (DRN):"
   rotulate_data_destination[2] <- "Country: "
   rotulate_data_destination[3] <- "State: "
   rotulate_data_destination[4] <- "City: "
   rotulate_data_destination[5] <- "Neighborhood: "

   enquanto verdadeiro faca
      escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")   // function to display information on the screen in a personalized way (line 21 to 27).
      escreval("-      Client Registration System, Destinations         -")
      escreval("-                 and Consultations                     -")
      escreval("-                                                       -")
      escreval("-  Chooce one options betwenn 1 to 5 from list bellow   -")
      escreval("-              (Enter only one number)                  -")
      escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
      escreval()
      escreval("Press ESC to exit system")
      escreval()
      escreval("   1. - Register clients")     //function to display information on the screen of on menu (line 29 to 34).
      escreval("   2. - Register destinations")
      escreval("   3. - List of registered clients ")
      escreval("   4. - List of registered destinations")
      escreval("   5. - Search specific clien")
      escreval("   6. - Search specific destination")
      escreval()
      escreva("Enter here the number chosen:")
      leia(chosen_option)


      escolha chosen_option
              caso 1
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-     How many clients do you want to register?         -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   leia(number_times_clients)
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-              Fill in clients data below               -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para x de 1 ate number_times_clients faca
                        para y de 1 ate 11 faca
                             escreva(rotulate_data_clients[y])
                             leia(clients[x,y])
                        fimpara
                        escreval()

                   fimpara
                   escreval("Client(s) registered successfully")
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(back_menu)
                   limpatela

              Caso 2
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-     How many destination do you want to register?     -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   leia(number_times_destination)
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-                                                       -")
                   escreval("-            Fill in destination data below             -")
                   escreval("-                                                       -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")

                   para l de 1 ate number_times_destination faca
                        para c de 1 ate 5 faca
                             escreva(rotulate_data_destination[c])
                             leia(destination[l,c])
                        fimpara
                   escreval()
                   fimpara
                   escreval("Destination(s) registered successfully")
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(back_menu)
                   limpatela

              caso 3
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-              List of registered clients               -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para x de 1 ate number_times_clients faca
                      para y de 1 ate 11 faca
                           escreva(rotulate_data_clients[y])
                           escreval(clients[x,y])
                      fimpara
                      escreval()
                   fimpara
                   escreval("There are ", x, " clients cadastre")
                   escreval("Enter any key to back to menu")
                   leia(back_menu)
                   limpatela
                   
              caso 4
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-            List of registered destinations            -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   para l de 1 ate number_times_destination faca
                      para c de 1 ate 5 faca
                           escreval
                           escreva(rotulate_data_destination[c])
                           escreval(clients[l,c])
                      fimpara
                      escreval()
                   fimpara
                   escreval("There are ", l, " destination cadastre")
                   escreval("Enter any key to back to menu")
                   leia(back_menu)
                   limpatela

              caso 5
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-            Search specific client                     -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval()
                   escreva("Enter CRN: ")
                   leia(crn)
                   limpatela
                   para x de crn ate crn faca
                        para y de 1 ate 11 faca
                             escreva(rotulate_data_clients[y])
                             escreval(clients[crn,y])
                        fimpara
                   fimpara
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(back_menu)
              caso 6
                   limpatela
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval("-            Search specific destination                     -")
                   escreval("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                   escreval()
                   escreva("Enter DRN: ")
                   leia(drn)
                   limpatela
                   para l de drn ate drn faca
                        para c de 1 ate 5 faca
                             escreva(rotulate_data_destination[l])
                             escreval(destination[drn,l])
                        fimpara
                   fimpara
                   escreval()
                   escreval("Enter any key to back to menu")
                   leia(back_menu)



      fimescolha



   fimenquanto

Fimalgoritmo