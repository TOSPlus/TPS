.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400b0

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 542
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 543
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    .line 546
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 553
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 559
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2794
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2795
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2798
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2800
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 2804
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2780
    if-gez p1, :cond_0

    .line 2781
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2783
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2784
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2790
    :cond_1
    :goto_0
    return-void

    .line 2785
    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 2786
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEncryptionStatus()I
    .locals 3

    .prologue
    .line 2593
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    const/4 v1, 0x3

    .line 2599
    :goto_0
    return v1

    .line 2596
    :cond_0
    const-string v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2597
    const/4 v1, 0x1

    goto :goto_0

    .line 2599
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 653
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 654
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 656
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1490
    if-eqz p1, :cond_1

    .line 1491
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1492
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1505
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :goto_0
    return-wide v6

    .line 1495
    :cond_1
    const-wide/16 v4, 0x0

    .line 1496
    .local v4, "timeout":J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1497
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1498
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1499
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1500
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 1502
    :cond_2
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1498
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    move-wide v6, v4

    .line 1505
    goto :goto_0
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 661
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 662
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 664
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    .line 515
    const/4 v4, 0x0

    .line 517
    .local v4, "removed":Z
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 518
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 519
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 520
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 522
    .local v0, "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_0
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 524
    :cond_0
    const/4 v4, 0x1

    .line 525
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 526
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 532
    .end local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    if-eqz v4, :cond_3

    .line 533
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 534
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 535
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 537
    :cond_3
    return-void

    .line 528
    .restart local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 11
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const-wide/16 v9, 0x0

    .line 1080
    monitor-enter p0

    .line 1081
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1082
    .local v3, "now":J
    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1083
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 1084
    monitor-exit p0

    .line 1097
    :goto_0
    return-void

    .line 1086
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1087
    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1088
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v7, 0x19bfcc00

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 1092
    const-string v5, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1086
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1095
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1096
    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "now":J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2775
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 2583
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 2086
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 18
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 893
    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 894
    .local v6, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 895
    .local v10, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 897
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 898
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v11, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 899
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v9, v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 903
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v15, 0x1

    if-eq v13, v15, :cond_1

    const/4 v15, 0x2

    if-ne v13, v15, :cond_0

    .line 905
    :cond_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 906
    .local v12, "tag":Ljava/lang/String;
    const-string v15, "policies"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 907
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Settings do not start with policies tag: found "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 969
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 970
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NullPointerException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v10, :cond_2

    .line 984
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 994
    :cond_2
    :goto_2
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 995
    .local v14, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 996
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Active password quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not match actual quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1001
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1002
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1003
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1004
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1005
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1006
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1007
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1010
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1011
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1012
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1013
    return-void

    .line 910
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_4
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 911
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 913
    .local v8, "outerDepth":I
    :cond_5
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_b

    const/4 v15, 0x3

    if-ne v13, v15, :cond_6

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_b

    .line 914
    :cond_6
    const/4 v15, 0x3

    if-eq v13, v15, :cond_5

    const/4 v15, 0x4

    if-eq v13, v15, :cond_5

    .line 917
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 918
    const-string v15, "admin"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 919
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v7

    .line 921
    .local v7, "name":Ljava/lang/String;
    :try_start_4
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 929
    .local v3, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v3, :cond_5

    .line 930
    new-instance v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v2, v3}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 931
    .local v2, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v2, v9}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 932
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    .line 935
    .end local v2    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v4

    .line 936
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed loading admin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 971
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v4

    move-object v10, v11

    .line 972
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 938
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_6
    const-string v15, "failed-password-attempts"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 939
    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 941
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 973
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_3
    move-exception v4

    move-object v10, v11

    .line 974
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 942
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_8
    :try_start_7
    const-string v15, "password-owner"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 943
    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 945
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 975
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v15

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 946
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_9
    const-string v15, "active-password"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 947
    const/4 v15, 0x0

    const-string v16, "quality"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 949
    const/4 v15, 0x0

    const-string v16, "length"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 951
    const/4 v15, 0x0

    const-string v16, "uppercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 953
    const/4 v15, 0x0

    const-string v16, "lowercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 955
    const/4 v15, 0x0

    const-string v16, "letters"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 957
    const/4 v15, 0x0

    const-string v16, "numeric"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 959
    const/4 v15, 0x0

    const-string v16, "symbols"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 961
    const/4 v15, 0x0

    const-string v16, "nonletter"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 963
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 977
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_5
    move-exception v4

    move-object v10, v11

    .line 978
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 965
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_a
    :try_start_8
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 979
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v4

    move-object v10, v11

    .line 980
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_b
    move-object v10, v11

    .line 981
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 986
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_7
    move-exception v15

    goto/16 :goto_2

    .line 979
    :catch_8
    move-exception v4

    goto :goto_7

    .line 977
    :catch_9
    move-exception v4

    goto :goto_6

    .line 975
    :catch_a
    move-exception v15

    goto/16 :goto_1

    .line 973
    :catch_b
    move-exception v4

    goto/16 :goto_5

    .line 971
    :catch_c
    move-exception v4

    goto/16 :goto_4

    .line 969
    :catch_d
    move-exception v4

    goto/16 :goto_0
.end method

.method private lockNowUnchecked()V
    .locals 6

    .prologue
    .line 2072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2075
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 2078
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2083
    return-void

    .line 2081
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2079
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    .line 804
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .line 808
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 804
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    .line 1102
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v8

    .line 1103
    .local v8, "hasCert":Z
    if-nez v8, :cond_0

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1106
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1107
    .local v16, "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10400b0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 1113
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 1116
    .local v10, "isManaged":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 1117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400b2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1119
    .local v7, "contentText":Ljava/lang/String;
    const v14, 0x10805ac

    .line 1125
    .local v14, "smallIconId":I
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1133
    .local v13, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400b0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 1144
    .local v11, "noti":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1146
    .restart local v15    # "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1147
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10400b0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 1113
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1121
    .restart local v10    # "isManaged":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1122
    .restart local v7    # "contentText":Ljava/lang/String;
    const v14, 0x108008a

    .restart local v14    # "smallIconId":I
    goto/16 :goto_2

    .line 1151
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v11    # "noti":Landroid/app/Notification;
    .restart local v13    # "notifyIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v1, 0x0

    const v2, 0x10400b0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1154
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    :cond_4
    return-void
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2124
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2125
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 2438
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2439
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2440
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2441
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 2442
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 2439
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2447
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2451
    if-nez p2, :cond_0

    .line 2452
    const-string p2, ""

    .line 2454
    :cond_0
    if-nez p1, :cond_1

    .line 2455
    const-string p1, ""

    .line 2458
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2459
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2460
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 2461
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_2

    .line 2463
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2466
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2467
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2469
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2470
    .local v2, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v2}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2471
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :goto_1
    return-void

    .line 2474
    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2475
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2476
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2464
    .end local v2    # "proxyProperties":Landroid/net/ProxyProperties;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 813
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 814
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 816
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 818
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 819
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 821
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 824
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 825
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 826
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 827
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v11, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 830
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 834
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v9, :cond_2

    .line 835
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    :cond_2
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v9, :cond_3

    .line 841
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    :cond_3
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v9, :cond_5

    .line 850
    :cond_4
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const/4 v9, 0x0

    const-string v10, "quality"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    const/4 v9, 0x0

    const-string v10, "length"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    const/4 v9, 0x0

    const-string v10, "uppercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    const/4 v9, 0x0

    const-string v10, "lowercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    const/4 v9, 0x0

    const-string v10, "letters"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    const/4 v9, 0x0

    const-string v10, "numeric"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    const/4 v9, 0x0

    const-string v10, "symbols"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    const/4 v9, 0x0

    const-string v10, "nonletter"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    :cond_5
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 866
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 867
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 879
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 869
    :catch_0
    move-exception v2

    .line 871
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_6

    .line 872
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 877
    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 874
    :catch_1
    move-exception v9

    goto :goto_3

    .line 869
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 882
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 886
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    return-void

    .line 888
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 2607
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 2296
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2297
    .local v5, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2298
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 2299
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 2300
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2301
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2302
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2303
    .local v6, "timeout":J
    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    .line 2304
    .local v2, "expiration":J
    :goto_1
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2299
    .end local v2    # "expiration":J
    .end local v6    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v6    # "timeout":J
    :cond_1
    move-wide v2, v8

    .line 2303
    goto :goto_1

    .line 2307
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "timeout":J
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2309
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 1016
    sparse-switch p0, :sswitch_data_0

    .line 1026
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :sswitch_0
    return-void

    .line 1016
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2201
    if-nez p2, :cond_0

    .line 2202
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    .line 2217
    :goto_0
    return-void

    .line 2204
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2205
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2810
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 2813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    :goto_0
    return-void

    .line 2819
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2821
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 2822
    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2824
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2825
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 2826
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2827
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2828
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2829
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2830
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2831
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 2832
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2829
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2838
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2825
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2841
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 778
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 799
    :goto_0
    return-object v3

    .line 781
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 782
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 783
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 784
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 788
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 789
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 793
    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 796
    goto :goto_0

    .line 797
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 798
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 799
    goto/16 :goto_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 688
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 689
    .local v5, "userHandle":I
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 690
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 691
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 692
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    .line 693
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 695
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 696
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 699
    :cond_1
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 700
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not specify uses-policy for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 706
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 707
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 708
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 709
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_4

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 710
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .line 707
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for policy #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 676
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 677
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1233
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1247
    :goto_0
    return-object v3

    .line 1236
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1237
    monitor-enter p0

    .line 1238
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1239
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1240
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 1241
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1248
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1243
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1244
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1245
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1247
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2642
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2660
    :goto_0
    return v4

    .line 2645
    :cond_0
    monitor-enter p0

    .line 2646
    if-eqz p1, :cond_2

    .line 2647
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2648
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2661
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2651
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2653
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2654
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2655
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2656
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_3

    .line 2657
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2654
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2660
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1802
    monitor-enter p0

    .line 1805
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1807
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 1808
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2749
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2757
    :goto_0
    return-object v0

    .line 2752
    :cond_0
    monitor-enter p0

    .line 2753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 2754
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2756
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2762
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2771
    :goto_0
    return-object v0

    .line 2765
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    monitor-enter p0

    .line 2767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 2768
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2770
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2415
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2434
    :goto_0
    return-object v4

    .line 2418
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2419
    monitor-enter p0

    .line 2420
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2423
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2424
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2425
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2426
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    .line 2429
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 2432
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2424
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2432
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2691
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2709
    :goto_0
    return v4

    .line 2694
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2695
    monitor-enter p0

    .line 2696
    if-eqz p1, :cond_2

    .line 2697
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2698
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2710
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2702
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2703
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2704
    .local v0, "N":I
    const/4 v4, 0x0

    .line 2705
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2706
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2707
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 2705
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2709
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1831
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1832
    const/4 v2, 0x0

    .line 1854
    :goto_0
    return v2

    .line 1834
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1835
    monitor-enter p0

    .line 1836
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1837
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v2, 0x0

    .line 1839
    .local v2, "count":I
    if-eqz p1, :cond_2

    .line 1840
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1841
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .end local v2    # "count":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1855
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1844
    .restart local v2    # "count":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1845
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 1846
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1847
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_4

    .line 1848
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1845
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1849
    :cond_4
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_3

    .line 1851
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_2

    .line 1854
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2031
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 2054
    :goto_0
    return-wide v4

    .line 2034
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2035
    monitor-enter p0

    .line 2036
    const-wide/16 v4, 0x0

    .line 2038
    .local v4, "time":J
    if-eqz p1, :cond_2

    .line 2039
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2040
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v4, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_1

    .line 2043
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2044
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2045
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 2046
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2047
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 2048
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2045
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2049
    :cond_4
    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 2051
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 2054
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2055
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1510
    const-wide/16 v0, 0x0

    .line 1514
    :goto_0
    return-wide v0

    .line 1512
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1513
    monitor-enter p0

    .line 1514
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1461
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 1481
    :goto_0
    return-wide v4

    .line 1464
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1465
    monitor-enter p0

    .line 1466
    if-eqz p1, :cond_2

    .line 1467
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1468
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1482
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-wide v4, v6

    .line 1468
    goto :goto_1

    .line 1471
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-wide/16 v4, 0x0

    .line 1472
    .local v4, "timeout":J
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1473
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1474
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 1475
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1476
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 1478
    :cond_3
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1474
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1481
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1403
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1404
    const/4 v3, 0x0

    .line 1423
    :goto_0
    return v3

    .line 1406
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1407
    monitor-enter p0

    .line 1408
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1409
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1411
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1413
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .end local v3    # "length":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1424
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1416
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1417
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1418
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1419
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_3

    .line 1420
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1417
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1423
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1360
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1361
    const/4 v3, 0x0

    .line 1380
    :goto_0
    return v3

    .line 1363
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1364
    monitor-enter p0

    .line 1365
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1366
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1368
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1369
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1370
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .end local v3    # "length":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1381
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1373
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1374
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1375
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1376
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_3

    .line 1377
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1374
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1380
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1620
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1621
    const/4 v3, 0x0

    .line 1640
    :goto_0
    return v3

    .line 1623
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1624
    monitor-enter p0

    .line 1625
    const/4 v3, 0x0

    .line 1627
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1628
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1629
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1632
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1633
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1635
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1636
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_3

    .line 1637
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1634
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1640
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1641
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1577
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1578
    const/4 v3, 0x0

    .line 1597
    :goto_0
    return v3

    .line 1580
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1581
    monitor-enter p0

    .line 1582
    const/4 v3, 0x0

    .line 1584
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1585
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1586
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1589
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1590
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1591
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1592
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1593
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_3

    .line 1594
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1591
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1597
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1598
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1749
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1750
    const/4 v3, 0x0

    .line 1769
    :goto_0
    return v3

    .line 1752
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1753
    monitor-enter p0

    .line 1754
    const/4 v3, 0x0

    .line 1756
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1757
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1758
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1761
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1762
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1763
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1764
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1765
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_3

    .line 1766
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1763
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1769
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1770
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1663
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1664
    const/4 v3, 0x0

    .line 1683
    :goto_0
    return v3

    .line 1666
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1667
    monitor-enter p0

    .line 1668
    const/4 v3, 0x0

    .line 1670
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1671
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1672
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1675
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1676
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1677
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1678
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1679
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_3

    .line 1680
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1677
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1683
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1684
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1706
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1707
    const/4 v3, 0x0

    .line 1726
    :goto_0
    return v3

    .line 1709
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1710
    monitor-enter p0

    .line 1711
    const/4 v3, 0x0

    .line 1713
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1714
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1715
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1718
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1719
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1720
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1721
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1722
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_3

    .line 1723
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1720
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1726
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1727
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1537
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1538
    const/4 v3, 0x0

    .line 1557
    :goto_0
    return v3

    .line 1540
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1541
    monitor-enter p0

    .line 1542
    const/4 v3, 0x0

    .line 1544
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1545
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1546
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1549
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1550
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1551
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1552
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1553
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_3

    .line 1554
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1551
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1557
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1558
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1317
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1318
    const/4 v3, 0x0

    .line 1337
    :goto_0
    return v3

    .line 1320
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1321
    monitor-enter p0

    .line 1322
    const/4 v3, 0x0

    .line 1323
    .local v3, "mode":I
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1325
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 1326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1327
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1330
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1331
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1332
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1333
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_3

    .line 1334
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1331
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1337
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1338
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 2220
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2223
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2224
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    monitor-enter p0

    .line 2228
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2229
    .local v9, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 2231
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2234
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2248
    .end local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2236
    .restart local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2238
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2248
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2232
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2539
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2560
    :goto_0
    return v4

    .line 2542
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2543
    monitor-enter p0

    .line 2545
    if-eqz p1, :cond_2

    .line 2547
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2548
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2561
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    .line 2548
    goto :goto_1

    .line 2553
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2554
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2555
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2556
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    .line 2557
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2555
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2560
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2571
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2572
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 576
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 578
    .restart local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 579
    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 581
    :cond_0
    monitor-exit p0

    return-object v0

    .line 582
    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1217
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1218
    const/4 v1, 0x0

    .line 1226
    :goto_0
    return v1

    .line 1220
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1221
    monitor-enter p0

    .line 1222
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1223
    .local v0, "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1224
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    .end local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1226
    .restart local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public installCaCert([B)Z
    .locals 11
    .param p1, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2091
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v4, 0x0

    .line 2095
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 2096
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2105
    .local v5, "pemCert":[B
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 2107
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2110
    if-eqz v4, :cond_0

    .line 2111
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2112
    const/4 v4, 0x0

    .line 2119
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "pemCert":[B
    :cond_0
    :goto_0
    return v6

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem converting cert"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2099
    goto :goto_0

    .line 2100
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v3

    .line 2101
    .local v3, "ioe":Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem reading cert"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2102
    goto :goto_0

    .line 2110
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "pemCert":[B
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_1

    .line 2111
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2112
    const/4 v4, 0x0

    .line 2110
    :cond_1
    throw v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2115
    :catch_2
    move-exception v2

    .line 2116
    .local v2, "e1":Ljava/lang/InterruptedException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "installCaCertsToKeyChain(): "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move v6, v7

    .line 2119
    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1774
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1791
    :goto_0
    return v1

    .line 1777
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1778
    monitor-enter p0

    .line 1779
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 1782
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1784
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_1

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1786
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 1788
    :cond_2
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_3

    .line 1789
    monitor-exit p0

    goto :goto_0

    .line 1797
    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1791
    .restart local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    :try_start_1
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1207
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1212
    :goto_0
    return v0

    .line 1210
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1211
    monitor-enter p0

    .line 1212
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2738
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2742
    :goto_0
    return v0

    .line 2741
    :cond_0
    monitor-enter p0

    .line 2742
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2744
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 607
    :cond_0
    monitor-exit p0

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2069
    :goto_0
    return-void

    .line 2062
    :cond_0
    monitor-enter p0

    .line 2065
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2067
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2068
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1252
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1264
    :goto_0
    return v3

    .line 1255
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1258
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1259
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1260
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1261
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1265
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1259
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1264
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1269
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1273
    monitor-enter p0

    .line 1274
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1275
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1276
    monitor-exit p0

    goto :goto_0

    .line 1293
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1278
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1280
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1282
    monitor-exit p0

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1289
    .local v1, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1291
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1293
    monitor-exit p0

    goto :goto_0

    .line 1291
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 751
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 752
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 775
    :cond_0
    return-void
.end method

.method removeUserData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 586
    monitor-enter p0

    .line 587
    if-nez p1, :cond_0

    .line 588
    :try_start_0
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit p0

    .line 600
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 592
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 595
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 598
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit p0

    goto :goto_0

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 2312
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2313
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    monitor-enter p0

    .line 2317
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2318
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2320
    .local v0, "ident":J
    :try_start_1
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2321
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2322
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_1

    .line 2323
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 2324
    .local v2, "max":I
    if-lez v2, :cond_0

    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v4, v2, :cond_0

    .line 2325
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V

    .line 2327
    :cond_0
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2331
    .end local v2    # "max":I
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2333
    monitor-exit p0

    .line 2334
    return-void

    .line 2331
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2333
    .end local v0    # "ident":J
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 2337
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2338
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    monitor-enter p0

    .line 2342
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2343
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    .line 2344
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2346
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2347
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2348
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2349
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    .line 2350
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2354
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2357
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    .line 2358
    return-void

    .line 2354
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2357
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .locals 31
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1859
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 1860
    const/16 v28, 0x0

    .line 1979
    :goto_0
    return v28

    .line 1862
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1864
    monitor-enter p0

    .line 1867
    const/16 v28, 0x0

    const/16 v29, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1869
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v23

    .line 1870
    .local v23, "quality":I
    if-eqz v23, :cond_2

    .line 1871
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 1872
    .local v24, "realQuality":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    const/high16 v28, 0x60000

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1874
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/16 v28, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1952
    .end local v23    # "quality":I
    .end local v24    # "realQuality":I
    :catchall_0
    move-exception v28

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 1880
    .restart local v23    # "quality":I
    .restart local v24    # "realQuality":I
    :cond_1
    :try_start_1
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1882
    .end local v24    # "realQuality":I
    :cond_2
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v10

    .line 1883
    .local v10, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v0, v10, :cond_3

    .line 1884
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1888
    :cond_3
    const/high16 v28, 0x60000

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 1889
    const/4 v11, 0x0

    .line 1890
    .local v11, "letters":I
    const/16 v26, 0x0

    .line 1891
    .local v26, "uppercase":I
    const/4 v12, 0x0

    .line 1892
    .local v12, "lowercase":I
    const/16 v21, 0x0

    .line 1893
    .local v21, "numbers":I
    const/16 v25, 0x0

    .line 1894
    .local v25, "symbols":I
    const/16 v20, 0x0

    .line 1895
    .local v20, "nonletter":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_7

    .line 1896
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1897
    .local v5, "c":C
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v5, v0, :cond_4

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v5, v0, :cond_4

    .line 1898
    add-int/lit8 v11, v11, 0x1

    .line 1899
    add-int/lit8 v26, v26, 0x1

    .line 1895
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1900
    :cond_4
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v5, v0, :cond_5

    const/16 v28, 0x7a

    move/from16 v0, v28

    if-gt v5, v0, :cond_5

    .line 1901
    add-int/lit8 v11, v11, 0x1

    .line 1902
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1903
    :cond_5
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v5, v0, :cond_6

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v5, v0, :cond_6

    .line 1904
    add-int/lit8 v21, v21, 0x1

    .line 1905
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1907
    :cond_6
    add-int/lit8 v25, v25, 0x1

    .line 1908
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1911
    .end local v5    # "c":C
    :cond_7
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v13

    .line 1912
    .local v13, "neededLetters":I
    if-ge v11, v13, :cond_8

    .line 1913
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1917
    :cond_8
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v16

    .line 1918
    .local v16, "neededNumbers":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1919
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1924
    :cond_9
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v14

    .line 1925
    .local v14, "neededLowerCase":I
    if-ge v12, v14, :cond_a

    .line 1926
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1931
    :cond_a
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v18

    .line 1932
    .local v18, "neededUpperCase":I
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1933
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1938
    :cond_b
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v17

    .line 1939
    .local v17, "neededSymbols":I
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 1940
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1944
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v15

    .line 1945
    .local v15, "neededNonLetter":I
    move/from16 v0, v20

    if-ge v0, v15, :cond_d

    .line 1946
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1952
    .end local v7    # "i":I
    .end local v11    # "letters":I
    .end local v12    # "lowercase":I
    .end local v13    # "neededLetters":I
    .end local v14    # "neededLowerCase":I
    .end local v15    # "neededNonLetter":I
    .end local v16    # "neededNumbers":I
    .end local v17    # "neededSymbols":I
    .end local v18    # "neededUpperCase":I
    .end local v20    # "nonletter":I
    .end local v21    # "numbers":I
    .end local v25    # "symbols":I
    .end local v26    # "uppercase":I
    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1955
    .local v6, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v22

    .line 1956
    .local v22, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    if-ltz v28, :cond_e

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v6, :cond_e

    .line 1957
    const-string v28, "DevicePolicyManagerService"

    const-string v29, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1963
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1965
    .local v8, "ident":J
    :try_start_2
    new-instance v27, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1966
    .local v27, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1967
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1968
    and-int/lit8 v28, p2, 0x1

    if-eqz v28, :cond_10

    move/from16 v19, v6

    .line 1970
    .local v19, "newOwner":I
    :goto_3
    :try_start_3
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1971
    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1972
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1974
    :cond_f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1976
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1979
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1968
    .end local v19    # "newOwner":I
    :cond_10
    const/16 v19, -0x1

    goto :goto_3

    .line 1974
    .restart local v19    # "newOwner":I
    :catchall_1
    move-exception v28

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1976
    .end local v19    # "newOwner":I
    .end local v27    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_2
    move-exception v28

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 720
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 723
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 725
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 728
    :cond_0
    if-eqz p3, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 737
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 738
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 740
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 741
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 742
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 740
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 12
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1161
    iget-boolean v9, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1168
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1169
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1170
    .local v4, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_1

    .line 1171
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1173
    :cond_1
    monitor-enter p0

    .line 1174
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1176
    .local v2, "ident":J
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1177
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1203
    .end local v2    # "ident":J
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 1179
    .restart local v2    # "ident":J
    :cond_2
    :try_start_3
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1180
    .local v5, "newAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const/4 v8, -0x1

    .line 1182
    .local v8, "replaceIndex":I
    if-eqz p2, :cond_3

    .line 1183
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1184
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1185
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1186
    .local v6, "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1187
    move v8, v1

    .line 1192
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 1193
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1198
    :goto_2
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1199
    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1201
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1184
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1196
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    :try_start_5
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 2253
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 2290
    :goto_0
    return-void

    .line 2256
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2257
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2261
    .local v2, "p":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2263
    monitor-enter p0

    .line 2264
    :try_start_0
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_2

    .line 2269
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2271
    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 2272
    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 2273
    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 2274
    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 2275
    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 2276
    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 2277
    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 2278
    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 2279
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2280
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2281
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 2282
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2283
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2286
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2289
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2286
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2619
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2622
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2623
    monitor-enter p0

    .line 2624
    if-nez p1, :cond_1

    .line 2625
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2634
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2627
    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2629
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_2

    .line 2630
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 2631
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2633
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2634
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 2715
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2716
    const/4 v0, 0x0

    .line 2727
    :goto_0
    return v0

    .line 2718
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2720
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2723
    :cond_2
    monitor-enter p0

    .line 2724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2725
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 2726
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    .line 2727
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2733
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2729
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 615
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    .line 616
    .local v10, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 617
    .local v12, "now":J
    sub-long v15, v10, v12

    .line 619
    .local v15, "timeToExpire":J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_1

    .line 621
    const-wide/16 v7, 0x0

    .line 635
    .local v7, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 637
    .local v17, "token":J
    :try_start_0
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 638
    .local v9, "am":Landroid/app/AlarmManager;
    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x48000000    # 131072.0f

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 642
    .local v14, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 643
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_0

    .line 644
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    return-void

    .line 622
    .end local v7    # "alarmTime":J
    .end local v9    # "am":Landroid/app/AlarmManager;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "token":J
    :cond_1
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_2

    .line 624
    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    .restart local v7    # "alarmTime":J
    goto :goto_0

    .line 628
    .end local v7    # "alarmTime":J
    :cond_2
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    .line 629
    .local v5, "alarmInterval":J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_3

    .line 630
    const-wide/32 v5, 0x5265c00

    .line 632
    :cond_3
    add-long v7, v12, v5

    .restart local v7    # "alarmTime":J
    goto :goto_0

    .line 647
    .end local v5    # "alarmInterval":J
    .restart local v17    # "token":J
    :catchall_0
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 2362
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2363
    const/4 v3, 0x0

    .line 2410
    :goto_0
    return-object v3

    .line 2365
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2366
    monitor-enter p0

    .line 2367
    if-nez p1, :cond_1

    .line 2368
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2411
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2372
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 2373
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2378
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2379
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2380
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2381
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2384
    monitor-exit p0

    goto :goto_0

    .line 2389
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 2390
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2394
    :cond_4
    if-nez p2, :cond_5

    .line 2395
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2396
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2397
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 2407
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2408
    .local v5, "origId":J
    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2409
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2410
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2400
    .end local v5    # "origId":J
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2401
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2402
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2668
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2684
    :goto_0
    return-void

    .line 2671
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2672
    monitor-enter p0

    .line 2673
    if-nez p1, :cond_1

    .line 2674
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2683
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2676
    :cond_1
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2678
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2

    .line 2679
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 2680
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2682
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2683
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1812
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1815
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1816
    monitor-enter p0

    .line 1819
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1821
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1823
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_1

    .line 1824
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1825
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1827
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1983
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1986
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1987
    monitor-enter p0

    .line 1988
    if-nez p1, :cond_1

    .line 1989
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1998
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1991
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1993
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2

    .line 1994
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1995
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1996
    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1998
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 1428
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1431
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1432
    monitor-enter p0

    .line 1433
    if-nez p1, :cond_1

    .line 1434
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1453
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1436
    :cond_1
    cmp-long v5, p2, v3

    if-gez v5, :cond_2

    .line 1437
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1439
    :cond_2
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1442
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1443
    .local v1, "expiration":J
    :goto_1
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1444
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1445
    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    .line 1446
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1452
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1453
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "expiration":J
    :cond_4
    move-wide v1, v3

    .line 1442
    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1385
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1388
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1389
    monitor-enter p0

    .line 1390
    if-nez p1, :cond_1

    .line 1391
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1399
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1393
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1395
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_2

    .line 1396
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1397
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1399
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1342
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1345
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1346
    monitor-enter p0

    .line 1347
    if-nez p1, :cond_1

    .line 1348
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1356
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1350
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1352
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_2

    .line 1353
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1354
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1356
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1602
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1617
    :goto_0
    return-void

    .line 1605
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1606
    monitor-enter p0

    .line 1607
    if-nez p1, :cond_1

    .line 1608
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1616
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1610
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1612
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_2

    .line 1613
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1614
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1616
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1562
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1563
    monitor-enter p0

    .line 1564
    if-nez p1, :cond_0

    .line 1565
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1573
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1567
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1569
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1

    .line 1570
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1571
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1573
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1731
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1746
    :goto_0
    return-void

    .line 1734
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1735
    monitor-enter p0

    .line 1736
    if-nez p1, :cond_1

    .line 1737
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1739
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1741
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_2

    .line 1742
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1743
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1745
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1645
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1648
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1649
    monitor-enter p0

    .line 1650
    if-nez p1, :cond_1

    .line 1651
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1653
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1655
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_2

    .line 1656
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1657
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1659
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1688
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1703
    :goto_0
    return-void

    .line 1691
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1692
    monitor-enter p0

    .line 1693
    if-nez p1, :cond_1

    .line 1694
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1696
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1698
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_2

    .line 1699
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1700
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1702
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1519
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1523
    monitor-enter p0

    .line 1524
    if-nez p1, :cond_1

    .line 1525
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1533
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1527
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1529
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_2

    .line 1530
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1531
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1533
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1297
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1301
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1303
    monitor-enter p0

    .line 1304
    if-nez p1, :cond_1

    .line 1305
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1307
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1309
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_2

    .line 1310
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1311
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1313
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2485
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 2528
    :goto_0
    return v5

    .line 2488
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2489
    monitor-enter p0

    .line 2491
    if-nez p1, :cond_1

    .line 2492
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2531
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2495
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 2497
    :cond_2
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    monitor-exit p0

    goto :goto_0

    .line 2502
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2506
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2507
    monitor-exit p0

    goto :goto_0

    .line 2511
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5

    .line 2512
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 2513
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2516
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2518
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 2519
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2520
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 2521
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 2520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2525
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 2528
    if-eqz v3, :cond_7

    const/4 v5, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_2
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1054
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1055
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1056
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_0

    .line 1057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1059
    .local v2, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "1"

    .line 1062
    .local v4, "value":Ljava/lang/String;
    :goto_0
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1059
    .restart local v2    # "token":J
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1064
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1073
    :cond_0
    monitor-enter p0

    .line 1074
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1076
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstallCaCert([B)V
    .locals 12
    .param p1, "certBuffer"    # [B

    .prologue
    .line 2130
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 2132
    .local v3, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 2134
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 2135
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2144
    :try_start_1
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 2145
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 2147
    .local v8, "service":Landroid/security/IKeyChainService;
    :try_start_2
    invoke-interface {v8, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2151
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2152
    :goto_0
    const/4 v7, 0x0

    .line 2158
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :goto_1
    return-void

    .line 2136
    :catch_0
    move-exception v1

    .line 2137
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem creating X509Certificate"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2139
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 2140
    .local v6, "ioe":Ljava/io/IOException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem reading certificate"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2148
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catch_2
    move-exception v4

    .line 2149
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "from CaCertUninstaller: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2151
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 2154
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v5

    .line 2155
    .local v5, "ie":Ljava/lang/InterruptedException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "CaCertUninstaller: "

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2151
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2152
    const/4 v7, 0x0

    .line 2151
    throw v9
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 8
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2002
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    .line 2003
    .local v3, "timeMs":J
    iget-wide v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    .line 2028
    :goto_0
    return-void

    .line 2007
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2009
    .local v1, "ident":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 2010
    const-wide/32 v3, 0x7fffffff

    .line 2018
    :goto_1
    :try_start_0
    iput-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2021
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2014
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2026
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1031
    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1034
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1035
    const/4 v0, 0x1

    .line 1039
    :cond_0
    if-nez v0, :cond_1

    .line 1040
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1045
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1033
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2182
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2198
    :goto_0
    return-void

    .line 2185
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2186
    monitor-enter p0

    .line 2189
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2193
    .local v0, "ident":J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2195
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2197
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2195
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method wipeDataLocked(I)V
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2162
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 2163
    .local v1, "forceExtWipe":Z
    :goto_0
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    move v3, v4

    .line 2166
    .local v3, "wipeExtRequested":Z
    :cond_0
    if-nez v1, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2167
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2169
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2170
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2171
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2179
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .end local v1    # "forceExtWipe":Z
    .end local v3    # "wipeExtRequested":Z
    :cond_2
    move v1, v3

    .line 2162
    goto :goto_0

    .line 2174
    .restart local v1    # "forceExtWipe":Z
    .restart local v3    # "wipeExtRequested":Z
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2175
    :catch_0
    move-exception v0

    .line 2176
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
