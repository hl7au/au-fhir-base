### Usage Notes
An instantiation of Location may form part of defining a mobile or remotely delivered service. As part of defining a mobile service, Location should have:
* mode='kind'
* type='MOBL'

Additionally a Location for a mobile service should instantiate additional instances of type to indicate the service is tailored for delivery in these kinds of locations (e.g. 'AMB', 'COMM', 'PTRES', 'SCHOOL', or 'WORK').

As part of defining a remotely delivered service, Location should have:
* mode='kind'
* type='VI'
* physicalType='vi'
