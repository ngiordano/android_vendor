ifeq (cc_grouper,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_grouper.mk
endif
ifeq (cc_galaxysmtd,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_galaxysmtd.mk
endif
ifeq (cc_vibrantmtd,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_vibrantmtd.mk
endif
ifeq (cc_maguro,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_maguro.mk
endif
ifeq (cc_hercules,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_hercules.mk
endif
ifeq (cc_skyrocket,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_skyrocket.mk
endif
ifeq (cc_n7000,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cc_n7000.mk
endif


