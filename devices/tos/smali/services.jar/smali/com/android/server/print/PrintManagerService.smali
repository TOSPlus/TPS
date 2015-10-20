.class public final Lcom/android/server/print/PrintManagerService;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    .line 77
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->registerContentObservers()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->registerBoradcastReceivers()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/print/PrintManagerService;)Lcom/android/server/print/UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/PrintManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/PrintManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/PrintManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->removeUser(I)V

    return-void
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/print/UserState;
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 529
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/android/server/print/UserState;

    .end local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    .line 531
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_0
    return-object v0
.end method

.method private registerBoradcastReceivers()V
    .locals 7

    .prologue
    .line 400
    new-instance v6, Lcom/android/server/print/PrintManagerService$3;

    invoke-direct {v6, p0}, Lcom/android/server/print/PrintManagerService$3;-><init>(Lcom/android/server/print/PrintManagerService;)V

    .line 502
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v6, v0, v1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 506
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 507
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/print/PrintManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/print/PrintManagerService$4;-><init>(Lcom/android/server/print/PrintManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 521
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    .line 380
    const-string v2, "enabled_print_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$2;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$2;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 395
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    return-void
.end method

.method private removeUser(I)V
    .locals 3
    .param p1, "removedUserId"    # I

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 560
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->destroyLocked()V

    .line 562
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 564
    :cond_0
    monitor-exit v2

    .line 565
    return-void

    .line 564
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .param p1, "appId"    # I

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 569
    .local v1, "callingUid":I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    .line 584
    :cond_0
    return p1

    .line 573
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 574
    .local v0, "callingAppId":I
    if-eq p1, v0, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without com.android.printspooler.permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, v3

    .line 627
    .end local p1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 619
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 622
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 623
    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 627
    goto :goto_0
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x3

    .line 588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 589
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_1

    .line 609
    .end local p1    # "userId":I
    :cond_0
    :goto_0
    return p1

    .line 593
    .restart local p1    # "userId":I
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 594
    .local v1, "callingUserId":I
    if-eq v1, p1, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 601
    :cond_2
    if-ne p1, v4, :cond_3

    move p1, v1

    .line 602
    goto :goto_0

    .line 604
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission INTERACT_ACROSS_USERS or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_4
    const/4 v2, -0x2

    if-eq p1, v2, :cond_5

    if-ne p1, v4, :cond_6

    .line 609
    :cond_5
    iget p1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    goto :goto_0

    .line 611
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 632
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 634
    .local v5, "userHandle":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x50000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 640
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080390

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10405e0

    new-array v10, v11, [Ljava/lang/Object;

    aput-object p2, v10, v1

    invoke-virtual {v3, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10405e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 649
    .local v6, "builder":Landroid/app/Notification$Builder;
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 652
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, "notificationTag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v7, v8, v1, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 655
    return-void
.end method

.method private switchUser(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .prologue
    .line 538
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_0
    iget v1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_0

    .line 540
    monitor-exit v2

    .line 555
    :goto_0
    return-void

    .line 542
    :cond_0
    iput p1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    .line 543
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 544
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 550
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    goto :goto_0

    .line 548
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    goto :goto_1

    .line 550
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 324
    .local v3, "resolvedUserId":I
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 326
    .local v2, "resolvedAppId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 327
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .line 328
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 331
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    return-void

    .line 328
    .end local v0    # "identity":J
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 333
    .restart local v0    # "identity":J
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 152
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 153
    .local v2, "resolvedAppId":I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 155
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 156
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .line 157
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-void

    .line 157
    .end local v0    # "identity":J
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 162
    .restart local v0    # "identity":J
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 215
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 217
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 218
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 219
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 222
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    return-void

    .line 219
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 224
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 231
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 233
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 234
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 235
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 238
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    return-void

    .line 235
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 240
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 355
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump PrintManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 364
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 366
    .local v1, "identity":J
    :try_start_1
    const-string v5, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 368
    .local v4, "userStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 369
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState;

    .line 370
    .local v3, "userState":Lcom/android/server/print/UserState;
    const-string v5, ""

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "i":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "userStateCount":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 376
    .end local v1    # "identity":J
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 374
    .restart local v0    # "i":I
    .restart local v1    # "identity":J
    .restart local v4    # "userStateCount":I
    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public getEnabledPrintServices(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 186
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 187
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 188
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledPrintServices()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    return-object v4

    .line 188
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 193
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getInstalledPrintServices(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 201
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 202
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 203
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 206
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getInstalledPrintServices()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return-object v4

    .line 203
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 208
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 136
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 137
    .local v2, "resolvedAppId":I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 139
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 140
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .line 141
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return-object v5

    .line 141
    .end local v0    # "identity":J
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 146
    .restart local v0    # "identity":J
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 7
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 121
    .local v2, "resolvedAppId":I
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 123
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 124
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .line 125
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 128
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return-object v5

    .line 125
    .end local v0    # "identity":J
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 130
    .restart local v0    # "identity":J
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I

    .prologue
    .line 102
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v5

    .line 103
    .local v5, "resolvedAppId":I
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v8

    .line 104
    .local v8, "resolvedUserId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "resolvedPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 108
    .local v0, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 111
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 114
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return-object v1

    .line 108
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v6    # "identity":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 114
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 340
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 342
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 343
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 344
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 347
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    return-void

    .line 344
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 349
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 168
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 169
    .local v2, "resolvedAppId":I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 171
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 172
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .line 173
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return-void

    .line 173
    .end local v0    # "identity":J
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 178
    .restart local v0    # "identity":J
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 249
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 250
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 251
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 254
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 251
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 256
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 6
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 292
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 294
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 295
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 296
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 299
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    return-void

    .line 296
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 301
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 262
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 264
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 265
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 266
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    return-void

    .line 266
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 271
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 6
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 307
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 309
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 310
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 311
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    return-void

    .line 311
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 316
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemRuning()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/PrintManagerService$1;-><init>(Lcom/android/server/print/PrintManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 279
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 280
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 281
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 284
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return-void

    .line 281
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 286
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
