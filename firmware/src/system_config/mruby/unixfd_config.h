#ifndef _UNIXFD_CONFIG_H_
#define _UNIXFD_CONFIG_H_

#ifdef __cplusplus
extern "C" {
#endif

#define UNIXFD_MAX_FDS                  8

#define UNIXFD_FUNCTION_OPEN            1
#define UNIXFD_FUNCTION_CLOSE           1
#define UNIXFD_FUNCTION_READ            1
#define UNIXFD_FUNCTION_WRITE           1
#define UNIXFD_FUNCTION_LSEEK           1
#define UNIXFD_FUNCTION_FSTAT           1
#define UNIXFD_FUNCTION_IOCTL           1

#define UNIXFD_DEVICE_NULL              0
#define UNIXFD_DEVICE_ZERO              0
#define UNIXFD_DEVICE_USBCDC            1

#define UNIXFD_STDIN_USBCDC             1
#define UNIXFD_STDIN_DEVICE             "/dev/usb_cdc"
#define UNIXFD_STDOUT_USBCDC            1
#define UNIXFD_STDOUT_DEVICE            "/dev/usb_cdc"
#define UNIXFD_STDERR_USBCDC            1
#define UNIXFD_STDERR_DEVICE            "/dev/usb_cdc"

#define UNIXFD_USBCDC_DEVICE_INDEX      0
#define UNIXFD_USBCDC_DEVICE_CDC_INDEX  0
#define UNIXFD_USBCDC_BAUDRATE          921600

#ifdef __cplusplus
}   /* extern "C" */
#endif

#endif  /* !_UNIXFD_CONFIG_H_ */