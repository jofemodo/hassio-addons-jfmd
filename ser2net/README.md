## Hass.io Add-on: ser2net

This add-on allows you to create a socket interface for your serial device for use in Home Assistant.

## Configuration

Default configuration:

```
{
  "serialDevice": "/dev/hidraw0",
  "baudRate": 2400,
  "port": 4001
}
```

### Option: `serialDevice`
The `serialDevice` option is the path to the serial device you want to create a socket for.

### Option: `baudRate`
The `baudRate` option is the baud rate in which your serial device operates on.

### Option: `port`
The `port` option is the port you would like the serial device to be listening at. Remember, if you change the port, be sure it is not already in use!

## Home Assistant Configuration
ser2net comes up on `local-ser2net`. When configuring a ser2sock device in Home Assistant, you will use that as your `host`.

## Known issues and limitations
* You may only create a socket interface for one serial device.

## License
[MIT](LICENSE)
