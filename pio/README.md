# MLIGHTER/firmware
It's built on top of [ATTinyCore](https://github.com/SpenceKonde/ATTinyCore).

## Prerequisites
- [PlatformIO](https://platformio.org/)

## Build
- `Ctrl+Alt+B` in your editor, or 
```bash
$ pio run
```

## Upload
- `Ctrl + Alt + U` in your editor, or 
```bash
$ pio run -t upload
```

### ISP port (J1) pin definitions:
| Pin No. | Board             |
| ------- | ----------------- |
| 1       | 5V                |
| 2       | AT_RESET(RST)     |
| 3       | AT_PB2_CLK(GPIO0) |
| 4       | GND               |
| 5       | AT_PB0_MISO       |
| 6       | AT_PB1_MOSI       |

### Acknowledgments
- Please refer to
  - [platformio.ini](./platformio.ini)
