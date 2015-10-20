.class public Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.super Ljava/lang/Object;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;,
        Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;,
        Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;
    }
.end annotation


# static fields
.field private static final BT_AUTO_CLOSE_ALARM_REQUESTCODE:I = 0x3

.field private static final CPU_BALANCE_MODE:I = 0x1

.field private static final CPU_PERFORMANCE_MODE:I = 0x2

.field private static final CPU_POWER_SAVE_MODE:I = 0x0

.field private static final MOBILEDATA_AUTO_CLOSE_ALARM_REQUESTCODE:I = 0x2

.field private static final MOBILEDATA_AUTO_DISABLE_EXTEND_TIME:J = 0xdbba0L

.field private static final POWER_CONSUME_ALARM_REQUESTCODE:I = 0x4

.field private static final POWER_SAVE_ACTION:Ljava/lang/String; = "android.powersave.action"

.field private static final QROM_BLUETOOTH_POWERSAVE_ACTION:I = 0x1

.field private static final QROM_POWER_SAVE_ACTION:Ljava/lang/String; = "qrom.action.POWER_SAVE_ACTION"

.field private static final QROM_SYNCDATA_POWERSAVE_ACTION:I = 0x0

.field private static final REQUEST_ALARM_TYPE:Ljava/lang/String; = "request_alarm_type"

.field private static final SLEEPMODE_EXTEND_TIME:J = 0x1b7740L

.field private static final SLEEP_MODE_ALARM_REQUESTCODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "powersave"

.field private static final TAG_BT_POWER_SAVE:Ljava/lang/String; = "powerSave_bt"

.field private static final TAG_MOBILEDATA_POWER_SAVE:Ljava/lang/String; = "powersave_mobiledata"

.field private static final TAG_POWER_SAVE:Ljava/lang/String; = "powersave_mode"

.field private static final TAG_SLEEP_MODE:Ljava/lang/String; = "powersave_sleep_mode"

.field private static final TAG_WIFI_POWER_SAVE:Ljava/lang/String; = "powerSave_wifi"

.field private static final WIFI_AUTO_CLOSE_ALARM_REQUESTCODE:I = 0x1

.field private static mBluetoothState:I

.field private static mBtAutoDisableState:I

.field private static mBtConnectionState:I

.field private static mMobileDataAutoDisableState:I

.field private static mMonth:I

.field private static mSleepModeStatus:I

.field private static mbBluetoothPowerSaveEnabled:Z

.field private static mbCpuFreqEnabled:Z

.field private static mbFileTransfering:Z

.field private static mbInBtSettingsActivity:Z

.field private static mbMobiledataPowerSaveEnabled:Z

.field private static mbMobiledataUserSet:Z

.field private static mbPowerSaveModeEnabled:Z

.field private static mbScreenOn:Z

.field private static mbSyncAutoSetting:Z

.field private static final mb_isDebug:Z

.field private static mszGovernor:Ljava/lang/String;


# instance fields
.field private final MSG_SCREEN_OFF:I

.field private final MSG_SCREEN_ON:I

.field private mAmm:Landroid/app/AlarmManager;

.field private mAutoDisableBtObserver:Landroid/database/ContentObserver;

.field private mAutoDisableMobileDataObserver:Landroid/database/ContentObserver;

.field private mBatteryLevel:I

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCmgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCpuFreqObserver:Landroid/database/ContentObserver;

.field private mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPowered:Z

.field private mPowerSaveModeObserver:Landroid/database/ContentObserver;

.field private mRecentUnpluggedBatteryLevel:I

.field private mSleepModeObserver:Landroid/database/ContentObserver;

.field private mbatteryCapacity:J

.field private mwifimgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    const-string v0, "ondemand"

    sput-object v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mszGovernor:Ljava/lang/String;

    .line 70
    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I

    .line 73
    sput-boolean v2, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z

    .line 83
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    .line 84
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    .line 87
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataPowerSaveEnabled:Z

    .line 89
    sput-boolean v2, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z

    .line 90
    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    .line 92
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z

    .line 93
    const/16 v0, 0xa

    sput v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I

    .line 94
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z

    .line 95
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbFileTransfering:Z

    .line 96
    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I

    .line 97
    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    .line 820
    sput-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    .line 75
    iput-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mwifimgr:Landroid/net/wifi/WifiManager;

    .line 76
    iput-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    .line 77
    iput-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    iput-boolean v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z

    .line 100
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I

    .line 101
    iput v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mRecentUnpluggedBatteryLevel:I

    .line 102
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbatteryCapacity:J

    .line 109
    iput-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    .line 187
    iput v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->MSG_SCREEN_ON:I

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->MSG_SCREEN_OFF:I

    .line 327
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mPowerSaveModeObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$2;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCpuFreqObserver:Landroid/database/ContentObserver;

    .line 349
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$3;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAutoDisableMobileDataObserver:Landroid/database/ContentObserver;

    .line 359
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$4;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAutoDisableBtObserver:Landroid/database/ContentObserver;

    .line 420
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$5;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 463
    new-instance v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$6;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeObserver:Landroid/database/ContentObserver;

    .line 112
    const-string v0, "powersave"

    const-string v1, "QromPowerSaveManagerService"

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->Init()V

    .line 116
    return-void
.end method

.method private CancelAlarm(I)V
    .locals 4
    .param p1, "nRequestcode"    # I

    .prologue
    .line 527
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.powersave.action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x20000000

    invoke-static {v2, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 530
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 531
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 534
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private Init()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 128
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->getAvailableGovernor()V

    .line 130
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    iput-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    .line 131
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mwifimgr:Landroid/net/wifi/WifiManager;

    .line 132
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    .line 133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    new-instance v6, Landroid/os/HandlerThread;

    const-string v9, "QromPowerSaveManagerService"

    invoke-direct {v6, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v9, p0, v12}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    .line 139
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v9, "tx_bluetooth_setting_state_change"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v9, "BLUETOOTH_TRANSFER_FILE_REQUEST_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v9, "BLUETOOTH_TRANSFER_COMPLETED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v9, "WIFI_DEVICE_IDLE"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v9, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    new-instance v7, Lcom/android/internal/os/PowerProfile;

    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 153
    .local v7, "myPowerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v7}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbatteryCapacity:J

    .line 155
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;

    invoke-direct {v12, p0, v14}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$BatteryReceiver;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;)V

    invoke-virtual {v9, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v9, "android.powersave.action"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;

    invoke-direct {v12, p0, v14}, Lcom/tencent/qrom/services/QromPowerSaveManagerService$PowerSaveRecevier;-><init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;)V

    invoke-virtual {v9, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "power_save_mode_setting"

    invoke-static {v9, v12, v11}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_0

    move v9, v10

    :goto_0
    sput-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    .line 164
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "cpu_setting"

    invoke-static {v9, v12, v11}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_1

    move v9, v10

    :goto_1
    sput-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    .line 165
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "power_save_auto_disable_mobiledata"

    invoke-static {v9, v12, v11}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_2

    move v9, v10

    :goto_2
    sput-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataPowerSaveEnabled:Z

    .line 166
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v9

    sput-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z

    .line 167
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "auto_close_bt_enable"

    invoke-static {v9, v12, v11}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_3

    :goto_3
    sput-boolean v10, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z

    .line 168
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    sput-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z

    .line 169
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "qrom_sleep_mode_status"

    invoke-static {v9, v10, v11}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I

    .line 171
    sget-boolean v9, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    invoke-direct {p0, v9}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updatePowerSaveModeLocked(Z)V

    .line 173
    const-string v9, "power_save_mode_setting"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 174
    .local v4, "PowerSaveModeUri":Landroid/net/Uri;
    const-string v9, "cpu_setting"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 175
    .local v3, "CpuFreqUri":Landroid/net/Uri;
    const-string v9, "auto_close_wifi_enable"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 176
    .local v2, "AutoDisableWiFiUri":Landroid/net/Uri;
    const-string v9, "power_save_auto_disable_mobiledata"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, "AutoDisableMobileDataUri":Landroid/net/Uri;
    const-string v9, "auto_close_bt_enable"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "AutoDisableBluetoothUri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mPowerSaveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v4, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    const-string v9, "qrom_sleep_mode_status"

    invoke-static {v9}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 180
    .local v8, "sleepModeUri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCpuFreqObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAutoDisableMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v1, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAutoDisableBtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v0, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    iget-object v9, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v8, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    return-void

    .end local v0    # "AutoDisableBluetoothUri":Landroid/net/Uri;
    .end local v1    # "AutoDisableMobileDataUri":Landroid/net/Uri;
    .end local v2    # "AutoDisableWiFiUri":Landroid/net/Uri;
    .end local v3    # "CpuFreqUri":Landroid/net/Uri;
    .end local v4    # "PowerSaveModeUri":Landroid/net/Uri;
    .end local v8    # "sleepModeUri":Landroid/net/Uri;
    :cond_0
    move v9, v11

    .line 163
    goto/16 :goto_0

    :cond_1
    move v9, v11

    .line 164
    goto/16 :goto_1

    :cond_2
    move v9, v11

    .line 165
    goto/16 :goto_2

    :cond_3
    move v10, v11

    .line 167
    goto/16 :goto_3
.end method

.method private SetAlarm(IJI)V
    .locals 6
    .param p1, "nRequestCode"    # I
    .param p2, "lExtendTime"    # J
    .param p4, "nAlarmType"    # I

    .prologue
    .line 484
    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    if-eqz v3, :cond_0

    .line 485
    const-string v3, "powersave_mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alarm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 489
    .local v1, "myCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.powersave.action"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    const-string v3, "request_alarm_type"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, p1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 495
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, p4, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 497
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "myCalendar":Ljava/util/Calendar;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private SetAutoDisableBluetooth(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 395
    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    if-eqz v0, :cond_1

    .line 396
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbFileTransfering:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 400
    const-string v0, "powerSave_bt"

    const-string v1, "SetAutoDisableBluetooth true"

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-wide/32 v0, 0xdbba0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAlarm(IJI)V

    .line 402
    sput v2, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v0, "powerSave_bt"

    const-string v1, "SetAutoDisableBluetooth false"

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V

    .line 408
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    goto :goto_0
.end method

.method private SetAutoDisableMobiledataEnable(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 381
    if-eqz p1, :cond_1

    .line 382
    const-string v0, "powersave_mobiledata"

    const-string v1, "SetAutoDisableMobiledataEnable to true"

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-wide/32 v0, 0xdbba0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAlarm(IJI)V

    .line 384
    sput v2, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    if-ne v0, v2, :cond_0

    .line 387
    const-string v0, "powersave_mobiledata"

    const-string v1, "SetAutoDisableMobiledataEnable to false"

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V

    .line 389
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    goto :goto_0
.end method

.method private SetCpuFreq(I)V
    .locals 0
    .param p1, "i_cpu_mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 787
    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbSyncAutoSetting:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;IJI)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAlarm(IJI)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataPowerSaveEnabled:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbMobiledataUserSet:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbBluetoothPowerSaveEnabled:Z

    return p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 56
    sput p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I

    return p0
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->getAutoDisableDataSyncSetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->sendPowerSaveActionIntent(I)V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 56
    sput p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mSleepModeStatus:I

    return p0
.end method

.method static synthetic access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updatePowerSaveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updateCpuFreqPowerSaveLocked(Z)V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbScreenOn:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mHandler:Lcom/tencent/qrom/services/QromPowerSaveManagerService$ScreenStateChangeHandler;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbInBtSettingsActivity:Z

    return p0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbFileTransfering:Z

    return p0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 56
    sput p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtConnectionState:I

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->CancelAlarm(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$3102(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$3200(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mRecentUnpluggedBatteryLevel:I

    return v0
.end method

.method static synthetic access$3202(Lcom/tencent/qrom/services/QromPowerSaveManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mRecentUnpluggedBatteryLevel:I

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setMobiledataEnable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableMobiledataEnable(Z)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    return v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->setBtEnable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerSaveManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetAutoDisableBluetooth(Z)V

    return-void
.end method

.method private getAutoDisableDataSyncSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sync_power_save_setting"

    invoke-static {v1, v2, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode_setting"

    invoke-static {v1, v2, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getAvailableGovernor()V
    .locals 8

    .prologue
    const/16 v6, 0x80

    .line 613
    const-string v5, "ondemand"

    .line 614
    .local v5, "result":Ljava/lang/String;
    new-array v0, v6, [C

    .line 615
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .line 617
    .local v2, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v2    # "file":Ljava/io/FileReader;
    .local v3, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x80

    :try_start_1
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 621
    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 623
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 634
    .end local v4    # "len":I
    :cond_0
    :goto_0
    sput-object v5, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mszGovernor:Ljava/lang/String;

    .line 638
    if-eqz v3, :cond_3

    .line 640
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 647
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 625
    .end local v2    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 628
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 629
    .end local v3    # "file":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    sput-object v5, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mszGovernor:Ljava/lang/String;

    .line 638
    if-eqz v2, :cond_1

    .line 640
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 641
    :catch_2
    move-exception v1

    .line 643
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 641
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 643
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 644
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/FileReader;
    goto :goto_1

    .line 634
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    sput-object v5, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mszGovernor:Ljava/lang/String;

    .line 638
    if-eqz v2, :cond_2

    .line 640
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 644
    :cond_2
    :goto_4
    throw v6

    .line 641
    :catch_4
    move-exception v1

    .line 643
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 634
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 628
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v2    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private isMobileDataEnable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 606
    :cond_0
    return v0
.end method

.method private qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 831
    return-void
.end method

.method private sendPowerSaveActionIntent(I)V
    .locals 2
    .param p1, "Action"    # I

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "qrom.action.POWER_SAVE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "qrom.action.POWER_SAVE_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    return-void
.end method

.method private setAlarm(Landroid/content/Context;III)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nRequestcode"    # I
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    .line 501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 502
    .local v8, "myCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 503
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 504
    .local v9, "nowHour":I
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 507
    .local v10, "nowMinute":I
    if-lt p3, v9, :cond_0

    if-ne p3, v9, :cond_1

    if-gt p4, v10, :cond_1

    .line 508
    :cond_0
    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 511
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.powersave.action"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string v0, "request_alarm_type"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, p2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 516
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v8, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 517
    invoke-virtual {v8, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 518
    const/16 v0, 0xd

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 519
    const/16 v0, 0xe

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 521
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mAmm:Landroid/app/AlarmManager;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 524
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "myCalendar":Ljava/util/Calendar;
    .end local v9    # "nowHour":I
    .end local v10    # "nowMinute":I
    :cond_2
    return-void
.end method

.method private setBtEnable(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 578
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 581
    if-nez p1, :cond_1

    sget v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBluetoothState:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    if-eqz p1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 587
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 588
    const/4 v1, 0x0

    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    goto :goto_0

    .line 592
    .end local v0    # "success":Z
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 593
    .restart local v0    # "success":Z
    if-eqz v0, :cond_0

    .line 594
    const/4 v1, 0x2

    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mBtAutoDisableState:I

    .line 595
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->sendPowerSaveActionIntent(I)V

    goto :goto_0
.end method

.method private setMobiledataEnable(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    .line 563
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v0

    .line 567
    .local v0, "bMobiledataEnabled":Z
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 575
    .end local v0    # "bMobiledataEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local v0    # "bMobiledataEnabled":Z
    :cond_1
    const-string v1, "powersave_mobiledata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto set Mobiledata to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mCmgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 573
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    sput v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mMobileDataAutoDisableState:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private updateCpuFreqPowerSaveLocked(Z)V
    .locals 2
    .param p1, "bPowerSaveModeEnabled"    # Z

    .prologue
    .line 309
    sget-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 311
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetCpuFreq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetCpuFreq(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 320
    :catch_1
    move-exception v0

    .line 322
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePowerSaveModeLocked(Z)V
    .locals 0
    .param p1, "bPowerSaveModeEnabled"    # Z

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updateCpuFreqPowerSaveLocked(Z)V

    .line 301
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updateSleepModeStateLocked(Z)V

    .line 302
    return-void
.end method

.method private updateSleepModeStateLocked(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qrom_sleep_mode_status"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setCpuConfiguration(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 654
    packed-switch p1, :pswitch_data_0

    .line 671
    sget-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbCpuFreqEnabled:Z

    if-eqz v1, :cond_0

    .line 673
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetCpuFreq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    :pswitch_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->SetCpuFreq(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 684
    :catch_1
    move-exception v0

    .line 686
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
