.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 123
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 103
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 114
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 116
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 583
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 124
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 126
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 127
    iput p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    if-nez p5, :cond_0

    .line 136
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 158
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 131
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addVpnUserLocked(I)V
    .locals 14
    .param p1, "user"    # I

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 481
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v10

    if-nez v10, :cond_0

    .line 482
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "VPN is not active"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 485
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    .line 489
    .local v4, "forwardDns":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v11, p1, v4}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V

    .line 490
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 493
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v11, "[Legacy VPN]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 495
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 496
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 498
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 505
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 506
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-lez v10, :cond_1

    .line 507
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 509
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 511
    .local v5, "height":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 513
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 514
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_1
    invoke-direct {p0, v7, v1, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 521
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 485
    .end local v4    # "forwardDns":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 499
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "forwardDns":Z
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 500
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid application"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 519
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_1
.end method

.method private enforceControlPermission()V
    .locals 7

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 634
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 637
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 638
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 639
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_1

    .line 645
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 642
    :catch_0
    move-exception v5

    .line 645
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 713
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 714
    return-object v1

    .line 718
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private hideNotification(I)V
    .locals 4
    .param p1, "user"    # I

    .prologue
    const/4 v3, 0x0

    .line 692
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 695
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 698
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 699
    const v1, 0x1080675

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 540
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 541
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 549
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 553
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 555
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 556
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 564
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 526
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 531
    .local v0, "forwardDns":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 532
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 534
    return-void

    .line 529
    .end local v0    # "forwardDns":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    const v10, 0x1080675

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 666
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 669
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 672
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 673
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "title":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "text":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 687
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 673
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b7

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 675
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b9

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 835
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 839
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 840
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 206
    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 30
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    .line 320
    .local v15, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 321
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 323
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v29, v0

    invoke-interface/range {v26 .. v29}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 325
    const/16 v24, 0x0

    .line 459
    :goto_0
    monitor-exit p0

    return-object v24

    .line 327
    :catch_0
    move-exception v8

    .line 328
    .local v8, "e":Ljava/lang/Exception;
    const/16 v24, 0x0

    goto :goto_0

    .line 331
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.net.VpnService"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v22

    .line 336
    .local v22, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    .line 337
    .local v25, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 338
    new-instance v26, Ljava/lang/SecurityException;

    const-string v27, "Restricted users cannot establish VPNs"

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v8

    .line 350
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 352
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v26

    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "mgr":Landroid/os/UserManager;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "token":J
    :catchall_1
    move-exception v26

    monitor-exit p0

    throw v26

    .line 341
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "token":J
    .restart local v25    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 343
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    if-nez v12, :cond_2

    .line 344
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 346
    :cond_2
    const-string v26, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 347
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " does not require "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    :cond_3
    :try_start_7
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v16, v0

    .line 357
    .local v16, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 358
    .local v18, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v17, v0

    .line 359
    .local v17, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    .line 362
    .local v19, "oldUsers":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v24

    .line 364
    .local v24, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v27, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v14

    .line 368
    .local v14, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 370
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 436
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    :catch_2
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_9
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v27, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 438
    invoke-static/range {v24 .. v24}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v22

    .line 442
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 446
    :try_start_b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 450
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 451
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 452
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 453
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 372
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v25    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v14, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 373
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "At least one address must be specified"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 375
    :cond_5
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 376
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v13, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 378
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot bind "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 381
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 382
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 388
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 391
    new-instance v26, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v22

    .line 394
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 400
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "user":Landroid/content/pm/UserInfo;
    check-cast v25, Landroid/content/pm/UserInfo;

    .line 401
    .restart local v25    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v26

    if-eqz v26, :cond_7

    .line 403
    :try_start_e
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    .line 404
    :catch_3
    move-exception v8

    .line 405
    .local v8, "e":Ljava/lang/Exception;
    :try_start_f
    const-string v26, "Vpn"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to add user "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " to owner\'s VPN"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 411
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    :catchall_2
    move-exception v26

    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .restart local v25    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    if-eqz v17, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 417
    :cond_9
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-wide v22

    .line 423
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseBooleanArray;->size()I

    move-result v21

    .line 424
    .local v21, "size":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_a

    const/4 v9, 0x1

    .line 426
    .local v9, "forwardDns":Z
    :goto_4
    const/4 v10, 0x0

    .end local v25    # "user":Landroid/content/pm/UserInfo;
    .local v10, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_b

    .line 427
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v25

    .line 428
    .local v25, "user":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 426
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 424
    .end local v9    # "forwardDns":Z
    .end local v10    # "i":I
    .local v25, "user":Landroid/content/pm/UserInfo;
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 430
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    .restart local v9    # "forwardDns":Z
    .restart local v10    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 432
    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 455
    .end local v9    # "forwardDns":Z
    .end local v10    # "i":I
    .end local v21    # "size":I
    :cond_c
    :try_start_13
    const-string v26, "Vpn"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Established by "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " on "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v27, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_0

    .line 432
    :catchall_3
    move-exception v26

    :try_start_14
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 446
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "interfaze":Ljava/lang/String;
    .local v8, "e":Ljava/lang/RuntimeException;
    :catchall_4
    move-exception v26

    :try_start_15
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .line 443
    :catch_4
    move-exception v26

    .line 446
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 876
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 861
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 869
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 863
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 864
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 865
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 866
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 860
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAddressCovered(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 466
    monitor-enter p0

    .line 467
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    monitor-exit p0

    .line 470
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 228
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    move v6, v0

    .line 283
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 233
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "[Legacy VPN]"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 242
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 245
    .local v3, "token":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 246
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 247
    .local v2, "size":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    .line 249
    .local v0, "forwardDns":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 250
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 251
    .local v5, "user":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 252
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    .end local v5    # "user":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 260
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 261
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 265
    .end local v0    # "forwardDns":Z
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "token":J
    :cond_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_7

    .line 267
    :try_start_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn$Connection;->access$200(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v7

    const v8, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 273
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 279
    :cond_6
    :goto_3
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switched from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 281
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 282
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "prepare"

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 257
    .restart local v3    # "token":J
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 274
    .end local v3    # "token":J
    :cond_7
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v7, :cond_6

    .line 275
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 269
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 295
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 297
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 302
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnableNotifications(Z)V
    .locals 0
    .param p1, "enableNotif"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 166
    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 175
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 13
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 727
    invoke-virtual {p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v11

    if-nez v11, :cond_0

    .line 728
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "KeyStore isn\'t unlocked"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 731
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v4

    .line 732
    .local v4, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "gateway":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "iface":Ljava/lang/String;
    const-string v6, ""

    .line 737
    .local v6, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 738
    .local v9, "userCert":Ljava/lang/String;
    const-string v0, ""

    .line 739
    .local v0, "caCert":Ljava/lang/String;
    const-string v8, ""

    .line 740
    .local v8, "serverCert":Ljava/lang/String;
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 741
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 742
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 743
    .local v10, "value":[B
    if-nez v10, :cond_5

    const/4 v9, 0x0

    .line 745
    .end local v10    # "value":[B
    :cond_1
    :goto_0
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 746
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 747
    .restart local v10    # "value":[B
    if-nez v10, :cond_6

    const/4 v0, 0x0

    .line 749
    .end local v10    # "value":[B
    :cond_2
    :goto_1
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 750
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 751
    .restart local v10    # "value":[B
    if-nez v10, :cond_7

    const/4 v8, 0x0

    .line 753
    .end local v10    # "value":[B
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    if-nez v8, :cond_8

    .line 754
    :cond_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 743
    .restart local v10    # "value":[B
    :cond_5
    new-instance v9, Ljava/lang/String;

    .end local v9    # "userCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 747
    .restart local v9    # "userCert":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/String;

    .end local v0    # "caCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 751
    .restart local v0    # "caCert":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/String;

    .end local v8    # "serverCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 758
    .end local v10    # "value":[B
    .restart local v8    # "serverCert":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    .line 759
    .local v7, "racoon":[Ljava/lang/String;
    iget v11, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 793
    :goto_3
    const/4 v5, 0x0

    .line 794
    .local v5, "mtpd":[Ljava/lang/String;
    iget v11, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_1

    .line 815
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 816
    .local v1, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 817
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 818
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 819
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 821
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 822
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 823
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 825
    :cond_9
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 826
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 828
    :cond_a
    invoke-direct {p0, v1, v7, v5}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 829
    return-void

    .line 761
    .end local v1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 765
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto :goto_3

    .line 767
    :pswitch_1
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 771
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 773
    :pswitch_2
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 777
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 779
    :pswitch_3
    const/16 v11, 0xb

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0xa

    aput-object v2, v7, v11

    .line 783
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 785
    :pswitch_4
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 796
    .restart local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_5
    const/16 v11, 0x14

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "mtpd":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v5, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v5, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v5, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v5, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v5, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v5, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v5, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v5, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v5, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v5, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v5, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v5, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v5, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v11, :cond_b

    const-string v11, "+mppe"

    :goto_5
    aput-object v11, v5, v12

    .line 803
    .restart local v5    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 796
    .end local v5    # "mtpd":[Ljava/lang/String;
    :cond_b
    const-string v11, "nomppe"

    goto :goto_5

    .line 806
    .restart local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_6
    const/16 v11, 0x14

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "mtpd":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v5, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v5, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v5, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v5, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v5, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v5, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v5, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v5, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v5, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v5, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v5, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v5, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v5, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v5, v11

    .restart local v5    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 794
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .locals 2

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 848
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 851
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :cond_0
    monitor-exit p0

    return-void

    .line 851
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 844
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
