.class public final Lcom/tencent/qrom/provider/QromSettings$System;
.super Lcom/tencent/qrom/provider/QromSettings$NameValueTable;
.source "QromSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QROM_ACCOUNT_SYNC_FORBID_2G3G:Ljava/lang/String; = "qrom_forbid_sync_in_2g3g"

.field public static final QROM_AIRPLANE_USER_SET:Ljava/lang/String; = "airplane_user_set"

.field public static final QROM_AUTO_CLOSE_BT_EBABLE:Ljava/lang/String; = "auto_close_bt_enable"

.field public static final QROM_AUTO_CLOSE_WIFI_EBABLE:Ljava/lang/String; = "auto_close_wifi_enable"

.field public static final QROM_AUTO_DISABLE_GPS:Ljava/lang/String; = "auto_disable_gps"

.field public static final QROM_AUTO_KILL_BK_PROC_SETTING:Ljava/lang/String; = "auto_kill_bk_proc"

.field public static final QROM_BATTERY_PLUGGED_TYPE:Ljava/lang/String; = "battery_plugged_type"

.field public static final QROM_BTN_LIGHT_SETTINGS:Ljava/lang/String; = "btn_light_settings"

.field public static final QROM_CPU_SETTING:Ljava/lang/String; = "cpu_setting"

.field public static final QROM_CURRENT_BATTERY_LEVEL:Ljava/lang/String; = "current_battery_level"

.field public static final QROM_CURRENT_POWER_STATE:Ljava/lang/String; = "qrom_current_power_state"

.field public static final QROM_FACE_DETECT_ENABLE:Ljava/lang/String; = "qrom_face_detect_enable"

.field public static final QROM_MMS_PRIORITY:Ljava/lang/String; = "qrom_mms_priority"

.field public static final QROM_MOBILE_DATA_USER_SET:Ljava/lang/String; = "mobile_data_user_set"

.field public static final QROM_NETWORK_TYPE_USER_SET:Ljava/lang/String; = "network_type_user_set"

.field public static final QROM_NIGHT_MODE_DISABLE_OPTION:Ljava/lang/String; = "night_mode_disable_option"

.field public static final QROM_NIGHT_MODE_SETTING:Ljava/lang/String; = "night_mode_setting"

.field public static final QROM_PERMISSION_ROOT:Ljava/lang/String; = "qrom_permission_root"

.field public static final QROM_POWER_SAVE_AUTO_DISABLE_MOBILEDATA:Ljava/lang/String; = "power_save_auto_disable_mobiledata"

.field public static final QROM_POWER_SAVE_ENABLE_LEVEL:Ljava/lang/String; = "power_save_enable_level"

.field public static final QROM_POWER_SAVE_MODE:Ljava/lang/String; = "power_save_mode"

.field public static final QROM_POWER_SAVE_MODE_SETTING:Ljava/lang/String; = "power_save_mode_setting"

.field public static final QROM_RECENT_UNPLUGGED_BATTERYLEVEL:Ljava/lang/String; = "recent_unplugged_batterylevel"

.field public static final QROM_SAFETY_INTERCEPT_SETTING:Ljava/lang/String; = "safety_intercept_setting"

.field public static final QROM_SCREEN_BRIGHTNEE:Ljava/lang/String; = "qrom_screen_brightness"

.field public static final QROM_SHOW_SLEEP_MODE_ON_LOCKSCREEN:Ljava/lang/String; = "show_sleep_mode_on_lockscreen"

.field public static final QROM_SLEEP_MODE_STATUS:Ljava/lang/String; = "qrom_sleep_mode_status"

.field public static final QROM_SLEEP_PLAN_STATUS:Ljava/lang/String; = "sleep_plan_status"

.field public static final QROM_SMS_NOTIFICATION_SOUND:Ljava/lang/String; = "qrom_sms_notification_sound"

.field public static final QROM_SYNC_POWER_SAVE_SETTING:Ljava/lang/String; = "sync_power_save_setting"

.field public static final QROM_TODAY_BATTERY_DURATION:Ljava/lang/String; = "today_unplugged_duration"

.field public static final QROM_TODAY_POWER_CONSUME:Ljava/lang/String; = "today_power_consume"

.field public static final QROM_TODAY_SCREEN_ON_DURATION:Ljava/lang/String; = "today_screen_on_duration"

.field public static final QROM_TODAY_SUSPEND_DURATION:Ljava/lang/String; = "today_suspend_duration"

.field public static final QROM_TOTAL_BATTERY_DURATION:Ljava/lang/String; = "total_battery_duration"

.field public static final QROM_TOTAL_POWER_CONSUME:Ljava/lang/String; = "total_power_consume"

.field public static final QROM_TOTAL_SCREEN_ON_DURATION:Ljava/lang/String; = "total_screen_on_duration"

.field public static final QROM_TOTAL_SUSPEND_DURATION:Ljava/lang/String; = "total_suspend_duration"

.field public static final QROM_VIRTUAL_KEY_VIBERATE_PATTERN:Ljava/lang/String; = "qrom_virtual_key_viberate_pattern"

.field public static final QROM_WIFI_SLEEP_POLICY:Ljava/lang/String; = "qrom_wifi_sleep_policy"

.field public static final QROM_WIFI_SLEEP_POLICY_DEFAULT:I = 0x0

.field public static final QROM_WIFI_SLEEP_POLICY_NEVER:I = 0x2

.field public static final QROM_WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1

.field public static final QROM_YESTERDAY_ELAPSEDREALTIME:Ljava/lang/String; = "yesterday_elapsedrealtime"

.field public static final QROM_YESTERDAY_POWER_CONSUME:Ljava/lang/String; = "yesterday_power_consume"

.field public static final QROM_YESTERDAY_SCREENON_DURATION:Ljava/lang/String; = "yesterdaymidnight_screenon_duration"

.field public static final QROM_YESTERDAY_SUSPEND_DURATION:Ljava/lang/String; = "yesterday_suspend_duration"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.qrom_system_version"

.field private static sNameValueCache:Lcom/tencent/qrom/provider/QromSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->sNameValueCache:Lcom/tencent/qrom/provider/QromSettings$NameValueCache;

    .line 355
    const-string v0, "content://qromsettings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 564
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "power_save_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "power_save_enable_level"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_save_mode_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sleep_plan_status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mobile_data_user_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type_user_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "airplane_user_set"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cpu_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "night_mode_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "auto_kill_bk_proc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "auto_close_wifi_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "auto_close_bt_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "auto_disable_gps"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sync_power_save_setting"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "power_save_auto_disable_mobiledata"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "night_mode_disable_option"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "btn_light_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "qrom_sleep_mode_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "show_sleep_mode_on_lockscreen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "safety_intercept_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "total_battery_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "total_power_consume"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "total_screen_on_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "total_suspend_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "qrom_mms_priority"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "qrom_virtual_key_viberate_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "qrom_permission_root"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/tencent/qrom/provider/QromSettings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 326
    invoke-static {p0, p1}, Lcom/tencent/qrom/provider/QromSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 330
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .line 329
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/tencent/qrom/provider/QromSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 247
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 246
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 283
    invoke-static {p0, p1}, Lcom/tencent/qrom/provider/QromSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 290
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 286
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v1, Lcom/tencent/qrom/provider/QromSettings$System;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->sNameValueCache:Lcom/tencent/qrom/provider/QromSettings$NameValueCache;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;

    const-string v2, "sys.qrom_system_version"

    sget-object v3, Lcom/tencent/qrom/provider/QromSettings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_system"

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->sNameValueCache:Lcom/tencent/qrom/provider/QromSettings$NameValueCache;

    .line 204
    :cond_0
    sget-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->sNameValueCache:Lcom/tencent/qrom/provider/QromSettings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 349
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 308
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v0, Lcom/tencent/qrom/provider/QromSettings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/qrom/provider/QromSettings$System;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
