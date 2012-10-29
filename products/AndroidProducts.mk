ifeq (tp_grouper,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_grouper.mk
endif
ifeq (tp_galaxysmtd,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_galaxysmtd.mk
endif
ifeq (tp_vibrantmtd,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_vibrantmtd.mk
endif
ifeq (tp_maguro,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_maguro.mk
endif
ifeq (tp_hercules,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_hercules.mk
endif
ifeq (tp_skyrocket,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_skyrocket.mk
endif
ifeq (tp_n7000,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/tp_n7000.mk
endif


