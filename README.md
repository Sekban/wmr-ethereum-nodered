# wmr-ethereum-nodered
Water Meter Reader is an Arduino, SWARM Distributed File System, and Ethereum integrated project using a Reflective Optical Sensor (CNY70) to monitor consumption on legacy water meters.

## Hardware Requirements

- Arduino UNO R3
- CNY70 Reflective Optical Sensor

### Hardware Setup

>**CNY70** Sensor pin to pin  connection

![](http://www.roboturka.com/wp-content/uploads/montaje-cny70.jpg)

Circuit diagram:  
>--------------- 

                                
         3V3         GND
          |           |
        White       Green      Colors shown are arbitrary wire colors
          |           |        that can be used to keep things straight
        |-o----   ----o-|      
        |      ---      |      Looking down on CNY70 with
        |               |        - emitter LED on left
        |   O       O   |        - detector phototransistor on right
        |               |        - pins on bottom connect as shown
        |      ---      |        
        |-o----   ----o-|      Lettering is on right vertical face   
          |           |          with indents as shown
          |           |
          |           ------ Pin 5
          |           |
       Purple        Red       
          |           |
       100 ohm      100 k Ohm      
          |           |
         GND         3V3
         
         
## Software Requirements

The smart contract implementation is done in Solidity v0.4.24. Remix IDE Online v0.6.3 is used to create the contract and deploy to local geth node through port ‘8000’. Geth v1.7.3 is used to communicate with the Ethereum network. Web3.js v0.19 is used to initiate calls to the deployed contract.

Application logic has been implemented using Node-RED v0.17.5. Libraries Web3, and Arduino are required for the flow to work correctly. We are using Standard Firmata Library to communicate with the sensor, which has been installed on the microcontroller through Arduino IDE.

### Installation Guide

// To be continued
