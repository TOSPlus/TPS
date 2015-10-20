.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$1;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$DelayingProcess;
    }
.end annotation


# static fields
.field static final BG_START_TIMEOUT:I = 0x3a98

.field static final DEBUG_DELAYED_SERVICE:Z = false

.field static final DEBUG_DELAYED_STARTS:Z = false

.field static final DEBUG_MU:Z = false

.field static final DEBUG_SERVICE:Z = false

.field static final DEBUG_SERVICE_EXECUTING:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x3e8

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_MU:Ljava/lang/String; = "ActivityManagerServiceMU"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 116
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 242
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "maxBg":I
    :try_start_0
    const-string v1, "ro.config.max_starting_bg"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :goto_0
    if-lez v0, :cond_0

    .end local v0    # "maxBg":I
    :goto_1
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 249
    return-void

    .line 248
    .restart local v0    # "maxBg":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    .line 1528
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1546
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1547
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1548
    .local v0, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1549
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1552
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1554
    :try_start_0
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1555
    :catch_0
    move-exception v3

    .line 1556
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure disconnecting service "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " to connection "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1546
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1564
    .end local v0    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_3

    .line 1565
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_3

    .line 1566
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 1569
    .local v5, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v10, :cond_2

    .line 1571
    const/4 v10, 0x0

    :try_start_1
    const-string v11, "bring down unbind"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1572
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1573
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1574
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1565
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1576
    :catch_1
    move-exception v3

    .line 1577
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_4

    .line 1586
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_3
    iget v11, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_5

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_5
    invoke-static {v11, v12, v10}, Lcom/android/server/am/EventLogTags;->writeAmDestroyService(III)V

    .line 1589
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v9

    .line 1590
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v10, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v10, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1593
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 1596
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_6
    if-ltz v4, :cond_6

    .line 1597
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p1, :cond_4

    .line 1598
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1596
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 1586
    .end local v4    # "i":I
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_5
    const/4 v10, -0x1

    goto :goto_5

    .line 1603
    .restart local v4    # "i":I
    .restart local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1604
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1605
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1606
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1609
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 1610
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1612
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_7

    .line 1613
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    monitor-enter v11

    .line 1614
    :try_start_2
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 1615
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1616
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1617
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_7

    .line 1618
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1620
    const/4 v10, 0x0

    :try_start_3
    const-string v11, "destroy"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1621
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1623
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1638
    :cond_7
    :goto_7
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 1639
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 1642
    :cond_8
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v10, v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v10, :cond_9

    .line 1643
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 1646
    :cond_9
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 1647
    .local v6, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1648
    .local v7, "now":J
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v10, :cond_a

    .line 1649
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v7, v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 1650
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v7, v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 1651
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v10, :cond_a

    .line 1652
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 1653
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1657
    :cond_a
    invoke-virtual {v9, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    .line 1658
    return-void

    .line 1615
    .end local v6    # "memFactor":I
    .end local v7    # "now":J
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1624
    :catch_2
    move-exception v3

    .line 1625
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when destroying service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_7
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z

    .prologue
    .line 1266
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 1267
    const/4 v1, 0x0

    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1268
    const/4 v13, 0x0

    .line 1374
    :goto_0
    return-object v13

    .line 1271
    :cond_0
    if-nez p4, :cond_1

    iget-wide v3, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 1273
    const/4 v13, 0x0

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1285
    :cond_2
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_3

    .line 1287
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1288
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1293
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is stopped"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1298
    .local v13, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1305
    .end local v13    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v9, 0x1

    .line 1314
    .local v9, "isolated":Z
    :goto_2
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1317
    .local v2, "procName":Ljava/lang/String;
    if-nez v9, :cond_7

    .line 1318
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 1321
    .local v11, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_6

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_6

    .line 1323
    :try_start_1
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11, v1, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1324
    move/from16 v0, p3

    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1325
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1308
    .end local v2    # "procName":Ljava/lang/String;
    .end local v9    # "isolated":Z
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v12

    .line 1309
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1313
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 1326
    .restart local v2    # "procName":Ljava/lang/String;
    .restart local v9    # "isolated":Z
    .restart local v11    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v12

    .line 1327
    .local v12, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    if-nez v11, :cond_9

    .line 1346
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    const-string v6, "service"

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    if-nez v11, :cond_8

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": process is bad"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1352
    .restart local v13    # "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1340
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_7
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .restart local v11    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_3

    .line 1356
    :cond_8
    if-eqz v9, :cond_9

    .line 1357
    iput-object v11, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1361
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1362
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_a
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v1, :cond_b

    .line 1367
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1368
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_b

    .line 1370
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1374
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1307
    .end local v2    # "procName":Ljava/lang/String;
    .end local v9    # "isolated":Z
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1055
    .local v0, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_2

    .line 1056
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1057
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    .line 1058
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v2, v5, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 1061
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    .line 1062
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1064
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1065
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1072
    .end local v2    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1073
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1074
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 1075
    return-void

    .line 1068
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_1

    .line 1069
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1070
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1243
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v2, :cond_1

    .line 1246
    const/4 v1, 0x0

    .line 1247
    .local v1, "stillTracking":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-ne v2, v3, :cond_2

    .line 1249
    const/4 v1, 0x1

    .line 1253
    :cond_0
    if-nez v1, :cond_1

    .line 1254
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 1256
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1259
    .end local v0    # "i":I
    .end local v1    # "stillTracking":Z
    :cond_1
    return-void

    .line 1247
    .restart local v0    # "i":I
    .restart local v1    # "stillTracking":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1926
    const/4 v0, 0x0

    .line 1927
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1928
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1929
    .local v2, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_5

    .line 1931
    :cond_1
    if-nez p4, :cond_3

    move v0, v3

    .line 1947
    .end local v0    # "didSomething":Z
    .end local v2    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return v0

    .line 1934
    .restart local v0    # "didSomething":Z
    .restart local v2    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v0, 0x1

    .line 1935
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 1937
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1938
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_4

    .line 1939
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1942
    :cond_4
    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1943
    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1944
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .prologue
    .line 2642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2643
    .local v1, "innerPrefix":Ljava/lang/String;
    monitor-enter p0

    .line 2644
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "SERVICE "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2645
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2647
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2648
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2650
    :goto_0
    if-eqz p6, :cond_0

    .line 2651
    invoke-virtual {p4, p3, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2653
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2654
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 2655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 2658
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2660
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, v4, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2664
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2672
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    .line 2649
    :cond_2
    :try_start_4
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2653
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 2664
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2666
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    .line 2667
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2668
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2669
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    .line 916
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 917
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 2
    .param p1, "callingUser"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 265
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 267
    .restart local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    :cond_0
    return-object v0
.end method

.method private final isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1508
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_1

    .line 1520
    :cond_0
    :goto_0
    return v0

    .line 1513
    :cond_1
    if-nez p2, :cond_2

    .line 1514
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 1516
    :cond_2
    if-nez p3, :cond_0

    .line 1520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1388
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1394
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1397
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1398
    const-string v0, "create"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1402
    const/4 v6, 0x0

    .line 1405
    .local v6, "created":Z
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1406
    .local v7, "lastPeriod":I
    if-ltz v7, :cond_5

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1407
    .local v8, "nameTerm":Ljava/lang/String;
    :goto_0
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1, v8, v3, v5}, Lcom/android/server/am/EventLogTags;->writeAmCreateService(IILjava/lang/String;II)V

    .line 1409
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1410
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 1411
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1413
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1414
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v5, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v0, p1, v1, v3, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 1417
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1418
    const/4 v6, 0x1

    .line 1420
    if-nez v6, :cond_1

    .line 1421
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1422
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1423
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1427
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1432
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1433
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1439
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_3

    .line 1441
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1442
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1445
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_4

    .line 1447
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1448
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_4

    .line 1450
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1453
    :cond_4
    return-void

    .line 1406
    .end local v8    # "nameTerm":Ljava/lang/String;
    :cond_5
    :try_start_3
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1411
    .restart local v8    # "nameTerm":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1420
    .end local v7    # "lastPeriod":I
    .end local v8    # "nameTerm":Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-nez v6, :cond_6

    .line 1421
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1422
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1423
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    :cond_6
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1079
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v1

    .line 1083
    :cond_1
    iget-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v3, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1085
    :try_start_0
    const-string v3, "bind"

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1086
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1087
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v3, p1, v4, p4, v5}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 1089
    if-nez p4, :cond_3

    .line 1090
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1092
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1093
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v1, v2

    .line 1099
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z

    .prologue
    .line 1378
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1379
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 1380
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1384
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    return-void

    .line 1378
    .restart local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 26
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "createIfNeeded"    # Z
    .param p7, "callingFromFg"    # Z

    .prologue
    .line 947
    const/16 v21, 0x0

    .line 951
    .local v21, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "service"

    const/4 v10, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 954
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v24

    .line 955
    .local v24, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 956
    .local v18, "comp":Landroid/content/ComponentName;
    if-eqz v18, :cond_d

    .line 957
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 959
    .end local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_0

    .line 960
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 961
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 963
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    if-nez v3, :cond_6

    .line 965
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v9, 0x400

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 969
    .local v22, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 971
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v8, :cond_2

    .line 972
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " U="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": not found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v4, 0x0

    .line 1046
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v4

    .line 969
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 976
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    .local v6, "name":Landroid/content/ComponentName;
    if-lez p5, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 981
    const/16 p5, 0x0

    .line 982
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v24

    .line 984
    :cond_3
    new-instance v23, Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 985
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p5

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v23

    .line 987
    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 988
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "r":Lcom/android/server/am/ServiceRecord;
    if-nez v21, :cond_c

    if-eqz p6, :cond_c

    .line 989
    :try_start_1
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 991
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 992
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    .line 993
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v25

    .line 994
    .local v25, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v25
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 995
    :try_start_2
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v5

    .line 998
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 999
    :try_start_3
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1000
    .end local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_4
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 1001
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .local v19, "i":I
    :goto_3
    if-ltz v19, :cond_6

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ServiceRecord;

    .line 1007
    .local v20, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v9, :cond_5

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1005
    :cond_5
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 998
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "i":I
    .end local v20    # "pr":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1013
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v25    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v4

    move-object/from16 v3, v21

    .line 1017
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_6
    :goto_4
    if-eqz v3, :cond_b

    .line 1018
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v16, v0

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-eqz v4, :cond_8

    .line 1021
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v4, :cond_7

    .line 1022
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " that is not exported from uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not exported from uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1029
    :cond_7
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1035
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p3

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1037
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1040
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/TOSIntentFirewall;->get(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/TOSIntentFirewall;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/android/server/am/TOSIntentFirewall;->checkService(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;II)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1041
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1044
    :cond_a
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1046
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1013
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_c
    move-object/from16 v3, v21

    .end local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_d
    move-object/from16 v3, v21

    .end local v21    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 25
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    .prologue
    .line 1104
    const/4 v4, 0x0

    .line 1106
    .local v4, "canceled":Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v18

    .line 1107
    .local v18, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1108
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 1109
    .local v5, "cur":Lcom/android/server/am/ServiceRecord;
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Attempting to schedule restart of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " when found in map: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v19, 0x0

    .line 1213
    .end local v5    # "cur":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return v19

    .line 1114
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1116
    .local v11, "now":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_f

    .line 1118
    const-wide/16 v9, 0x3e8

    .line 1119
    .local v9, "minDuration":J
    const-wide/32 v15, 0xea60

    .line 1123
    .local v15, "resetTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1124
    .local v3, "N":I
    if-lez v3, :cond_7

    .line 1125
    add-int/lit8 v8, v3, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_6

    .line 1126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1127
    .local v17, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1128
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1125
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1130
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1132
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v21, v0

    sub-long v6, v19, v21

    .line 1134
    .local v6, "dur":J
    const-wide/16 v19, 0x2

    mul-long v6, v6, v19

    .line 1135
    cmp-long v19, v9, v6

    if-gez v19, :cond_4

    move-wide v9, v6

    .line 1136
    :cond_4
    cmp-long v19, v15, v6

    if-gez v19, :cond_1

    move-wide v15, v6

    goto :goto_2

    .line 1138
    .end local v6    # "dur":J
    :cond_5
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Canceling start item "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v4, 0x1

    goto :goto_2

    .line 1143
    .end local v17    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1146
    .end local v8    # "i":I
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1147
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_c

    .line 1148
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1149
    move-object/from16 v0, p1

    iput-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1167
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    add-long v19, v19, v11

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1173
    :cond_9
    const/4 v14, 0x0

    .line 1174
    .local v14, "repeat":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_a

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 1176
    .local v13, "r2":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    iget-wide v0, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x2710

    sub-long v21, v21, v23

    cmp-long v19, v19, v21

    if-ltz v19, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    iget-wide v0, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x2710

    add-long v21, v21, v23

    cmp-long v19, v19, v21

    if-gez v19, :cond_e

    .line 1180
    iget-wide v0, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1181
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v19, v11

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1182
    const/4 v14, 0x1

    .line 1186
    .end local v13    # "r2":Lcom/android/server/am/ServiceRecord;
    :cond_a
    if-nez v14, :cond_9

    .line 1197
    .end local v3    # "N":I
    .end local v8    # "i":I
    .end local v9    # "minDuration":J
    .end local v14    # "repeat":Z
    .end local v15    # "resetTime":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1198
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 1203
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1208
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Scheduling restart of crashed service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/16 v19, 0x7553

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move/from16 v19, v4

    .line 1213
    goto/16 :goto_0

    .line 1156
    .restart local v3    # "N":I
    .restart local v9    # "minDuration":J
    .restart local v15    # "resetTime":J
    :cond_c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v19, v0

    add-long v19, v19, v15

    cmp-long v19, v11, v19

    if-lez v19, :cond_d

    .line 1157
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1158
    move-object/from16 v0, p1

    iput-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1160
    :cond_d
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x4

    mul-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1161
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, v9

    if-gez v19, :cond_8

    .line 1162
    move-object/from16 v0, p1

    iput-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1174
    .restart local v8    # "i":I
    .restart local v13    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v14    # "repeat":Z
    :cond_e
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    .line 1191
    .end local v3    # "N":I
    .end local v8    # "i":I
    .end local v9    # "minDuration":J
    .end local v13    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v14    # "repeat":Z
    .end local v15    # "resetTime":J
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1192
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1193
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1194
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto/16 :goto_5
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1457
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1458
    .local v6, "N":I
    if-nez v6, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1464
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1467
    .local v8, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    if-gt v6, v9, :cond_1

    .line 1474
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 1475
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1477
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v0, :cond_3

    .line 1478
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1481
    :cond_3
    const-string v0, "start"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1482
    if-nez p3, :cond_4

    .line 1483
    const/4 p3, 0x1

    .line 1484
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1486
    :cond_4
    const/4 v4, 0x0

    .line 1487
    .local v4, "flags":I
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v0, v9, :cond_5

    .line 1488
    or-int/lit8 v4, v4, 0x2

    .line 1490
    :cond_5
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v0, :cond_6

    .line 1491
    or-int/lit8 v4, v4, 0x1

    .line 1493
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, v8, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v3, v8, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1494
    .end local v4    # "flags":I
    .end local v8    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :catch_0
    move-exception v7

    .line 1498
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1499
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1500
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1817
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1818
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v1, :cond_5

    .line 1819
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 1822
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1823
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1824
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 1827
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1837
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1840
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1841
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1843
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1845
    :cond_2
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1846
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_3

    .line 1847
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 1849
    if-eqz p3, :cond_3

    .line 1850
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, p1, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 1851
    iput-object v6, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1854
    :cond_3
    if-eqz p3, :cond_5

    .line 1855
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_4

    .line 1856
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1858
    :cond_4
    iput-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1861
    :cond_5
    return-void

    .line 1828
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_0

    .line 1830
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 1831
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_7

    .line 1832
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    goto :goto_0

    .line 1830
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1801
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v3, :cond_0

    .line 1802
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 1803
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1804
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 1805
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 1806
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 1808
    .end local v0    # "memFactor":I
    .end local v1    # "now":J
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1809
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v4, 0x0

    .line 421
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 439
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 431
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 433
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 437
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 438
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1225
    if-nez p3, :cond_0

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1226
    const/4 v1, 0x0

    .line 1239
    :goto_0
    return v1

    .line 1231
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1232
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 1233
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1235
    :cond_2
    if-eqz v0, :cond_3

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1238
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1239
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z
    .locals 9
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;

    .prologue
    const/4 v7, 0x0

    .line 608
    if-eqz p2, :cond_1

    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_1

    .line 609
    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v7

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 617
    .local v0, "anyClientActivities":Z
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_6

    if-nez v0, :cond_6

    .line 618
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 619
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "conni":I
    :goto_2
    if-ltz v2, :cond_5

    if-nez v0, :cond_5

    .line 620
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 621
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "cri":I
    :goto_3
    if-ltz v4, :cond_4

    .line 622
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 623
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_3

    .line 621
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 627
    :cond_3
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 628
    const/4 v0, 0x1

    .line 619
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 617
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "cri":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 634
    .end local v2    # "conni":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_6
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-eq v0, v8, :cond_0

    .line 635
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    .line 636
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v0, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 637
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "anyForeground":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 592
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 593
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_2

    .line 594
    const/4 v0, 0x1

    .line 598
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eq v0, v3, :cond_1

    .line 599
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    .line 600
    if-eqz p2, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 604
    :cond_1
    return-void

    .line 591
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1864
    const/4 v1, 0x0

    .line 1866
    .local v1, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1867
    const/4 v4, 0x0

    .line 1869
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1870
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    move-object v4, v0

    .line 1871
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_1

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1869
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1876
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1877
    add-int/lit8 v3, v3, -0x1

    .line 1878
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1879
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    const/4 v1, 0x1

    goto :goto_1

    .line 1882
    :catch_0
    move-exception v2

    .line 1883
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in new application when starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1885
    throw v2

    .line 1892
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1893
    const/4 v4, 0x0

    .line 1894
    .restart local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1895
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1896
    .restart local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1894
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1900
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1901
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1904
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 22
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "userId"    # I

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 649
    .local v12, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v12, :cond_0

    .line 650
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when binding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_0
    const/4 v10, 0x0

    .line 657
    .local v10, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_1

    .line 658
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 659
    if-nez v10, :cond_1

    .line 660
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding with unknown activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v4, 0x0

    .line 798
    :goto_0
    return v4

    .line 665
    :cond_1
    const/4 v14, 0x0

    .line 666
    .local v14, "clientLabel":I
    const/4 v13, 0x0

    .line 668
    .local v13, "clientIntent":Landroid/app/PendingIntent;
    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    .line 673
    :try_start_0
    const-string v4, "android.intent.extra.client_intent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/PendingIntent;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    :goto_1
    if-eqz v13, :cond_2

    .line 678
    const-string v4, "android.intent.extra.client_label"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 679
    if-eqz v14, :cond_2

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p3

    .line 688
    :cond_2
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    .line 690
    .local v9, "callerFg":Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v19

    .line 693
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v19, :cond_4

    .line 694
    const/4 v4, 0x0

    goto :goto_0

    .line 688
    .end local v9    # "callerFg":Z
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 696
    .restart local v9    # "callerFg":Z
    .restart local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_4
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_5

    .line 697
    const/4 v4, -0x1

    goto :goto_0

    .line 699
    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v20, v0

    .line 701
    .local v20, "s":Lcom/android/server/am/ServiceRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 704
    .local v17, "origId":J
    :try_start_1
    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 709
    :cond_6
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_7

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 711
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_7

    .line 713
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v21

    .line 714
    .local v21, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v21, :cond_7

    .line 715
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 721
    .end local v21    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v3

    .line 722
    .local v3, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v2, Lcom/android/server/am/ConnectionRecord;

    move-object v4, v10

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v14

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    .line 725
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 726
    .local v11, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 727
    .local v15, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v15, :cond_8

    .line 728
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .restart local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_8
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 733
    if-eqz v10, :cond_a

    .line 734
    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v4, :cond_9

    .line 735
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 737
    :cond_9
    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_a
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 740
    iget v4, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    .line 741
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 743
    :cond_b
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_c

    .line 744
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z

    .line 746
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v15, Ljava/util/ArrayList;

    .line 747
    .restart local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v15, :cond_d

    .line 748
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .restart local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_d
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_e

    .line 754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_e

    .line 756
    const/4 v4, 0x0

    .line 795
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 760
    :cond_e
    :try_start_2
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_f

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    iget-object v7, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 771
    :cond_f
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_11

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_11

    .line 775
    :try_start_3
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v4, v5, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 785
    :goto_3
    :try_start_4
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v4, :cond_10

    .line 786
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 792
    :cond_10
    :goto_4
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 795
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 776
    :catch_0
    move-exception v16

    .line 777
    .local v16, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure sending service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 795
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v11    # "binder":Landroid/os/IBinder;
    .end local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 788
    .restart local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v11    # "binder":Landroid/os/IBinder;
    .restart local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_11
    :try_start_6
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v4, :cond_10

    .line 789
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 675
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v9    # "callerFg":Z
    .end local v11    # "binder":Landroid/os/IBinder;
    .end local v15    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v17    # "origId":J
    .end local v19    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v20    # "s":Lcom/android/server/am/ServiceRecord;
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1978
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    .local v8, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 1980
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1981
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1982
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1988
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1989
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1990
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1992
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remove task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1988
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1995
    :cond_3
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2000
    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_2

    .line 2005
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .prologue
    .line 2567
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2569
    .local v18, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    monitor-enter p0

    .line 2570
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v21

    .line 2571
    .local v21, "users":[I
    const-string v2, "all"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2572
    move-object/from16 v10, v21

    .local v10, "arr$":[I
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 2573
    .local v20, "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2574
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_1

    .line 2572
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2577
    :cond_1
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 2578
    .local v9, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 2579
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2580
    .local v17, "r1":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2584
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_2
    if-eqz p3, :cond_5

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 2586
    .local v11, "componentName":Landroid/content/ComponentName;
    :goto_2
    const/16 v16, 0x0

    .line 2587
    .local v16, "objectId":I
    if-nez v11, :cond_3

    .line 2590
    const/16 v2, 0x10

    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 2591
    const/16 p3, 0x0

    .line 2592
    const/4 v11, 0x0

    .line 2597
    :cond_3
    :goto_3
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[I
    :try_start_2
    array-length v14, v10

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_4
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 2598
    .restart local v20    # "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2599
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_6

    .line 2597
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2584
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 2602
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    :cond_6
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 2603
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 2604
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2605
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    if-eqz v11, :cond_8

    .line 2606
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2607
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2609
    :cond_8
    if-eqz p3, :cond_9

    .line 2610
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2611
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2619
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    .end local v21    # "users":[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2613
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    .restart local v21    # "users":[I
    :cond_9
    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 2614
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2619
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2621
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 2622
    const/4 v2, 0x0

    .line 2633
    :goto_7
    return v2

    .line 2625
    :cond_b
    const/4 v15, 0x0

    .line 2626
    .local v15, "needSep":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_d

    .line 2627
    if-eqz v15, :cond_c

    .line 2628
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2630
    :cond_c
    const/4 v15, 0x1

    .line 2631
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 2626
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2633
    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    .line 2593
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "needSep":Z
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "objectId":I
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 35
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 2325
    const/16 v17, 0x0

    .line 2326
    .local v17, "needSep":Z
    const/16 v21, 0x0

    .line 2328
    .local v21, "printedAnything":Z
    new-instance v16, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 2329
    .local v16, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 2331
    const-string v30, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v29

    .line 2334
    .local v29, "users":[I
    move-object/from16 v6, v29

    .local v6, "arr$":[I
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_a

    aget v28, v6, v13

    .line 2335
    .local v28, "user":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v26

    .line 2336
    .local v26, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v20, 0x0

    .line 2337
    .local v20, "printed":Z
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-lez v30, :cond_d

    .line 2338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 2339
    .local v18, "nowReal":J
    const/16 v17, 0x0

    .line 2340
    const/16 v25, 0x0

    .local v25, "si":I
    :goto_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 2341
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2342
    .local v23, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 2340
    :cond_0
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 2345
    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 2348
    :cond_2
    if-nez v20, :cond_4

    .line 2349
    if-eqz v21, :cond_3

    .line 2350
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2352
    :cond_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " active services:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    const/16 v20, 0x1

    .line 2355
    :cond_4
    const/16 v21, 0x1

    .line 2356
    if-eqz v17, :cond_5

    .line 2357
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2359
    :cond_5
    const-string v30, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2361
    if-eqz p5, :cond_7

    .line 2362
    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2363
    const/16 v17, 0x1

    .line 2389
    :cond_6
    if-eqz p6, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 2390
    const-string v30, "    Client:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2393
    :try_start_1
    new-instance v27, Lcom/android/internal/os/TransferPipe;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2395
    .local v27, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2397
    const-string v30, "      "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2400
    const-wide/16 v30, 0x7d0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2402
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2409
    .end local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 2365
    :cond_7
    :try_start_4
    const-string v30, "    app="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2366
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2367
    const-string v30, "    created="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v18

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2369
    const-string v30, " started="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2370
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v30, v0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2371
    const-string v30, " connections="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2372
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2373
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-lez v30, :cond_6

    .line 2374
    const-string v30, "    Connections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    const/4 v9, 0x0

    .local v9, "conni":I
    :goto_4
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_6

    .line 2376
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2377
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_9

    .line 2378
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 2379
    .local v8, "conn":Lcom/android/server/am/ConnectionRecord;
    const-string v30, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    const-string v30, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2383
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    .line 2384
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v22, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v30

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2384
    :cond_8
    const-string v30, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2375
    .end local v8    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 2402
    .end local v7    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v9    # "conni":I
    .end local v12    # "i":I
    .restart local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v30

    :try_start_5
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v30
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2404
    .end local v27    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v11

    .line 2405
    .local v11, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "      Failure while dumping the service: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 2453
    .end local v6    # "arr$":[I
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "nowReal":J
    .end local v20    # "printed":Z
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v25    # "si":I
    .end local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v28    # "user":I
    .end local v29    # "users":[I
    :catch_1
    move-exception v11

    .line 2454
    .local v11, "e":Ljava/lang/Exception;
    const-string v30, "ActivityManager"

    const-string v31, "Exception in dumpServicesLocked"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2457
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1f

    .line 2458
    const/16 v20, 0x0

    .line 2459
    .restart local v20    # "printed":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_1e

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2461
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_1a

    .line 2459
    :cond_b
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 2406
    .end local v12    # "i":I
    .restart local v6    # "arr$":[I
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "nowReal":J
    .restart local v25    # "si":I
    .restart local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v28    # "user":I
    .restart local v29    # "users":[I
    :catch_2
    move-exception v11

    .line 2407
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v30, "      Got a RemoteException while dumping the service"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2412
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_c
    or-int v17, v17, v20

    .line 2414
    .end local v18    # "nowReal":J
    .end local v25    # "si":I
    :cond_d
    const/16 v20, 0x0

    .line 2415
    const/16 v25, 0x0

    .restart local v25    # "si":I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "SN":I
    :goto_9
    move/from16 v0, v25

    if-ge v0, v5, :cond_13

    .line 2416
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2417
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_f

    .line 2415
    :cond_e
    :goto_a
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 2420
    :cond_f
    if-eqz p7, :cond_10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 2423
    :cond_10
    if-nez v20, :cond_12

    .line 2424
    if-eqz v21, :cond_11

    .line 2425
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2427
    :cond_11
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " delayed start services:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    const/16 v20, 0x1

    .line 2430
    :cond_12
    const/16 v21, 0x1

    .line 2431
    const-string v30, "  * Delayed start "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    .line 2433
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_13
    const/16 v20, 0x0

    .line 2434
    const/16 v25, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_b
    move/from16 v0, v25

    if-ge v0, v5, :cond_19

    .line 2435
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2436
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_15

    .line 2434
    :cond_14
    :goto_c
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 2439
    :cond_15
    if-eqz p7, :cond_16

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 2442
    :cond_16
    if-nez v20, :cond_18

    .line 2443
    if-eqz v21, :cond_17

    .line 2444
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2446
    :cond_17
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " starting in background:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    const/16 v20, 0x1

    .line 2449
    :cond_18
    const/16 v21, 0x1

    .line 2450
    const-string v30, "  * Starting bg "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_c

    .line 2334
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2464
    .end local v5    # "SN":I
    .end local v6    # "arr$":[I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v25    # "si":I
    .end local v26    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v28    # "user":I
    .end local v29    # "users":[I
    .restart local v12    # "i":I
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1a
    if-eqz p7, :cond_1b

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 2467
    :cond_1b
    const/16 v21, 0x1

    .line 2468
    if-nez v20, :cond_1d

    .line 2469
    if-eqz v17, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2470
    :cond_1c
    const/16 v17, 0x1

    .line 2471
    const-string v30, "  Pending services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    const/16 v20, 0x1

    .line 2474
    :cond_1d
    const-string v30, "  * Pending "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2475
    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2477
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1e
    const/16 v17, 0x1

    .line 2480
    .end local v12    # "i":I
    .end local v20    # "printed":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_26

    .line 2481
    const/16 v20, 0x0

    .line 2482
    .restart local v20    # "printed":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_25

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2484
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_21

    .line 2482
    :cond_20
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 2487
    :cond_21
    if-eqz p7, :cond_22

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 2490
    :cond_22
    const/16 v21, 0x1

    .line 2491
    if-nez v20, :cond_24

    .line 2492
    if-eqz v17, :cond_23

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2493
    :cond_23
    const/16 v17, 0x1

    .line 2494
    const-string v30, "  Restarting services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    const/16 v20, 0x1

    .line 2497
    :cond_24
    const-string v30, "  * Restarting "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2498
    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_e

    .line 2500
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_25
    const/16 v17, 0x1

    .line 2503
    .end local v12    # "i":I
    .end local v20    # "printed":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_2d

    .line 2504
    const/16 v20, 0x0

    .line 2505
    .restart local v20    # "printed":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_2c

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 2507
    .restart local v23    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_28

    .line 2505
    :cond_27
    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 2510
    :cond_28
    if-eqz p7, :cond_29

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 2513
    :cond_29
    const/16 v21, 0x1

    .line 2514
    if-nez v20, :cond_2b

    .line 2515
    if-eqz v17, :cond_2a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2516
    :cond_2a
    const/16 v17, 0x1

    .line 2517
    const-string v30, "  Destroying services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2518
    const/16 v20, 0x1

    .line 2520
    :cond_2b
    const-string v30, "  * Destroy "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2521
    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_10

    .line 2523
    .end local v23    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2c
    const/16 v17, 0x1

    .line 2526
    .end local v12    # "i":I
    .end local v20    # "printed":Z
    :cond_2d
    if-eqz p5, :cond_34

    .line 2527
    const/16 v20, 0x0

    .line 2528
    .restart local v20    # "printed":Z
    const/4 v14, 0x0

    .local v14, "ic":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v14, v0, :cond_34

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 2530
    .local v24, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_33

    .line 2531
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 2532
    .local v10, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v30, v0

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_2f

    .line 2530
    :cond_2e
    :goto_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 2535
    :cond_2f
    if-eqz p7, :cond_30

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2e

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2e

    .line 2539
    :cond_30
    const/16 v21, 0x1

    .line 2540
    if-nez v20, :cond_32

    .line 2541
    if-eqz v17, :cond_31

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2542
    :cond_31
    const/16 v17, 0x1

    .line 2543
    const-string v30, "  Connection bindings to services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    const/16 v20, 0x1

    .line 2546
    :cond_32
    const-string v30, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2547
    const-string v30, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    .line 2528
    .end local v10    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_33
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_11

    .line 2552
    .end local v12    # "i":I
    .end local v14    # "ic":I
    .end local v20    # "printed":Z
    .end local v24    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_34
    if-nez v21, :cond_35

    .line 2553
    const-string v30, "  (nothing)"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    :cond_35
    return-void
.end method

.method forceStopLocked(Ljava/lang/String;IZZ)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z

    .prologue
    .line 1951
    const/4 v8, 0x0

    .line 1952
    .local v8, "didSomething":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1953
    .local v6, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1954
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1955
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1957
    if-nez p4, :cond_0

    if-eqz v8, :cond_0

    .line 1958
    const/4 v0, 0x1

    .line 1974
    :goto_1
    return v0

    .line 1954
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1962
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1963
    .local v10, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v10, :cond_2

    .line 1964
    iget-object v5, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .local v5, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1965
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z

    move-result v8

    .line 1970
    .end local v5    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1971
    .local v7, "N":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v7, :cond_3

    .line 1972
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1971
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v0, v8

    .line 1974
    goto :goto_1
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2256
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 2257
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    .line 2258
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2259
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2260
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 2262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 2267
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :goto_2
    return-object v5

    .line 2260
    .restart local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "conni":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2258
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2267
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .locals 14
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2208
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2210
    .local v2, "ident":J
    :try_start_0
    const-string v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_2

    .line 2213
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v11

    .line 2214
    .local v11, "users":[I
    const/4 v8, 0x0

    .local v8, "ui":I
    :goto_0
    array-length v12, v11

    if-ge v8, v12, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_1

    .line 2215
    aget v12, v11, v8

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2216
    .local v0, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_0

    .line 2217
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2218
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2214
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2222
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2223
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2224
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2226
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2227
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2230
    .end local v1    # "i":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "ui":I
    .end local v11    # "users":[I
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2231
    .local v10, "userId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2232
    .restart local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_3

    .line 2233
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2234
    .restart local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2232
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2237
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2238
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2239
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v12, v10, :cond_4

    .line 2240
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2242
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2243
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2248
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "userId":I
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2251
    return-object v6

    .line 2248
    .end local v1    # "i":I
    :catchall_0
    move-exception v12

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .prologue
    .line 255
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServices(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServices(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 260
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    .prologue
    .line 2037
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 2038
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 2039
    .local v8, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    monitor-enter v10

    .line 2040
    :try_start_0
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 2041
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2042
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v9, p1, :cond_0

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v9, :cond_0

    .line 2043
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2045
    :cond_0
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2046
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2047
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2048
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2049
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2053
    :cond_1
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2054
    .local v5, "numClients":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "bindingi":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2055
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 2058
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2059
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2054
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2041
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "bindingi":I
    .end local v5    # "numClients":I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2037
    .restart local v1    # "bindingi":I
    .restart local v5    # "numClients":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2064
    .end local v1    # "bindingi":I
    .end local v5    # "numClients":I
    .end local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_2
    if-ltz v4, :cond_4

    .line 2065
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2066
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v9, 0x0

    invoke-virtual {p0, v6, p1, v9}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2064
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2068
    .end local v6    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 2070
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v9}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 2073
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_3
    if-ltz v4, :cond_c

    .line 2074
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 2078
    .restart local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v9, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v9, :cond_5

    .line 2079
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 2084
    :cond_5
    iget-object v9, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v8, :cond_7

    .line 2085
    iget-object v9, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 2086
    .local v3, "cur":Lcom/android/server/am/ServiceRecord;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not same as in map: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2093
    :cond_7
    if-eqz p2, :cond_8

    iget v9, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_8

    .line 2095
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Service crashed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, stopping: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/16 v9, 0x7552

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v8, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2099
    invoke-direct {p0, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_4

    .line 2100
    :cond_8
    if-nez p2, :cond_9

    .line 2101
    invoke-direct {p0, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_4

    .line 2103
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v2

    .line 2108
    .local v2, "canceled":Z
    iget-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v9, :cond_6

    iget-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v9, :cond_a

    if-eqz v2, :cond_6

    .line 2109
    :cond_a
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 2110
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 2111
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v9, :cond_b

    .line 2112
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2115
    :cond_b
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2117
    invoke-direct {p0, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_4

    .line 2124
    .end local v2    # "canceled":Z
    .end local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_c
    if-nez p2, :cond_10

    .line 2125
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 2128
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_5
    if-ltz v4, :cond_e

    .line 2129
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2130
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_d

    .line 2132
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2133
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2128
    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 2136
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_e
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_6
    if-ltz v4, :cond_10

    .line 2137
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2138
    .restart local v6    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_f

    .line 2140
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2136
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 2146
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_10
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2147
    :cond_11
    :goto_7
    if-lez v4, :cond_12

    .line 2148
    add-int/lit8 v4, v4, -0x1

    .line 2149
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 2150
    .restart local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, p1, :cond_11

    .line 2151
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2152
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 2157
    .end local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_12
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 2158
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 2161
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 2163
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 2164
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 2165
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 2167
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 2168
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 2169
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 2170
    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 2171
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 2172
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 2173
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 2174
    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 2175
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 2176
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2178
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_2

    .line 2179
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2181
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_3

    .line 2182
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2184
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_4

    .line 2185
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2188
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2189
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2190
    .local v2, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2191
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 2192
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_6

    .line 2193
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 2194
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 2199
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_5
    return-object v4

    .line 2190
    .restart local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .restart local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2188
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 11
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v9

    .line 478
    .local v9, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v10, 0x0

    .line 479
    .local v10, "ret":Landroid/os/IBinder;
    if-eqz v9, :cond_1

    .line 481
    iget-object v0, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    iget-object v0, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    .line 489
    .local v8, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v8, :cond_1

    .line 490
    iget-object v10, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 494
    .end local v8    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    return-object v10
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    goto :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1909
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1910
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 1913
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1915
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1916
    add-int/lit8 v0, v0, -0x1

    .line 1917
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1908
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1920
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 806
    .local v7, "origId":J
    if-eqz p1, :cond_3

    .line 807
    :try_start_0
    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 809
    .local v5, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 810
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_2

    iget-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v9, :cond_2

    .line 811
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 812
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 813
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 814
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_2

    .line 815
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 816
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 817
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 818
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v9, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v9}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 816
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 829
    :cond_0
    :try_start_1
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v9, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 830
    :catch_0
    move-exception v4

    .line 831
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 842
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "i":I
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 814
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "conni":I
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v6    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 839
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v6    # "i":I
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 842
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v10, 0x0

    .line 1662
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1663
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1664
    .local v0, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1665
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1666
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    .line 1667
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1668
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1669
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1673
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p3, :cond_1

    .line 1674
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    .line 1675
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1678
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v6, p2, :cond_3

    .line 1679
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1680
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    .line 1681
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 1683
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3

    .line 1684
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z

    .line 1687
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1688
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_4

    .line 1689
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1690
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1691
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    :cond_4
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 1696
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v6, :cond_9

    .line 1702
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_7

    .line 1705
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "unbind"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1706
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v6, v7, :cond_6

    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0x8

    if-gt v6, v7, :cond_6

    .line 1711
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1713
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1714
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1717
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1718
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    :cond_7
    :goto_0
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 1726
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    .line 1727
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_8

    .line 1728
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_8

    .line 1729
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 1733
    :cond_8
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1736
    .end local v4    # "hasAutoCreate":Z
    :cond_9
    return-void

    .line 1719
    :catch_0
    move-exception v3

    .line 1720
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unbinding service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2309
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    .line 2318
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2313
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2315
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2316
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x4e20

    add-long/2addr v3, v1

    :goto_1
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x30d40

    add-long/2addr v3, v1

    goto :goto_1
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1739
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1740
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_2

    .line 1741
    if-ne p2, v5, :cond_1

    .line 1744
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1745
    sparse-switch p4, :sswitch_data_0

    .line 1784
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown service start result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1749
    :sswitch_0
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1751
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 1787
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 1788
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1791
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1792
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1793
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1798
    .end local v1    # "origId":J
    :goto_1
    return-void

    .line 1756
    :sswitch_1
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1757
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 1760
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 1768
    :sswitch_2
    invoke-virtual {p1, p3, v6}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v3

    .line 1769
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v3, :cond_0

    .line 1770
    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1771
    iget v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 1773
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 1780
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_0

    .line 1795
    :cond_2
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done executing unknown service from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1745
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 14
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    .line 2271
    const/4 v5, 0x0

    .line 2273
    .local v5, "anrMessage":Ljava/lang/String;
    monitor-enter p0

    .line 2274
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_2

    .line 2275
    :cond_0
    monitor-exit p0

    .line 2306
    :cond_1
    :goto_0
    return-void

    .line 2277
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x4e20

    :goto_1
    int-to-long v0, v0

    sub-long v7, v3, v0

    .line 2279
    .local v7, "maxTime":J
    const/4 v13, 0x0

    .line 2280
    .local v13, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v10, 0x0

    .line 2281
    .local v10, "nextTime":J
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_3

    .line 2282
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 2283
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_5

    .line 2284
    move-object v13, v12

    .line 2291
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    if-eqz v13, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2292
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout executing service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2301
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    if-eqz v5, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_0

    .line 2277
    .end local v6    # "i":I
    .end local v7    # "maxTime":J
    .end local v10    # "nextTime":J
    .end local v13    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_4
    const v0, 0x30d40

    goto :goto_1

    .line 2287
    .restart local v6    # "i":I
    .restart local v7    # "maxTime":J
    .restart local v10    # "nextTime":J
    .restart local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v13    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_1
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_6

    .line 2288
    iget-wide v10, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2281
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2295
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2297
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2298
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x4e20

    add-long/2addr v0, v10

    :goto_4
    invoke-virtual {v3, v9, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_3

    .line 2301
    .end local v6    # "i":I
    .end local v7    # "maxTime":J
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "nextTime":J
    .end local v13    # "timeout":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2298
    .restart local v6    # "i":I
    .restart local v7    # "maxTime":J
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "nextTime":J
    .restart local v13    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_8
    const-wide/32 v0, 0x30d40

    add-long/2addr v0, v10

    goto :goto_4
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z

    .prologue
    .line 548
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 549
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 552
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_3

    .line 553
    if-eqz p3, :cond_4

    .line 554
    if-nez p4, :cond_0

    .line 555
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null notification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 557
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, p3, :cond_1

    .line 558
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 559
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 561
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p4, Landroid/app/Notification;->flags:I

    .line 562
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 563
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 564
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 565
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 566
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 568
    :cond_2
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    return-void

    .line 570
    :cond_4
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_5

    .line 571
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 572
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 573
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 574
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 577
    :cond_5
    if-eqz p5, :cond_3

    .line 578
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 579
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 580
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 7
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    .line 387
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    .line 388
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-wide v5, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 390
    :cond_0
    iput-boolean v3, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 391
    iget-object v4, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4

    .line 392
    :try_start_0
    iget-object v5, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 393
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-direct {p0, p3, v4, p4, v3}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 396
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!!"

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-object v3

    .line 393
    .end local v0    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 399
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_4

    if-eqz p5, :cond_4

    .line 400
    iget-object v4, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 401
    .local v1, "first":Z
    :goto_1
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long/2addr v3, v5

    iput-wide v3, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 410
    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    .line 417
    .end local v1    # "first":Z
    :cond_2
    :goto_2
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 400
    goto :goto_1

    .line 413
    :cond_4
    if-eqz p4, :cond_2

    .line 414
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_2
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .locals 19
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 283
    if-eqz p1, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 285
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v16, :cond_0

    .line 286
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    .line 297
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v9, "callerFg":Z
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v18

    .line 300
    .local v18, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v18, :cond_3

    .line 301
    const/4 v2, 0x0

    .line 381
    :goto_1
    return-object v2

    .line 291
    .end local v9    # "callerFg":Z
    .end local v18    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 293
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v9, 0x1

    .restart local v9    # "callerFg":Z
    goto :goto_0

    .line 303
    .restart local v18    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_5

    .line 304
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!"

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    :goto_2
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    :cond_4
    const-string v2, "private to package"

    goto :goto_2

    .line 307
    :cond_5
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 308
    .local v13, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/4 v7, 0x0

    move/from16 v3, p5

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v7

    .line 310
    .local v7, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v13, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 314
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 316
    iget-object v8, v13, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    move-object v3, v13

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget v2, v13, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v11

    .line 320
    .local v11, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v15, 0x0

    .line 321
    .local v15, "addToStarting":Z
    if-nez v9, :cond_a

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v3, v13, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v17

    .line 323
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_b

    .line 336
    :cond_7
    iget-boolean v2, v13, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_8

    .line 340
    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 342
    :cond_8
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_9

    .line 344
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying start of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 347
    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 350
    :cond_9
    const/4 v15, 0x1

    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    :goto_3
    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move v14, v9

    .line 381
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_1

    .line 351
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_a

    .line 355
    const/4 v15, 0x1

    goto :goto_3
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 12
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 447
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    if-nez v8, :cond_0

    .line 448
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v11

    .line 457
    .local v11, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v11, :cond_2

    .line 458
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 461
    .local v9, "origId":J
    :try_start_0
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    const/4 v0, 0x1

    .line 470
    .end local v9    # "origId":J
    :goto_0
    return v0

    .line 463
    .restart local v9    # "origId":J
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 467
    .end local v9    # "origId":J
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 470
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    .line 501
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 502
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    .line 503
    if-ltz p3, :cond_4

    .line 507
    invoke-virtual {v3, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v4

    .line 508
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_1

    .line 509
    :cond_0
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 510
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 511
    .local v0, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 512
    if-ne v0, v4, :cond_0

    .line 518
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    if-eq v6, p3, :cond_3

    .line 543
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    :goto_0
    return v5

    .line 522
    .restart local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 523
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken startId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is last, but have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remaining args"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 530
    :try_start_0
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 531
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iput-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 533
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_5

    .line 534
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 537
    :cond_5
    iput-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 539
    .local v1, "origId":J
    invoke-direct {p0, v3, v5, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 540
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    const/4 v5, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "origId":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .prologue
    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 877
    .local v6, "origId":J
    if-eqz p1, :cond_2

    .line 878
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 880
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 885
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 886
    .local v4, "inDestroying":Z
    if-eqz v0, :cond_1

    .line 887
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    if-nez v4, :cond_4

    .line 890
    const/4 v5, 0x0

    .line 891
    .local v5, "inFg":Z
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 892
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 893
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_3

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v8, :cond_3

    .line 895
    const/4 v5, 0x1

    .line 899
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_0
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v5, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 907
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_1
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, p1, v4, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    return-void

    .line 891
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "i":I
    .restart local v4    # "inDestroying":Z
    .restart local v5    # "inFg":Z
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 903
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_4
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 910
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 9
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .prologue
    const/4 v5, 0x0

    .line 847
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 849
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 850
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_0

    .line 851
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbind failed: could not find connection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_0
    return v5

    .line 856
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 858
    .local v2, "origId":J
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 859
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 860
    .local v4, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 862
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    .line 864
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 868
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    const/4 v5, 0x1

    goto :goto_0
.end method
