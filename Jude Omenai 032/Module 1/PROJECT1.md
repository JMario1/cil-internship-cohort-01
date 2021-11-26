## TCP/IP Networking Model

This model is use in the computer networking world, it is similar to the OSI model. It defines how host devices can connect and commnuicate with each other without being concern with their individual architeture.
Unlike the OSI model of 7 layers the TCP/IP model consist of just 4 layers.

- Application
- Transport
- Internet
- Network Interface


***Application*** - This is the layer that is closer to user, it takes care of how the data send from the layers below it should be display to the user, be it an email or webpage this layer knows exactly how to handle such data.

***Transport*** - This is the layer directly below the application layer, it this layer that handles connection between devices and how data can be sent across the connection. It uses two main protocol to achieve this, the TCP and UDP protocols.

***Internet*** - This layer also referred to as the network layer ensure data sent across a network is properly routed to the right user, this layer makes use of the IP addressing to achieve this goal, as it important that user's data don't get mixed up.

***Network Interface*** - Also referred to as the network access layer, it is in charge of how physical devices are connected together, it combines the work of the physical and data link layers of the the OSI model. It deals with various cables that can be use to connect device, port interfaces and speed of data transfer.