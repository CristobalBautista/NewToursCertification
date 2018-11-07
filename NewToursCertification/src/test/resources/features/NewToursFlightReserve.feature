#Author: dcristobalbautista@hotmail.com
Feature: New Tours Flight Reservation
  As a New Tours customer
  I want to search for a flight in the New Tours webpage and reserve it

  @Reserve
  Scenario Outline: Do a flight reservation in the New Tours webpage
    Given that Diego logins into the New Tours page with his credentials
      | userName   | password   |
      | <userName> | <password> |
    When he searches for a flight with the next filters
      | tripType   | passCount         | fromPort         | fromMonth         | fromDay         | toPort         | toMonth        | toDay        | servClass       | airline   |
      | <tripType> | <passenger count> | <departure city> | <departure Month> | <departure Day> | <destiny Port> | <return Month> | <return Day> | <service class> | <airline> |
    And he selects the departure flight and the return flight
      | outFlight          | inFlight        |
      | <departure flight> | <return flight> |
    And he books the flight with the next personal information
      | passCount         | passFirst0          | passLast0          | pass_0_meal   | passFirst1          | passLast1          | pass_1_meal   | passFirst2          | passLast2          | pass_2_meal   | passFirst3          | passLast3          | pass_3_meal   | creditCard         | creditnumber         | cc_exp_dt_mn                   | cc_exp_dt_yr                  | cc_frst_name             | cc_mid_name               | cc_last_name            | billAddress1        | billAddress2        | billCity       | billState       | billZip               | billCountry       | delAddress1          | delAddress2          | delCity         | delState         | delZip                 | delCountry         |
      | <passenger count> | <first name pass 0> | <last name pass 0> | <meal pass 0> | <first name pass 1> | <last name pass 1> | <meal pass 1> | <first name pass 2> | <last name pass 2> | <meal pass 2> | <first name pass 3> | <last name pass 3> | <meal pass 3> | <credit card type> | <credit card number> | <credit card expiration month> | <credit card expiration year> | <credit card first name> | <credit card middle name> | <credit card last name> | <billing address 1> | <billing address 2> | <billing city> | <billing state> | <billing postal code> | <billing country> | <delivery address 1> | <delivery address 2> | <delivery city> | <delivery state> | <delivery postal code> | <delivery country> |
    Then he should see in the screen the flight confirmation message

    Examples: 
      | userName           | password    | tripType   | passenger count | departure city | departure Month | departure Day | destiny Port | return Month | return Day | service class | airline          | departure flight        | return flight           | first name pass 0 | last name pass 0 | meal pass 0 | first name pass 1 | last name pass 1 | meal pass 1   | first name pass 2 | last name pass 2 | meal pass 2 | first name pass 3 | last name pass 3 | meal pass 3 | credit card type | credit card number | credit card expiration month | credit card expiration year | credit card first name | credit card middle name | credit card last name | billing address 1 | billing address 2 | billing city | billing state | billing postal code | billing country | delivery address 1 | delivery address 2 | delivery city | delivery state | delivery postal code | delivery country |
      | cristobal.bautista | casemiro123 | Round Trip |               4 | New York       | October         |            22 | New York     | December     |         11 | First Class   | Unified Airlines | Blue Skies Airlines 361 | Blue Skies Airlines 631 | Diego             | Bautista         | Vegetarian  | Rajesh            | Kootrap          | No preference | Passenger 3       | Last name 3      | Low Sodium  | Ultimo pasajero   | Ultimo apellido  | Muslim      | Diners Club      |           12431212 |                           11 |                        2007 | Diego                  | Cristobal               | Cortes                |                   | Calle 12 34-21    | Campoalegre  | ANTIOQUIA     |                     | UGANDA          | Calle 45 41-41     |                    | BOGOTA        | BOYACA         |                      | Jersey           |
      | cristobal.bautista | casemiro123 | One Way    |               2 | Portland       | January         |            15 | London       | June         |         22 | Business Class | Pangea Airlines  | Unified Airlines 563    | Pangea Airlines 652     | Alejandro         | Guerrero         | Hindu       | Manuel            | Sebastian        | Bland         | Pasajero 3        | Apellido 3       |             |                   |                  |             | Discover         |           12431212 |                           01 |                        2002 | Andres                 | Felipe                  | Jacome                | Calle 12 34-21    |                   | Campoalegre  | CHOCO         |                     | Peru            | Cra 53 12a-23      |                    | Palmira       | CALI           |                      | Tunisia          |
