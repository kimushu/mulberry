#include "py/obj.h"
#include "py/mphal.h"

STATIC const mp_rom_map_elem_t module_machine_globals_table[] = {
    { MP_ROM_QSTR(MP_QSTR___name__), MP_ROM_QSTR(MP_QSTR_machine) },
};

STATIC MP_DEFINE_CONST_DICT(module_machine_globals, module_machine_globals_table);

const mp_obj_module_t mp_module_machine = {
    .base = { &mp_type_module },
    .globals = (mp_obj_dict_t*)&module_machine_globals,
};
