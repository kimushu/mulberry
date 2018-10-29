#ifndef SPIFFS_CONFIG_H_
#define SPIFFS_CONFIG_H_

// compile time switches

#define SPIFFS_DBG(_f, ...)         do {  } while (0)
#define SPIFFS_GC_DBG(_f, ...)      do {  } while (0)
#define SPIFFS_CACHE_DBG(_f, ...)   do {  } while (0)
#define SPIFFS_CHECK_DBG(_f, ...)   do {  } while (0)
#define SPIFFS_API_DBG(_f, ...)     do {  } while (0)

#define _SPIPRIi                    "%d"
#define _SPIPRIad                   "%08x"
#define _SPIPRIbl                   "%04x"
#define _SPIPRIpg                   "%04x"
#define _SPIPRIsp                   "%04x"
#define _SPIPRIfd                   "%d"
#define _SPIPRIid                   "%04x"
#define _SPIPRIfl                   "%02x"

#define SPIFFS_BUFFER_HELP          0
#define SPIFFS_CACHE                1
#define SPIFFS_CACHE_WR             1
#define SPIFFS_CACHE_STATS          1

#define SPIFFS_PAGE_CHECK           1

#define SPIFFS_GC_MAX_RUNS          (5)
#define SPIFFS_GC_STATS             1
#define SPIFFS_GC_HEUR_W_DELET      (5)
#define SPIFFS_GC_HEUR_W_USED       (-1)
#define SPIFFS_GC_HEUR_W_ERASE_AGE  (50)

#define SPIFFS_OBJ_NAME_LEN         (32)
#define SPIFFS_OBJ_META_LEN         (0)
#define SPIFFS_COPY_BUFFER_STACK    (64)
#define SPIFFS_USE_MAGIC            0
#define SPIFFS_LOCK(fs)             OSAL_MUTEX_Lock(fs)
#define SPIFFS_UNLOCK(fs)           OSAL_MUTEX_Unlock(fs)

#define SPIFFS_SINGLETON            1

#define SPIFFS_CFG_PHYS_SZ(x)       (1*1048576)
#define SPIFFS_CFG_PHYS_ERASE_SZ(x) (16*1024)
#define SPIFFS_CFG_PHYS_ADDR(x)     (1*1048576)
#define SPIFFS_CFG_LOG_PAGE_SZ(x)   (256*1)
#define SPIFFS_CFG_LOG_BLOCK_SZ(x)  (64*1024)

#define SPIFFS_ALIGNED_OBJECT_INDEX_TABLES  0
#define SPIFFS_HAL_CALLBACK_EXTRA   0
#define SPIFFS_FILEHDL_OFFSET       0
#define SPIFFS_READ_ONLY            0
#define SPIFFS_TEMPORAL_FD_CACHE    1
#define SPIFFS_TEMPORAL_CACHE_HIT_SCORE (4)
#define SPIFFS_IX_MAP               1
#define SPIFFS_NO_BLIND_WRITES      0

#define SPIFFS_TEST_VISUALISATION   1
#define spiffs_printf(...)          
#define SPIFFS_TEST_VIS_FREE_STR    "_"
#define SPIFFS_TEST_VIS_DELE_STR    "/"
#define SPIFFS_TEST_VIS_INDX_STR(id)    "i"
#define SPIFFS_TEST_VIS_DATA_STR(id)    "d"

typedef uint8_t spiffs_block_ix;
typedef uint16_t spiffs_page_ix;

#endif  /* SPIFFS_CONFIG_H_ */
