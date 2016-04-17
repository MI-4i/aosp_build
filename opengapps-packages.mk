include vendor/google/build/config.mk
include $(GAPPS_FILES)

PRODUCT_PACKAGES += GoogleBackupTransport \
                    GoogleContactsSyncAdapter \
                    GoogleFeedback \
                    GoogleOneTimeInitializer \
                    GooglePartnerSetup \
                    PrebuiltGmsCore \
                    GoogleServicesFramework \
                    GoogleLoginService \
                    SetupWizard \
                    Phonesky \
                    GoogleCalendarSyncAdapter
                    
ifneq ($(filter $(call get-allowed-api-levels),23),)
PRODUCT_PACKAGES += GoogleTTS
endif

ifneq ($(filter $(TARGET_GAPPS_VARIANT),nano),) # require at least nano
PRODUCT_PACKAGES += FaceLock \
                    HotwordEnrollment \
                    Velvet

ifneq ($(filter $(TARGET_GAPPS_VARIANT),micro),) # require at least micro
PRODUCT_PACKAGES += CalendarGooglePrebuilt \
                    PrebuiltExchange3Google \
                    PrebuiltGmail 
                    
ifeq ($(filter $(call get-allowed-api-levels),23),)
PRODUCT_PACKAGES += GoogleTTS
endif

ifneq ($(filter $(TARGET_GAPPS_VARIANT),mini),) # require at least mini
PRODUCT_PACKAGES += CalculatorGoogle \
                    PrebuiltDeskClockGoogle \
                    Maps 
                    
                   

ifneq ($(filter $(TARGET_GAPPS_VARIANT),full),) # require at least full
PRODUCT_PACKAGES += Chrome \
                    CloudPrint2 \
                    GoogleEars \
                    Videos \
                    PlayGames \
                    Maps \
										YouTube \
                    talkback \
                    TranslatePrebuilt \
                    TagGoogle \
                    WebViewGoogle \
                    FaceLock \
                    PrebuiltDeskClockGoogle \
                    CalendarGooglePrebuilt \
                    PrebuiltGmail 

ifneq ($(filter $(TARGET_GAPPS_VARIANT),stock),) # require at least stock

DEVICE_PACKAGE_OVERLAYS += $(GAPPS_DEVICE_FILES_PATH)/overlay/stock

PRODUCT_PACKAGES += GoogleContacts \
                    LatinImeGoogle \
                    PrebuiltBugle \
                    TagGoogle \
                    WebViewGoogle

ifneq ($(filter $(TARGET_GAPPS_VARIANT),super),)

ifneq ($(filter $(call get-allowed-api-levels),23),)
PRODUCT_PACKAGES += AndroidForWork
endif

PRODUCT_PACKAGES += Wallet \
                    DMAgent \
                    GoogleEarth \
                    GCS \
                    GoogleHindiIME \
                    GoogleJapaneseInput \
                    KoreanIME \
                    GooglePinyinIME \
                    Tycho \
                    Street \
                    GoogleZhuyinIME

endif # end super
endif # end stock
endif # end full
endif # end mini
endif # end micro
endif # end nano
