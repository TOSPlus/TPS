.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 153
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 175
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 267
    if-eqz p0, :cond_0

    .line 269
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 272
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 621
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMobileRxBytes()J
    .locals 8

    .prologue
    .line 338
    const-wide/16 v4, 0x0

    .line 339
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 340
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method public static getMobileRxPackets()J
    .locals 8

    .prologue
    .line 304
    const-wide/16 v4, 0x0

    .line 305
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 306
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    .prologue
    .line 347
    const-wide/16 v6, 0x0

    .line 348
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 349
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 350
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 351
    add-long/2addr v6, v4

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    .prologue
    .line 359
    const-wide/16 v6, 0x0

    .line 360
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 361
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 362
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 363
    add-long/2addr v6, v4

    .line 360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTxBytes()J
    .locals 8

    .prologue
    .line 321
    const-wide/16 v4, 0x0

    .line 322
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 323
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method public static getMobileTxPackets()J
    .locals 8

    .prologue
    .line 287
    const-wide/16 v4, 0x0

    .line 288
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 289
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    .line 99
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 103
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .locals 2

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 476
    invoke-static {p0}, Landroid/net/TrafficStats;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-wide/16 v0, 0x0

    .line 480
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getUidRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 518
    invoke-static {p0}, Landroid/net/TrafficStats;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-wide/16 v0, 0x0

    .line 522
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 455
    invoke-static {p0}, Landroid/net/TrafficStats;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-wide/16 v0, 0x0

    .line 459
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getUidTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 497
    invoke-static {p0}, Landroid/net/TrafficStats;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-wide/16 v0, 0x0

    .line 501
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 599
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    .line 244
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 245
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 246
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 258
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static isSystemApp(I)Z
    .locals 11
    .param p0, "uid"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 656
    const/16 v8, 0x2710

    if-gt p0, v8, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v6

    .line 660
    :cond_1
    const-string/jumbo v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 662
    .local v5, "sPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v5, :cond_0

    .line 666
    const/4 v4, 0x0

    .line 668
    .local v4, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-interface {v5, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 673
    :goto_1
    if-eqz v4, :cond_2

    array-length v3, v4

    .line 674
    .local v3, "length":I
    :goto_2
    if-eqz v3, :cond_0

    .line 679
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v4, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v5, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 680
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 684
    .local v1, "apkPath":Ljava/lang/String;
    const-string/jumbo v8, "system/app"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "system/priv-app"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apkPath":Ljava/lang/String;
    :goto_3
    move v6, v7

    .line 691
    goto :goto_0

    .line 669
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 670
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    move v3, v7

    .line 673
    goto :goto_2

    .line 687
    .restart local v3    # "length":I
    :catch_1
    move-exception v2

    .line 688
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 131
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 132
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 169
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 170
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 223
    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 228
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 229
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 231
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 232
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 188
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 195
    return-void
.end method
