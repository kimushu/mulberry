#ifndef _POSIXVFS_CONFIG_H_
#define _POSIXVFS_CONFIG_H_

#ifdef __cplusplus
extern "C" {
#endif

#define POSIXVFS_MAX_FDS                  8

#define POSIXVFS_FUNCTION_OPEN            1
#define POSIXVFS_FUNCTION_CLOSE           1
#define POSIXVFS_FUNCTION_READ            1
#define POSIXVFS_FUNCTION_WRITE           1
#define POSIXVFS_FUNCTION_LSEEK           1
#define POSIXVFS_FUNCTION_FSTAT           1
#define POSIXVFS_FUNCTION_IOCTL           1

#define POSIXVFS_DEVICE_NULL              0
#define POSIXVFS_DEVICE_ZERO              0
#define POSIXVFS_DEVICE_USBCDC            1

#define POSIXVFS_STDIN_USBCDC             1
#define POSIXVFS_STDIN_DEVICE             "/dev/usb_cdc"
#define POSIXVFS_STDOUT_USBCDC            1
#define POSIXVFS_STDOUT_DEVICE            "/dev/usb_cdc"
#define POSIXVFS_STDERR_USBCDC            1
#define POSIXVFS_STDERR_DEVICE            "/dev/usb_cdc"

#define POSIXVFS_USBCDC_DEVICE_INDEX      0
#define POSIXVFS_USBCDC_DEVICE_CDC_INDEX  0
#define POSIXVFS_USBCDC_BAUDRATE          921600

#ifdef __cplusplus
}   /* extern "C" */
#endif

#endif  /* !_POSIXVFS_CONFIG_H_ */