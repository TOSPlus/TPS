.class public Lcom/tencent/qrom/services/QromWifiService;
.super Ljava/lang/Object;
.source "QromWifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final QROM_ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.tencent.qrom.server.WifiManager.action.DEVICE_IDLE"

.field private static final QROM_POWER_SAVE_ACTION:Ljava/lang/String; = "qrom.action.POWER_SAVE_ACTION"

.field private static final QROM_WIFI_POWERSAVE_ACTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "QromWifiService"

.field private static mWiFiNetworkState:Landroid/net/NetworkInfo$State;

.field private static mbWiFiEnabled:Z


# instance fields
.field private NEVER_SLEEP_ACTION_DELAY:J

.field private SCREEN_OFF_ACTION_DELAY:J

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mForceSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOff:Z

.field private mSession:Landroid/net/INetworkStatsSession;

.field mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

.field private mWiFiStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiSleepPolicy:I

.field private mWifiSleepPolicyResolver:Landroid/database/ContentObserver;

.field mqromContext:Landroid/content/Context;

.field private mwifimgr:Landroid/net/wifi/WifiManager;

.field qrommLastDetectWiFiTime:J

.field qrommMaxSpeedInIdle:J

.field qrommNetworkStats:Landroid/net/INetworkStatsService;

.field qrommTemplate:Landroid/net/NetworkTemplate;

.field qrommTotalBytesAfterScreenOff:J

.field qrommWifiStatStartTime:J

.field qrommwifideviceidleIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z

    .line 81
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v5, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommNetworkStats:Landroid/net/INetworkStatsService;

    .line 30
    const-wide/16 v3, 0x320

    iput-wide v3, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommMaxSpeedInIdle:J

    .line 32
    iput-object v5, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommwifideviceidleIntent:Landroid/content/Intent;

    .line 33
    iput-object v5, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    .line 35
    iput-object v5, p0, Lcom/tencent/qrom/services/QromWifiService;->mwifimgr:Landroid/net/wifi/WifiManager;

    .line 39
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;

    .line 42
    iput v7, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    .line 70
    new-instance v3, Lcom/tencent/qrom/services/QromWifiService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/tencent/qrom/services/QromWifiService$1;-><init>(Lcom/tencent/qrom/services/QromWifiService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicyResolver:Landroid/database/ContentObserver;

    .line 82
    new-instance v3, Lcom/tencent/qrom/services/QromWifiService$2;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/services/QromWifiService$2;-><init>(Lcom/tencent/qrom/services/QromWifiService;)V

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mWiFiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-boolean v6, p0, Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z

    .line 117
    new-instance v3, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;-><init>(Lcom/tencent/qrom/services/QromWifiService;)V

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    .line 171
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/tencent/qrom/services/QromWifiService;->SCREEN_OFF_ACTION_DELAY:J

    .line 172
    const-wide/32 v3, 0x1b7740

    iput-wide v3, p0, Lcom/tencent/qrom/services/QromWifiService;->NEVER_SLEEP_ACTION_DELAY:J

    .line 173
    new-instance v3, Lcom/tencent/qrom/services/QromWifiService$3;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/services/QromWifiService$3;-><init>(Lcom/tencent/qrom/services/QromWifiService;)V

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    const-string v3, "QromWifiService"

    const-string v4, "QromWifiService run"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTemplate:Landroid/net/NetworkTemplate;

    .line 50
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 51
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mwifimgr:Landroid/net/wifi/WifiManager;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService;->mWiFiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tencent.qrom.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v1, "idleIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-static {v3, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 61
    const-string v3, "qrom_wifi_sleep_policy"

    invoke-static {v3}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "wifiSleepPolicyUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "qrom_wifi_sleep_policy"

    invoke-static {v3, v4, v7}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    .line 65
    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicyResolver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromWifiService;->registerForBroadcasts()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/services/QromWifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qrom/services/QromWifiService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/tencent/qrom/services/QromWifiService;->mbWiFiEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 24
    sput-object p0, Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromWifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/services/QromWifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/services/QromWifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/qrom/services/QromWifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qrom/services/QromWifiService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/services/QromWifiService;)J
    .locals 2
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/tencent/qrom/services/QromWifiService;->NEVER_SLEEP_ACTION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/services/QromWifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/qrom/services/QromWifiService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$800(Lcom/tencent/qrom/services/QromWifiService;)J
    .locals 2
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/tencent/qrom/services/QromWifiService;->SCREEN_OFF_ACTION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/services/QromWifiService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromWifiService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromWifiService;->shouldWifiStayAwake(I)Z

    move-result v0

    return v0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.tencent.qrom.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method private setWiFiEnable(Z)V
    .locals 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 233
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mwifimgr:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 234
    if-nez p1, :cond_1

    iget v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I

    if-nez v2, :cond_1

    sget-object v2, Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mScreenOff:Z

    if-eqz v2, :cond_1

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "qrom.action.POWER_SAVE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "qrom.action.POWER_SAVE_ACTION"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "idleIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    .end local v0    # "idleIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v2, "QromWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It\'s time to sleep wifi, but don\'t meet the conditions, mPluggedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qrom/services/QromWifiService;->mPluggedType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWiFiNetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/qrom/services/QromWifiService;->mWiFiNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 3
    .param p1, "plugType"    # I

    .prologue
    .line 252
    const/4 v0, 0x1

    .line 254
    .local v0, "bRet":Z
    iget v1, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 255
    iget v1, p0, Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 261
    :cond_1
    return v0
.end method


# virtual methods
.method qromGetWiFiFlow(J)J
    .locals 9
    .param p1, "curTime"    # J

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommNetworkStats:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommNetworkStats:Landroid/net/INetworkStatsService;

    .line 146
    :cond_0
    const-wide/16 v6, 0x0

    .line 148
    .local v6, "TotalBytes":J
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mSession:Landroid/net/INetworkStatsSession;

    .line 149
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 157
    :goto_0
    return-wide v6

    .line 152
    :catch_0
    move-exception v8

    .line 153
    .local v8, "e":Landroid/os/RemoteException;
    iget-wide v6, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    .line 154
    const-string v0, "QromWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkStats.getSummaryForNetwork exception|mWifiStatStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommWifiStatStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|curr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method qromRemoveQromSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromWifiService;->mStartThread:Lcom/tencent/qrom/services/QromWifiService$StartWifiFlowDetectThread;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iput-boolean v4, p0, Lcom/tencent/qrom/services/QromWifiService;->mForceSleep:Z

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.tencent.qrom.server.WifiManager.action.DEVICE_IDLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v0, "idleIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    const/high16 v3, 0x20000000

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 275
    .local v1, "sender":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 278
    :cond_0
    return-void
.end method

.method qromSetWiFiIdleState(J)V
    .locals 12
    .param p1, "idleMillis"    # J

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 211
    .local v6, "curr":J
    invoke-virtual {p0, v6, v7}, Lcom/tencent/qrom/services/QromWifiService;->qromGetWiFiFlow(J)J

    move-result-wide v4

    .line 212
    .local v4, "TotalBytes":J
    iget-wide v8, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommLastDetectWiFiTime:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 213
    .local v0, "DurationTime":J
    iget-wide v8, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    sub-long v2, v4, v8

    .line 214
    .local v2, "FlowByte":J
    const-string v8, "QromWifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TotalBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Byte, qrommTotalBytesAfterScreenOff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Byte"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v8, "QromWifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi flow is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Byte in last "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-wide v8, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommMaxSpeedInIdle:J

    mul-long/2addr v8, v0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 217
    const-string v8, "QromWifiService"

    const-string v9, "there are much traffic on wifi,will sleep later"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/tencent/qrom/services/QromWifiService;->qromStartWiFIFlowDetect(JJ)V

    .line 219
    iput-wide v4, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommTotalBytesAfterScreenOff:J

    .line 220
    iput-wide v6, p0, Lcom/tencent/qrom/services/QromWifiService;->qrommLastDetectWiFiTime:J

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v8, "QromWifiService"

    const-string v9, "there are no traffic on wifi,will sleep now"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/tencent/qrom/services/QromWifiService;->setWiFiEnable(Z)V

    goto :goto_0
.end method

.method qromStartWiFIFlowDetect(JJ)V
    .locals 5
    .param p1, "idleMillis"    # J
    .param p3, "currTime"    # J

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    add-long v2, p3, p1

    iget-object v4, p0, Lcom/tencent/qrom/services/QromWifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 268
    return-void
.end method
