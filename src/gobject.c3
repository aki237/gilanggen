
///START MODULE gobject
module gobject;

import glib;


enum BindingFlags : int (inline int s) {
  BIDIRECTIONAL = 1,
  DEFAULT = 0,
  INVERT_BOOLEAN = 4,
  SYNC_CREATE = 2,
}

enum ConnectFlags : int (inline int s) {
  AFTER = 1,
  DEFAULT = 0,
  SWAPPED = 2,
}

enum IOCondition : int (inline int s) {
  ERR = 8,
  HUP = 16,
  IN = 1,
  NVAL = 32,
  OUT = 4,
  PRI = 2,
}

enum ParamFlags : long (inline long s) {
  CONSTRUCT = 4,
  CONSTRUCT_ONLY = 8,
  DEPRECATED = 2147483648,
  EXPLICIT_NOTIFY = 1073741824,
  LAX_VALIDATION = 16,
  PRIVATE = 32,
  READABLE = 1,
  READWRITE = 3,
  STATIC_BLURB = 128,
  STATIC_NAME = 32,
  STATIC_NICK = 64,
  WRITABLE = 2,
}

enum SignalFlags : int (inline int s) {
  ACCUMULATOR_FIRST_RUN = 131072,
  ACTION = 32,
  DEPRECATED = 256,
  DETAILED = 16,
  MUST_COLLECT = 128,
  NO_HOOKS = 64,
  NO_RECURSE = 8,
  RUN_CLEANUP = 4,
  RUN_FIRST = 1,
  RUN_LAST = 2,
}

enum SignalMatchType : int (inline int s) {
  CLOSURE = 4,
  DATA = 16,
  DETAIL = 2,
  FUNC = 8,
  ID = 1,
  UNBLOCKED = 32,
}

enum TypeDebugFlags : int (inline int s) {
  INSTANCE_COUNT = 4,
  MASK = 7,
  NONE = 0,
  OBJECTS = 1,
  SIGNALS = 2,
}

enum TypeFlags : int (inline int s) {
  ABSTRACT = 16,
  DEPRECATED = 128,
  FINAL = 64,
  NONE = 0,
  VALUE_ABSTRACT = 32,
}

enum TypeFundamentalFlags : int (inline int s) {
  CLASSED = 1,
  DEEP_DERIVABLE = 8,
  DERIVABLE = 4,
  INSTANTIATABLE = 2,
}


union TypeCValue {
    int v_int;
    long v_long;
    long v_int64;
    double v_double;
    void** v_pointer;
}


distinct CClosure = void*;

distinct Closure = void*;

distinct ClosureNotifyData = void*;

distinct EnumClass = void*;

distinct EnumValue = void*;

distinct FlagsClass = void*;

distinct FlagsValue = void*;

distinct InitiallyUnownedClass = void*;

distinct InterfaceInfo = void*;

distinct ObjectClass = void*;

distinct ObjectConstructParam = void*;

distinct ParamSpecClass = void*;

distinct ParamSpecPool = void*;

distinct ParamSpecTypeInfo = void*;

distinct Parameter = void*;

distinct SignalInvocationHint = void*;

distinct SignalQuery = void*;

distinct TypeClass = void*;

distinct TypeFundamentalInfo = void*;

distinct TypeInfo = void*;

distinct TypeInstance = void*;

distinct TypeInterface = void*;

distinct TypeModuleClass = void*;

distinct TypePluginClass = void*;

distinct TypeQuery = void*;

distinct TypeValueTable = void*;

distinct Value = void*;

distinct ValueArray = void*;

distinct WeakRef = void*;


def BaseFinalizeFunc = fn void(TypeClass* g_class);

def BaseInitFunc = fn void(TypeClass* g_class);

def BindingTransformFunc = fn bool(Binding* binding, Value* from_value, Value* to_value, void* user_data);

def BoxedCopyFunc = fn void*(void* boxed);

def BoxedFreeFunc = fn void(void* boxed);

def Callback = fn void();

def ClassFinalizeFunc = fn void(TypeClass* g_class, void* class_data);

def ClassInitFunc = fn void(TypeClass* g_class, void* class_data);

def ClosureMarshal = fn void(Closure* closure, Value* return_value, uint n_param_values, Value param_values, void* invocation_hint, void* marshal_data);

def ClosureNotify = fn void(void* data, Closure* closure);

def InstanceInitFunc = fn void(TypeInstance* instance, TypeClass* g_class);

def InterfaceFinalizeFunc = fn void(TypeInterface* g_iface, void* iface_data);

def InterfaceInitFunc = fn void(TypeInterface* g_iface, void* iface_data);

def ObjectFinalizeFunc = fn void(Object* object);

def ObjectGetPropertyFunc = fn void(Object* object, uint property_id, Value* value, ParamSpec* pspec);

def ObjectSetPropertyFunc = fn void(Object* object, uint property_id, Value* value, ParamSpec* pspec);

def SignalAccumulator = fn bool(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* data);

def SignalEmissionHook = fn bool(SignalInvocationHint* ihint, uint n_param_values, Value param_values, void* data);

def ToggleNotify = fn void(void* data, Object* object, bool is_last_ref);

def TypeClassCacheFunc = fn bool(void* cache_data, TypeClass* g_class);

def TypeInterfaceCheckFunc = fn void(void* check_data, TypeInterface* g_iface);

def TypeValueCollectFunc = fn ZString*(Value* value, uint n_collect_values, TypeCValue collect_values, uint collect_flags);

def TypeValueCopyFunc = fn void(Value* src_value, Value* dest_value);

def TypeValueFreeFunc = fn void(Value* value);

def TypeValueInitFunc = fn void(Value* value);

def TypeValueLCopyFunc = fn ZString*(Value* value, uint n_collect_values, TypeCValue collect_values, uint collect_flags);

def TypeValuePeekPointerFunc = fn void*(Value* value);

def ValueTransform = fn void(Value* src_value, Value* dest_value);

def WeakNotify = fn void(void* data, Object* where_the_object_was);


<* Maps to GBinding *>
distinct Binding = void*;

fn Object* Binding.as_Object(&self) => (Object*)(self);


<* Maps to dup_source *>
extern fn Object* Binding.dup_source(&self) @extern("g_binding_dup_source");

<* Maps to dup_target *>
extern fn Object* Binding.dup_target(&self) @extern("g_binding_dup_target");

<* Maps to get_flags *>
extern fn BindingFlags Binding.get_flags(&self) @extern("g_binding_get_flags");

<* Maps to get_source *>
extern fn Object* Binding.get_source(&self) @extern("g_binding_get_source");

<* Maps to get_source_property *>
extern fn ZString Binding.get_source_property(&self) @extern("g_binding_get_source_property");

<* Maps to get_target *>
extern fn Object* Binding.get_target(&self) @extern("g_binding_get_target");

<* Maps to get_target_property *>
extern fn ZString Binding.get_target_property(&self) @extern("g_binding_get_target_property");

<* Maps to unbind *>
extern fn void Binding.unbind(&self) @extern("g_binding_unbind");


<* Maps to GBindingGroup *>
distinct BindingGroup = void*;

fn Object* BindingGroup.as_Object(&self) => (Object*)(self);


<* Maps to bind *>
extern fn void BindingGroup.bind(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags) @extern("g_binding_group_bind");

<* Maps to bind_full *>
extern fn void BindingGroup.bind_full(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, glib::DestroyNotify user_data_destroy) @extern("g_binding_group_bind_full");

<* Maps to bind_with_closures *>
extern fn void BindingGroup.bind_with_closures(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from) @extern("g_binding_group_bind_with_closures");

<* Maps to dup_source *>
extern fn Object* BindingGroup.dup_source(&self) @extern("g_binding_group_dup_source");

<* Maps to set_source *>
extern fn void BindingGroup.set_source(&self, Object* source) @extern("g_binding_group_set_source");


<* Maps to GInitiallyUnowned *>
distinct InitiallyUnowned = void*;

fn Object* InitiallyUnowned.as_Object(&self) => (Object*)(self);



<* Maps to GObject *>
distinct Object = void*;


<* Maps to add_toggle_ref *>
extern fn void Object.add_toggle_ref(&self, ToggleNotify notify, void* data) @extern("g_object_add_toggle_ref");

<* Maps to add_weak_pointer *>
extern fn void Object.add_weak_pointer(&self, void* weak_pointer_location) @extern("g_object_add_weak_pointer");

<* Maps to bind_property *>
extern fn Binding* Object.bind_property(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags) @extern("g_object_bind_property");

<* Maps to bind_property_full *>
extern fn Binding* Object.bind_property_full(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, glib::DestroyNotify notify) @extern("g_object_bind_property_full");

<* Maps to bind_property_with_closures *>
extern fn Binding* Object.bind_property_with_closures(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from) @extern("g_object_bind_property_with_closures");

<* Maps to connect *>
extern fn Object* Object.connect(&self, ZString signal_spec, any rest) @extern("g_object_connect");

<* Maps to disconnect *>
extern fn void Object.disconnect(&self, ZString signal_spec, any rest) @extern("g_object_disconnect");

<* Maps to dup_data *>
extern fn void* Object.dup_data(&self, ZString key, glib::DuplicateFunc dup_func, void* user_data) @extern("g_object_dup_data");

<* Maps to dup_qdata *>
extern fn void* Object.dup_qdata(&self, glib::Quark quark, glib::DuplicateFunc dup_func, void* user_data) @extern("g_object_dup_qdata");

<* Maps to force_floating *>
extern fn void Object.force_floating(&self) @extern("g_object_force_floating");

<* Maps to freeze_notify *>
extern fn void Object.freeze_notify(&self) @extern("g_object_freeze_notify");

<* Maps to get *>
extern fn void Object.get(&self, ZString first_property_name, any rest) @extern("g_object_get");

<* Maps to get_data *>
extern fn void* Object.get_data(&self, ZString key) @extern("g_object_get_data");

<* Maps to get_property *>
extern fn void Object.get_property(&self, ZString property_name, Value* value) @extern("g_object_get_property");

<* Maps to get_qdata *>
extern fn void* Object.get_qdata(&self, glib::Quark quark) @extern("g_object_get_qdata");

<* Maps to getv *>
extern fn void Object.getv(&self, uint n_properties, ZString* names, Value values) @extern("g_object_getv");

<* Maps to is_floating *>
extern fn bool Object.is_floating(&self) @extern("g_object_is_floating");

<* Maps to notify *>
extern fn void Object.notify(&self, ZString property_name) @extern("g_object_notify");

<* Maps to notify_by_pspec *>
extern fn void Object.notify_by_pspec(&self, ParamSpec* pspec) @extern("g_object_notify_by_pspec");

<* Maps to ref *>
extern fn Object* Object.ref(&self) @extern("g_object_ref");

<* Maps to ref_sink *>
extern fn Object* Object.ref_sink(&self) @extern("g_object_ref_sink");

<* Maps to remove_toggle_ref *>
extern fn void Object.remove_toggle_ref(&self, ToggleNotify notify, void* data) @extern("g_object_remove_toggle_ref");

<* Maps to remove_weak_pointer *>
extern fn void Object.remove_weak_pointer(&self, void* weak_pointer_location) @extern("g_object_remove_weak_pointer");

<* Maps to replace_data *>
extern fn bool Object.replace_data(&self, ZString key, void* oldval, void* newval, glib::DestroyNotify destroy, glib::DestroyNotify* old_destroy) @extern("g_object_replace_data");

<* Maps to replace_qdata *>
extern fn bool Object.replace_qdata(&self, glib::Quark quark, void* oldval, void* newval, glib::DestroyNotify destroy, glib::DestroyNotify* old_destroy) @extern("g_object_replace_qdata");

<* Maps to run_dispose *>
extern fn void Object.run_dispose(&self) @extern("g_object_run_dispose");

<* Maps to set *>
extern fn void Object.set(&self, ZString first_property_name, any rest) @extern("g_object_set");

<* Maps to set_data *>
extern fn void Object.set_data(&self, ZString key, void* data) @extern("g_object_set_data");

<* Maps to set_data_full *>
extern fn void Object.set_data_full(&self, ZString key, void* data, glib::DestroyNotify destroy) @extern("g_object_set_data_full");

<* Maps to set_property *>
extern fn void Object.set_property(&self, ZString property_name, Value* value) @extern("g_object_set_property");

<* Maps to set_qdata *>
extern fn void Object.set_qdata(&self, glib::Quark quark, void* data) @extern("g_object_set_qdata");

<* Maps to set_qdata_full *>
extern fn void Object.set_qdata_full(&self, glib::Quark quark, void* data, glib::DestroyNotify destroy) @extern("g_object_set_qdata_full");

<* Maps to setv *>
extern fn void Object.setv(&self, uint n_properties, ZString* names, Value values) @extern("g_object_setv");

<* Maps to steal_data *>
extern fn void* Object.steal_data(&self, ZString key) @extern("g_object_steal_data");

<* Maps to steal_qdata *>
extern fn void* Object.steal_qdata(&self, glib::Quark quark) @extern("g_object_steal_qdata");

<* Maps to take_ref *>
extern fn Object* Object.take_ref(&self) @extern("g_object_take_ref");

<* Maps to thaw_notify *>
extern fn void Object.thaw_notify(&self) @extern("g_object_thaw_notify");

<* Maps to unref *>
extern fn void Object.unref(&self) @extern("g_object_unref");

<* Maps to watch_closure *>
extern fn void Object.watch_closure(&self, Closure* closure) @extern("g_object_watch_closure");

<* Maps to weak_ref *>
extern fn void Object.weak_ref(&self, WeakNotify notify, void* data) @extern("g_object_weak_ref");

<* Maps to weak_unref *>
extern fn void Object.weak_unref(&self, WeakNotify notify, void* data) @extern("g_object_weak_unref");


<* Maps to GParamSpec *>
distinct ParamSpec = void*;


<* Maps to get_blurb *>
extern fn ZString ParamSpec.get_blurb(&self) @extern("g_param_spec_get_blurb");

<* Maps to get_default_value *>
extern fn Value* ParamSpec.get_default_value(&self) @extern("g_param_spec_get_default_value");

<* Maps to get_name *>
extern fn ZString ParamSpec.get_name(&self) @extern("g_param_spec_get_name");

<* Maps to get_name_quark *>
extern fn glib::Quark ParamSpec.get_name_quark(&self) @extern("g_param_spec_get_name_quark");

<* Maps to get_nick *>
extern fn ZString ParamSpec.get_nick(&self) @extern("g_param_spec_get_nick");

<* Maps to get_qdata *>
extern fn void* ParamSpec.get_qdata(&self, glib::Quark quark) @extern("g_param_spec_get_qdata");

<* Maps to get_redirect_target *>
extern fn ParamSpec* ParamSpec.get_redirect_target(&self) @extern("g_param_spec_get_redirect_target");

<* Maps to ref *>
extern fn ParamSpec* ParamSpec.ref(&self) @extern("g_param_spec_ref");

<* Maps to ref_sink *>
extern fn ParamSpec* ParamSpec.ref_sink(&self) @extern("g_param_spec_ref_sink");

<* Maps to set_qdata *>
extern fn void ParamSpec.set_qdata(&self, glib::Quark quark, void* data) @extern("g_param_spec_set_qdata");

<* Maps to set_qdata_full *>
extern fn void ParamSpec.set_qdata_full(&self, glib::Quark quark, void* data, glib::DestroyNotify destroy) @extern("g_param_spec_set_qdata_full");

<* Maps to sink *>
extern fn void ParamSpec.sink(&self) @extern("g_param_spec_sink");

<* Maps to steal_qdata *>
extern fn void* ParamSpec.steal_qdata(&self, glib::Quark quark) @extern("g_param_spec_steal_qdata");

<* Maps to unref *>
extern fn void ParamSpec.unref(&self) @extern("g_param_spec_unref");


<* Maps to GParamSpecBoolean *>
distinct ParamSpecBoolean = void*;

fn ParamSpec* ParamSpecBoolean.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecBoxed *>
distinct ParamSpecBoxed = void*;

fn ParamSpec* ParamSpecBoxed.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecChar *>
distinct ParamSpecChar = void*;

fn ParamSpec* ParamSpecChar.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecDouble *>
distinct ParamSpecDouble = void*;

fn ParamSpec* ParamSpecDouble.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecEnum *>
distinct ParamSpecEnum = void*;

fn ParamSpec* ParamSpecEnum.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecFlags *>
distinct ParamSpecFlags = void*;

fn ParamSpec* ParamSpecFlags.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecFloat *>
distinct ParamSpecFloat = void*;

fn ParamSpec* ParamSpecFloat.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecGType *>
distinct ParamSpecGType = void*;

fn ParamSpec* ParamSpecGType.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecInt *>
distinct ParamSpecInt = void*;

fn ParamSpec* ParamSpecInt.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecInt64 *>
distinct ParamSpecInt64 = void*;

fn ParamSpec* ParamSpecInt64.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecLong *>
distinct ParamSpecLong = void*;

fn ParamSpec* ParamSpecLong.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecObject *>
distinct ParamSpecObject = void*;

fn ParamSpec* ParamSpecObject.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecOverride *>
distinct ParamSpecOverride = void*;

fn ParamSpec* ParamSpecOverride.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecParam *>
distinct ParamSpecParam = void*;

fn ParamSpec* ParamSpecParam.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecPointer *>
distinct ParamSpecPointer = void*;

fn ParamSpec* ParamSpecPointer.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecString *>
distinct ParamSpecString = void*;

fn ParamSpec* ParamSpecString.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecUChar *>
distinct ParamSpecUChar = void*;

fn ParamSpec* ParamSpecUChar.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecUInt *>
distinct ParamSpecUInt = void*;

fn ParamSpec* ParamSpecUInt.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecUInt64 *>
distinct ParamSpecUInt64 = void*;

fn ParamSpec* ParamSpecUInt64.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecULong *>
distinct ParamSpecULong = void*;

fn ParamSpec* ParamSpecULong.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecUnichar *>
distinct ParamSpecUnichar = void*;

fn ParamSpec* ParamSpecUnichar.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecValueArray *>
distinct ParamSpecValueArray = void*;

fn ParamSpec* ParamSpecValueArray.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GParamSpecVariant *>
distinct ParamSpecVariant = void*;

fn ParamSpec* ParamSpecVariant.as_ParamSpec(&self) => (ParamSpec*)(self);



<* Maps to GSignalGroup *>
distinct SignalGroup = void*;

fn Object* SignalGroup.as_Object(&self) => (Object*)(self);


<* Maps to block *>
extern fn void SignalGroup.block(&self) @extern("g_signal_group_block");

<* Maps to connect *>
extern fn void SignalGroup.connect(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect");

<* Maps to connect_after *>
extern fn void SignalGroup.connect_after(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect_after");

<* Maps to connect_closure *>
extern fn void SignalGroup.connect_closure(&self, ZString detailed_signal, Closure* closure, bool after) @extern("g_signal_group_connect_closure");

<* Maps to connect_data *>
extern fn void SignalGroup.connect_data(&self, ZString detailed_signal, Callback c_handler, void* data, ClosureNotify notify, ConnectFlags flags) @extern("g_signal_group_connect_data");

<* Maps to connect_object *>
extern fn void SignalGroup.connect_object(&self, ZString detailed_signal, Callback c_handler, void* object, ConnectFlags flags) @extern("g_signal_group_connect_object");

<* Maps to connect_swapped *>
extern fn void SignalGroup.connect_swapped(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect_swapped");

<* Maps to dup_target *>
extern fn Object* SignalGroup.dup_target(&self) @extern("g_signal_group_dup_target");

<* Maps to set_target *>
extern fn void SignalGroup.set_target(&self, Object* target) @extern("g_signal_group_set_target");

<* Maps to unblock *>
extern fn void SignalGroup.unblock(&self) @extern("g_signal_group_unblock");


<* Maps to GTypeModule *>
distinct TypeModule = void*;

fn Object* TypeModule.as_Object(&self) => (Object*)(self);


<* Maps to add_interface *>
extern fn void TypeModule.add_interface(&self, usz instance_type, usz interface_type, InterfaceInfo* interface_info) @extern("g_type_module_add_interface");

<* Maps to register_enum *>
extern fn usz TypeModule.register_enum(&self, ZString name, EnumValue* const_static_values) @extern("g_type_module_register_enum");

<* Maps to register_flags *>
extern fn usz TypeModule.register_flags(&self, ZString name, FlagsValue* const_static_values) @extern("g_type_module_register_flags");

<* Maps to register_type *>
extern fn usz TypeModule.register_type(&self, usz parent_type, ZString type_name, TypeInfo* type_info, TypeFlags flags) @extern("g_type_module_register_type");

<* Maps to set_name *>
extern fn void TypeModule.set_name(&self, ZString name) @extern("g_type_module_set_name");

<* Maps to unuse *>
extern fn void TypeModule.unuse(&self) @extern("g_type_module_unuse");

<* Maps to use *>
extern fn bool TypeModule.use(&self) @extern("g_type_module_use");




<* Maps to GTypePlugin *>
interface TypePlugin {

  fn void complete_interface_info(usz instance_type, usz interface_type, InterfaceInfo* info);

  fn void complete_type_info(usz g_type, TypeInfo* info, TypeValueTable* value_table);

  fn void unuse();

  fn void use();

}
    
///END MODULE gobject
