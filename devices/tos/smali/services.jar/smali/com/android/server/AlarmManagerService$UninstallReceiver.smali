.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1452
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1456
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1458
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1459
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1462
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: powersave part::parkerxu::2015-09-15"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1470
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1471
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1472
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1473
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1474
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 1475
    const-string v1, "com.android.server.AlarmManagerService$UninstallReceiver#onReceive"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1476
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1480
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->tos_org_onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public tos_org_onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: powersave part::parkerxu::2015-09-15"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 1488
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1489
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "action":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1491
    .local v7, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1492
    const-string v9, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1493
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 1494
    .local v5, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v9, v5}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1495
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 1496
    monitor-exit v10

    .line 1528
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 1493
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1499
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    goto :goto_1

    .line 1527
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1500
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v7    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1501
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1521
    :cond_3
    :goto_2
    if-eqz v7, :cond_7

    array-length v9, v7

    if-lez v9, :cond_7

    .line 1522
    move-object v1, v7

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_7

    aget-object v6, v1, v3

    .line 1523
    .local v6, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v9, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 1524
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1502
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v9, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1503
    const-string v9, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1504
    .local v8, "userHandle":I
    if-ltz v8, :cond_3

    .line 1505
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 1508
    .end local v8    # "userHandle":I
    :cond_5
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1511
    monitor-exit v10

    goto :goto_1

    .line 1513
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1514
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 1515
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1516
    .restart local v6    # "pkg":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1517
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .end local v7    # "pkgList":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v6, v7, v9

    .restart local v7    # "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 1527
    .end local v2    # "data":Landroid/net/Uri;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
