.class public Lcom/tencent/qrom/services/QromNotificationManagerService;
.super Lcom/tencent/qrom/services/IQromNotificationManager$Stub;
.source "QromNotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;,
        Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    }
.end annotation


# static fields
.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NTF:Ljava/lang/String; = "notificaiton"

.field private static final ATTR_STATUS:Ljava/lang/String; = "status"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final CMD_PKG_INSTALL_NOTIFY:I = 0x1

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field public static final EXTRA_CMD_TPYE:Ljava/lang/String; = "cmd_type"

.field public static final EXTRA_PKG_INSTALL:Ljava/lang/String; = "bInstall"

.field public static final EXTRA_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "QromNotificationManagerService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final UPDATE_FLAG_ICON:I = 0x2

.field private static final UPDATE_FLAG_NTY:I = 0x0

.field private static final UPDATE_FLAG_STATUS:I = 0x1


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Landroid/app/INotificationManager;

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;

.field mThirdBlockedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 88
    iput-object v1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mNotificationMgr:Landroid/app/INotificationManager;

    .line 89
    iput-object v1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    .line 90
    iput-object v1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->resolver:Landroid/content/ContentResolver;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mAppList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    .line 113
    iput-object p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    .line 115
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mNotificationMgr:Landroid/app/INotificationManager;

    .line 117
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->loadBlockDb()V

    .line 119
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->resolver:Landroid/content/ContentResolver;

    .line 122
    return-void
.end method

.method private boolToString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 587
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 588
    .local v0, "mStr":I
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 587
    .end local v0    # "mStr":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containItem(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "mBlockedItem"    # Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, "mThirdBlockedItems":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 602
    .local v1, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->access$400(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    const/4 v2, 0x1

    .line 605
    .end local v1    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findItem(Ljava/lang/String;)Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 609
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 610
    .local v1, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    .end local v1    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAllTheLaunch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 519
    .local v1, "ra":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private getAppList()V
    .locals 9

    .prologue
    .line 490
    iget-object v7, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 492
    iget-object v7, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 493
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 494
    .local v4, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 495
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 496
    .local v3, "packInf":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 498
    .local v5, "pinfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x2000

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 503
    :goto_1
    if-nez v5, :cond_1

    .line 494
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 506
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isSystemPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isInBlackList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 507
    new-instance v6, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;

    invoke-direct {v6, p0}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 508
    .local v6, "shareInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->access$402(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    iget-object v7, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mAppList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 512
    .end local v3    # "packInf":Landroid/content/pm/PackageInfo;
    .end local v5    # "pinfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "shareInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    :cond_2
    return-void
.end method

.method private initBlackList()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    const-string v1, "com.android.OriginalSettings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    const-string v1, "com.tencent.nanji.updater"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method private initWhiteList()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.tencent.WBlog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    const-string v1, "com.android.OriginalSettings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method private isInBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->initBlackList()V

    .line 557
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const/4 v2, 0x1

    .line 562
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNotificationOnGoing(Landroid/app/Notification;)Z
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 617
    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 619
    .local v0, "mFlags":Z
    :goto_0
    return v0

    .line 617
    .end local v0    # "mFlags":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPhoneOrQrom(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->initWhiteList()V

    .line 547
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v2, 0x1

    .line 552
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 579
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 567
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isSystemUpdateApp(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    :cond_0
    const/4 v2, 0x1

    .line 573
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v2

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isSystemUpdateApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 583
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stringToBool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 592
    if-nez p1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateThirdBlockedItems(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mEnabled"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 450
    iget-object v7, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    monitor-enter v7

    .line 452
    :try_start_0
    iget-object v6, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 453
    .local v4, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$200(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v1

    .line 455
    .local v1, "bShowNty":Z
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$300(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v2

    .line 456
    .local v2, "bShowStatus":Z
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v4}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$100(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v0

    .line 457
    .local v0, "bShowIcon":Z
    new-instance v5, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 458
    .local v5, "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    if-nez p3, :cond_3

    .line 460
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v5, v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 461
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v5, v0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 462
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v5, p2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 473
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v6, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v0    # "bShowIcon":Z
    .end local v1    # "bShowNty":Z
    .end local v2    # "bShowStatus":Z
    .end local v4    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .end local v5    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_2
    monitor-exit v7

    .line 479
    return-void

    .line 463
    .restart local v0    # "bShowIcon":Z
    .restart local v1    # "bShowNty":Z
    .restart local v2    # "bShowStatus":Z
    .restart local v4    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .restart local v5    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_3
    const/4 v6, 0x1

    if-ne p3, v6, :cond_4

    .line 464
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v5, p2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 465
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v5, v0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 466
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v5, v1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    goto :goto_0

    .line 478
    .end local v0    # "bShowIcon":Z
    .end local v1    # "bShowNty":Z
    .end local v2    # "bShowStatus":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .end local v5    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 467
    .restart local v0    # "bShowIcon":Z
    .restart local v1    # "bShowNty":Z
    .restart local v2    # "bShowStatus":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .restart local v5    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_4
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 468
    :try_start_1
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v5, v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 469
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v5, p2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 470
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v5, v1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method ensureCallerSystem()V
    .locals 4

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 483
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 484
    :cond_0
    return-void

    .line 486
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public installDeletePackage(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "bInstall"    # Z

    .prologue
    const/4 v7, 0x1

    .line 222
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    monitor-enter v4

    .line 227
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->resolver:Landroid/content/ContentResolver;

    const-string v5, "notification_display_icon_label"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "currentIconValue":I
    if-eqz p2, :cond_4

    .line 229
    new-instance v2, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 230
    .local v2, "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    if-nez v0, :cond_1

    .line 232
    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 233
    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 249
    :goto_1
    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 250
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v2    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->writeBlockDb()V

    .line 258
    monitor-exit v4

    goto :goto_0

    .end local v0    # "currentIconValue":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 235
    .restart local v0    # "currentIconValue":I
    .restart local v2    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_1
    if-ne v0, v7, :cond_2

    .line 236
    const/4 v3, 0x0

    :try_start_1
    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 237
    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    goto :goto_1

    .line 240
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isPhoneOrQrom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 246
    :goto_3
    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    goto :goto_1

    .line 244
    :cond_3
    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    goto :goto_3

    .line 252
    .end local v2    # "mQromNotificationItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_4
    invoke-direct {p0, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->findItem(Ljava/lang/String;)Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    move-result-object v1

    .line 253
    .local v1, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    if-nez v1, :cond_5

    .line 254
    monitor-exit v4

    goto :goto_0

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public isNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isNotificationsEnabledForPackageInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isNotificationsEnabledForPackageInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x1

    .line 422
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 423
    .local v2, "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$200(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 434
    .end local v2    # "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_1
    return v0
.end method

.method public isStatusEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isStatusEnabledForPackageInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isStatusEnabledForPackageInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v0, 0x1

    .line 440
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 441
    .local v2, "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$300(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 446
    .end local v2    # "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_1
    return v0
.end method

.method loadBlockDb()V
    .locals 19

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 263
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->getAppList()V

    .line 264
    const-string v15, "QromNotificationManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mAppList size =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mAppList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "bWrite":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v15, :cond_4

    .line 268
    new-instance v6, Ljava/io/File;

    const-string v15, "/data/system/notification_policy.xml"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .local v6, "mFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 272
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v15, "/data/system"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "dir":Ljava/io/File;
    new-instance v15, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v15, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    const/4 v5, 0x0

    .line 287
    .local v5, "infile":Ljava/io/FileInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v15}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 288
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 289
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v10, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 293
    const/4 v14, 0x1

    .line 294
    .local v14, "version":I
    :cond_1
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v15, 0x1

    if-eq v13, v15, :cond_6

    .line 295
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "tag":Ljava/lang/String;
    const/4 v15, 0x2

    if-ne v13, v15, :cond_1

    .line 297
    const-string v15, "notification-policy"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 298
    const/4 v15, 0x0

    const-string v17, "version"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v14

    goto :goto_1

    .line 274
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "infile":Ljava/io/FileInputStream;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "version":I
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v1    # "bWrite":Z
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mFile":Ljava/io/File;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .line 299
    .restart local v1    # "bWrite":Z
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "infile":Ljava/io/FileInputStream;
    .restart local v6    # "mFile":Ljava/io/File;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    .restart local v14    # "version":I
    :cond_2
    :try_start_5
    const-string v15, "blocked-packages"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 300
    :cond_3
    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1

    .line 301
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 302
    const-string v15, "package"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x3

    if-ne v13, v15, :cond_5

    .line 304
    new-instance v8, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 305
    .local v8, "mItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    const/4 v15, 0x0

    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v8, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    const/4 v15, 0x0

    const-string v17, "notificaiton"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService;->stringToBool(Ljava/lang/String;)Z

    move-result v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v8, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 307
    const-string v15, "0"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService;->stringToBool(Ljava/lang/String;)Z

    move-result v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v8, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 308
    const/4 v15, 0x0

    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService;->stringToBool(Ljava/lang/String;)Z

    move-result v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v8, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 366
    .end local v8    # "mItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "version":I
    :catch_1
    move-exception v15

    .line 375
    :try_start_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "infile":Ljava/io/FileInputStream;
    .end local v6    # "mFile":Ljava/io/File;
    :cond_4
    :goto_3
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    return-void

    .line 310
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "infile":Ljava/io/FileInputStream;
    .restart local v6    # "mFile":Ljava/io/File;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v13    # "type":I
    .restart local v14    # "version":I
    :cond_5
    :try_start_7
    const-string v15, "blocked-packages"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x3

    if-ne v13, v15, :cond_3

    goto/16 :goto_1

    .line 324
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v12, "tmpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mAppList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;

    .line 327
    .local v7, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_9

    .line 328
    new-instance v9, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 329
    .local v9, "mNewItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v7}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->access$400(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;)Ljava/lang/String;

    move-result-object v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    const/4 v15, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 331
    const/4 v15, 0x0

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 332
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v7}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->access$400(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isPhoneOrQrom(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 333
    const/4 v15, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 336
    :goto_5
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v1, 0x1

    .line 340
    goto :goto_4

    .line 335
    :cond_8
    const/4 v15, 0x0

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 368
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    .end local v9    # "mNewItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tmpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;>;"
    .end local v13    # "type":I
    .end local v14    # "version":I
    :catch_2
    move-exception v3

    .line 369
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    const-string v15, "QromNotificationManagerService"

    const-string v17, "Unable to read blocked notifications database"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 375
    :try_start_9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tmpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;>;"
    .restart local v13    # "type":I
    .restart local v14    # "version":I
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService;->containItem(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 342
    new-instance v9, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;-><init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V

    .line 343
    .restart local v9    # "mNewItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v7}, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->access$400(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;)Ljava/lang/String;

    move-result-object v15

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    const/4 v15, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 345
    const/4 v15, 0x0

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 346
    const/4 v15, 0x1

    # setter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v9, v15}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z

    .line 347
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 356
    .end local v7    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    .end local v9    # "mNewItemInfo":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 357
    if-eqz v1, :cond_b

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->writeBlockDb()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 364
    const/4 v1, 0x0

    .line 375
    :cond_b
    :try_start_b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 370
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tmpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;>;"
    .end local v13    # "type":I
    .end local v14    # "version":I
    :catch_3
    move-exception v3

    .line 371
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v15, "QromNotificationManagerService"

    const-string v17, "Unable to parse blocked notifications database"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 375
    :try_start_d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 372
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v3

    .line 373
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    const-string v15, "QromNotificationManagerService"

    const-string v17, "Unable to parse blocked notifications database"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 375
    :try_start_f
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v15

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "flag"    # I
    .param p4, "id"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->ensureCallerSystem()V

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/services/QromNotificationManagerService;->updateThirdBlockedItems(Ljava/lang/String;ZI)V

    .line 134
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    .line 135
    const-string v2, "com.android.providers.downloads.ui"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const-string v3, "com.android.providers.downloads"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const-string v3, "com.android.providers.downloads.ui"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromNotificationManagerService;->writeBlockDb()V

    .line 173
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_3
    if-nez p2, :cond_1

    if-eqz p3, :cond_4

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 142
    :cond_4
    const-string v2, "com.android.providers.downloads.ui"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const-string v3, "com.android.providers.downloads"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const-string v3, "com.android.providers.downloads.ui"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    const-string p1, "com.android.providers.downloads"

    .line 151
    :goto_1
    const/4 v0, -0x1

    .line 152
    .local v0, "INVALID_VAL":I
    if-eq p4, v0, :cond_1

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mNotificationMgr:Landroid/app/INotificationManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "INVALID_VAL":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public shouldShowIcon(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x1

    .line 208
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 209
    .local v2, "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$100(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 215
    .end local v2    # "mBlockedItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    :cond_1
    return v0
.end method

.method public shouldShowNotification(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/services/QromNotificationManagerService;->isNotificationsEnabledForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method writeBlockDb()V
    .locals 9

    .prologue
    .line 382
    iget-object v6, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    monitor-enter v6

    .line 383
    const/4 v4, 0x0

    .line 385
    .local v4, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 387
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 388
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 390
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const/4 v5, 0x0

    const-string v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    iget-object v5, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mThirdBlockedItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .line 397
    .local v2, "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    const/4 v5, 0x0

    const-string v7, "name"

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const/4 v5, 0x0

    const-string v7, "notificaiton"

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$200(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/tencent/qrom/services/QromNotificationManagerService;->boolToString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const/4 v5, 0x0

    const-string v7, "status"

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$300(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/tencent/qrom/services/QromNotificationManagerService;->boolToString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    const/4 v5, 0x0

    const-string v7, "icon"

    # getter for: Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->access$100(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/tencent/qrom/services/QromNotificationManagerService;->boolToString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 411
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mItem":Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_0

    .line 413
    :try_start_1
    iget-object v5, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    return-void

    .line 405
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "blocked-packages"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 410
    iget-object v5, p0, Lcom/tencent/qrom/services/QromNotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 416
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method
