.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private mHasDownloaded:Z

.field private mHasSentBroadcast:Z

.field private mLastPort:I

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private mPacUrl:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 141
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 144
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Lcom/android/net/IProxyService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .locals 4

    .prologue
    const v3, 0x40000005    # 2.0000012f

    .line 265
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 266
    const-string v1, "PacManager"

    const-string v2, "No context for binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 273
    iget v1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 274
    new-instance v1, Landroid/net/ProxyProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 276
    :cond_1
    const-string v1, "PacManager"

    const-string v2, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 313
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 316
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 351
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "url":Ljava/net/URL;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 205
    .local v1, "urlConnection":Ljava/net/URLConnection;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .locals 3
    .param p1, "delayIndex"    # I

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 239
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 241
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getNextDelay(I)I
    .locals 1
    .param p1, "currentDelay"    # I

    .prologue
    const/4 v0, 0x3

    .line 209
    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_0

    move p1, v0

    .line 212
    .end local p1    # "currentDelay":I
    :cond_0
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .locals 5

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "conn.pac_change_delay"

    const-string v4, "8 32 120 14400 43200"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string v3, "pac_change_delay"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_0

    .end local v1    # "defaultDelay":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "defaultDelay":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private longSchedule()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 217
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 218
    return-void
.end method

.method private reschedule()V
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 222
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 223
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyProperties;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .locals 3

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/net/ProxyProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyProperties;)V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_0

    .line 252
    const-string v1, "PacManager"

    const-string v2, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    .line 261
    :goto_0
    return v1

    .line 256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacManager"

    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDownloadIn(I)V
    .locals 8
    .param p1, "delayIndex"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 246
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 247
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 248
    return-void
.end method

.method private unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 358
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 364
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 366
    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z
    .locals 5
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    const/4 v1, 0x0

    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-lez v2, :cond_0

    .line 193
    :goto_0
    monitor-exit p0

    return v1

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    .line 171
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 175
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 164
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 179
    :cond_1
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 181
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    .line 182
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_2

    .line 185
    :try_start_8
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v3}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    .line 192
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 189
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
.end method
