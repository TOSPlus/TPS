.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private mBootQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 1860
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1861
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1784
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1785
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1786
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 1787
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 1789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    .line 1862
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager$SyncHandler;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private cancelActiveSyncLocked(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 2465
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2467
    .local v1, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2468
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    .line 2470
    if-eqz p1, :cond_1

    .line 2471
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2476
    :cond_1
    if-eqz p3, :cond_2

    .line 2477
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2482
    :cond_2
    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->userId:I

    if-ne p2, v3, :cond_0

    .line 2486
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto :goto_0

    .line 2490
    .end local v0    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_4
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 2579
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 2580
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2581
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v2, v2, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 2583
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2408
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2409
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2412
    .local v9, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v1, "SyncManager"

    invoke-virtual {v9}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2417
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 2419
    .local v8, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v8, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v7

    .line 2420
    .local v7, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v7, :cond_1

    .line 2421
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find a sync adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing settings for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;ILjava/lang/String;)V

    move v1, v10

    .line 2440
    :goto_1
    return v1

    .line 2427
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v3

    iget v5, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 2429
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 2430
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2432
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_2
    iget v1, p1, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v0, v7, v1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2435
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind attempt failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    move v1, v10

    .line 2437
    goto :goto_1

    .line 2440
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getSyncWakeLock(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 1807
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1808
    .local v2, "wakeLockKey":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 1809
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    .line 1810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*sync*/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1812
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1813
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1814
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    .prologue
    .line 2783
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2785
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v11

    .line 2787
    .local v11, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v11, :cond_0

    .line 2790
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2792
    .local v8, "authorityName":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2793
    .local v4, "clickIntent":Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2794
    const-string v2, "authority"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2795
    const-string v2, "provider"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2796
    const-string v2, "numDeletes"

    move-wide/from16 v0, p3

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2798
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2799
    const-string v2, "SyncManager"

    const-string v3, "No activity found to handle too many deletes."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2803
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 2807
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10400ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2810
    .local v12, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/Notification;

    const v2, 0x108058b

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x10400ac

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v9, v2, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2814
    .local v9, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x10400ad

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v2, v3, v5, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2818
    iget v2, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v9, Landroid/app/Notification;->flags:I

    .line 2819
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v5, v6

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v5, v9, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2830
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2831
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2832
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2833
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2834
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2835
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 2837
    const/4 v5, 0x1

    .line 2841
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v5

    .line 2833
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private manageSyncAlarmLocked(JJ)V
    .locals 25
    .param p1, "nextPeriodicEventElapsedTime"    # J
    .param p3, "nextPendingEventElapsedTime"    # J

    .prologue
    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2771
    :cond_0
    :goto_0
    return-void

    .line 2680
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    # getter for: Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3700()J

    move-result-wide v21

    add-long v13, v19, v21

    .line 2690
    .local v13, "notificationTime":J
    :goto_1
    const-wide v9, 0x7fffffffffffffffL

    .line 2691
    .local v9, "earliestTimeoutTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2692
    .local v6, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3000()J

    move-result-wide v21

    add-long v7, v19, v21

    .line 2694
    .local v7, "currentSyncTimeoutTime":J
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2695
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_3
    cmp-long v19, v9, v7

    if-lez v19, :cond_2

    .line 2699
    move-wide v9, v7

    goto :goto_2

    .line 2683
    .end local v6    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v7    # "currentSyncTimeoutTime":J
    .end local v9    # "earliestTimeoutTime":J
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "notificationTime":J
    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    goto :goto_1

    .line 2703
    .restart local v9    # "earliestTimeoutTime":J
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "notificationTime":J
    :cond_5
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2704
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: notificationTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_6
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2708
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: earliestTimeoutTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_7
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2712
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_8
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2716
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: nextPendingEventElapsedTime is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_9
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2721
    .local v4, "alarmTime":J
    move-wide/from16 v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2722
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2725
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 2726
    .local v15, "now":J
    const-wide/16 v19, 0x7530

    add-long v19, v19, v15

    cmp-long v19, v4, v19

    if-gez v19, :cond_f

    .line 2727
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2728
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: the alarmTime is too small, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", setting to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x7530

    add-long v21, v21, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_a
    const-wide/16 v19, 0x7530

    add-long v4, v15, v19

    .line 2741
    :cond_b
    :goto_3
    const/16 v18, 0x0

    .line 2742
    .local v18, "shouldSet":Z
    const/16 v17, 0x0

    .line 2743
    .local v17, "shouldCancel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v15, v19

    if-gez v19, :cond_11

    const/4 v3, 0x1

    .line 2744
    .local v3, "alarmIsActive":Z
    :goto_4
    const-wide v19, 0x7fffffffffffffffL

    cmp-long v19, v4, v19

    if-eqz v19, :cond_12

    const/4 v12, 0x1

    .line 2745
    .local v12, "needAlarm":Z
    :goto_5
    if-eqz v12, :cond_13

    .line 2749
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v4, v19

    if-gez v19, :cond_d

    .line 2750
    :cond_c
    const/16 v18, 0x1

    .line 2757
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/content/SyncManager;->ensureAlarmService()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;)V

    .line 2758
    if-eqz v18, :cond_14

    .line 2759
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2760
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "requesting that the alarm manager wake us up at elapsed time "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", now is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v4, v15

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " secs from now"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2732
    .end local v3    # "alarmIsActive":Z
    .end local v12    # "needAlarm":Z
    .end local v17    # "shouldCancel":Z
    .end local v18    # "shouldSet":Z
    :cond_f
    const-wide/32 v19, 0x6ddd00

    add-long v19, v19, v15

    cmp-long v19, v4, v19

    if-lez v19, :cond_b

    .line 2733
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2734
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manageSyncAlarm: the alarmTime is too large, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", setting to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x7530

    add-long v21, v21, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_10
    const-wide/32 v19, 0x6ddd00

    add-long v4, v15, v19

    goto/16 :goto_3

    .line 2743
    .restart local v17    # "shouldCancel":Z
    .restart local v18    # "shouldSet":Z
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2744
    .restart local v3    # "alarmIsActive":Z
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 2753
    .restart local v12    # "needAlarm":Z
    :cond_13
    move/from16 v17, v3

    goto/16 :goto_6

    .line 2767
    :cond_14
    if-eqz v17, :cond_0

    .line 2768
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private manageSyncNotificationLocked()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2618
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v10, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2619
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2623
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v5, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2624
    .local v5, "shouldCancel":Z
    const/4 v6, 0x0

    .line 2662
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 2663
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # setter for: Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v10, v9}, Lcom/android/server/content/SyncManager;->access$3802(Lcom/android/server/content/SyncManager;Z)Z

    .line 2664
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2665
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v9, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2668
    :cond_1
    if-eqz v6, :cond_2

    .line 2669
    iget-object v9, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # setter for: Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v9, v8}, Lcom/android/server/content/SyncManager;->access$3802(Lcom/android/server/content/SyncManager;Z)Z

    .line 2670
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2671
    iget-object v9, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v8, v9, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2673
    :cond_2
    return-void

    .line 2627
    .end local v5    # "shouldCancel":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2628
    .local v3, "now":J
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v10, :cond_4

    .line 2629
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2637
    :cond_4
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v10, :cond_5

    .line 2638
    const/4 v5, 0x0

    .restart local v5    # "shouldCancel":Z
    move v6, v5

    .local v6, "shouldInstall":I
    goto :goto_0

    .line 2641
    .end local v5    # "shouldCancel":Z
    .end local v6    # "shouldInstall":I
    :cond_5
    const/4 v5, 0x0

    .line 2643
    .restart local v5    # "shouldCancel":Z
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    # getter for: Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3700()J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    move v7, v8

    .line 2645
    .local v7, "timeToShowNotification":Z
    :goto_1
    if-eqz v7, :cond_7

    .line 2646
    const/4 v6, 0x1

    .local v6, "shouldInstall":Z
    goto :goto_0

    .end local v6    # "shouldInstall":Z
    .end local v7    # "timeToShowNotification":Z
    :cond_6
    move v7, v9

    .line 2643
    goto :goto_1

    .line 2649
    .restart local v7    # "timeToShowNotification":Z
    :cond_7
    const/4 v6, 0x0

    .line 2650
    .restart local v6    # "shouldInstall":Z
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v10, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2651
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v10, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v11, "force"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2653
    .local v2, "manualSync":Z
    if-eqz v2, :cond_8

    .line 2654
    const/4 v6, 0x1

    .line 2655
    goto :goto_0
.end method

.method private maybeStartNextSyncLocked()J
    .locals 42

    .prologue
    .line 2137
    const-string v36, "SyncManager"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    .line 2138
    .local v15, "isLoggable":Z
    if-eqz v15, :cond_0

    const-string v36, "SyncManager"

    const-string v37, "maybeStartNextSync"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 2142
    if-eqz v15, :cond_1

    .line 2143
    const-string v36, "SyncManager"

    const-string v37, "maybeStartNextSync: no data connection, skipping"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_1
    const-wide v18, 0x7fffffffffffffffL

    .line 2404
    :cond_2
    :goto_0
    return-wide v18

    .line 2148
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2149
    if-eqz v15, :cond_4

    .line 2150
    const-string v36, "SyncManager"

    const-string v37, "maybeStartNextSync: memory low, skipping"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_4
    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 2157
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 2158
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    # getter for: Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$2800()[Landroid/accounts/AccountAndUser;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v5, v0, :cond_7

    .line 2159
    if-eqz v15, :cond_6

    .line 2160
    const-string v36, "SyncManager"

    const-string v37, "maybeStartNextSync: accounts not known, skipping"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_6
    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 2168
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v9

    .line 2171
    .local v9, "backgroundDataUsageAllowed":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2174
    .local v20, "now":J
    const-wide v18, 0x7fffffffffffffffL

    .line 2177
    .local v18, "nextReadyToRunTime":J
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v27, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v37

    monitor-enter v37

    .line 2179
    if-eqz v15, :cond_8

    .line 2180
    :try_start_0
    const-string v36, "SyncManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "build the operation array, syncQueue size is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v39 .. v39}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 2186
    .local v26, "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v36

    const-string v38, "activity"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 2188
    .local v8, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v28

    .line 2189
    .local v28, "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_9
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_15

    .line 2190
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/content/SyncOperation;

    .line 2193
    .local v25, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v39, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v0, v5, v1, v2}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v36

    if-nez v36, :cond_a

    .line 2194
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 2195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    .line 2196
    if-eqz v15, :cond_9

    .line 2197
    const-string v36, "SyncManager"

    const-string v38, "    Dropping sync operation: account doesn\'t exist."

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2284
    .end local v8    # "activityManager":Landroid/app/ActivityManager;
    .end local v25    # "op":Lcom/android/server/content/SyncOperation;
    .end local v26    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .end local v28    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v36

    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v36

    .line 2203
    .restart local v8    # "activityManager":Landroid/app/ActivityManager;
    .restart local v25    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v26    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .restart local v28    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v39, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v31

    .line 2205
    .local v31, "syncableState":I
    if-nez v31, :cond_b

    .line 2206
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    .line 2208
    if-eqz v15, :cond_9

    .line 2209
    const-string v36, "SyncManager"

    const-string v38, "    Dropping sync operation: isSyncable == 0."

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2215
    :cond_b
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v36

    if-nez v36, :cond_d

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v36

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v35

    .line 2217
    .local v35, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v35, :cond_c

    .line 2218
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_c
    if-eqz v15, :cond_9

    .line 2221
    const-string v36, "SyncManager"

    const-string v38, "    Dropping sync operation: user not running."

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2228
    .end local v35    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_d
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    cmp-long v36, v38, v20

    if-lez v36, :cond_f

    .line 2229
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v38, v0

    cmp-long v36, v18, v38

    if-lez v36, :cond_e

    .line 2230
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v18, v0

    .line 2232
    :cond_e
    if-eqz v15, :cond_9

    .line 2233
    const-string v36, "SyncManager"

    const-string v38, "    Dropping sync operation: Sync too far in future."

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2239
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v36

    if-eqz v36, :cond_10

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/content/SyncOperation;->isMeteredDisallowed()Z

    move-result v36

    if-eqz v36, :cond_10

    .line 2241
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 2248
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v38

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v39, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v30

    .line 2253
    .local v30, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v30, :cond_13

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v36

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 2256
    .local v17, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v36

    if-eqz v36, :cond_12

    const/16 v33, 0x1

    .line 2264
    .end local v17    # "networkInfo":Landroid/net/NetworkInfo;
    .local v33, "uidNetworkConnected":Z
    :goto_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v36, v0

    const-string v38, "ignore_settings"

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-nez v36, :cond_14

    if-lez v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v36

    if-eqz v36, :cond_11

    if-eqz v9, :cond_11

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v39, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_14

    .line 2271
    :cond_11
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 2256
    .end local v33    # "uidNetworkConnected":Z
    .restart local v17    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_12
    const/16 v33, 0x0

    goto :goto_2

    .line 2258
    .end local v17    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_13
    const/16 v33, 0x0

    .restart local v33    # "uidNetworkConnected":Z
    goto/16 :goto_2

    .line 2276
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2278
    .end local v25    # "op":Lcom/android/server/content/SyncOperation;
    .end local v30    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v31    # "syncableState":I
    .end local v33    # "uidNetworkConnected":Z
    :cond_15
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 2280
    .local v34, "user":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v36

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    if-nez v36, :cond_16

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    # invokes: Lcom/android/server/content/SyncManager;->onUserRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;I)V

    goto :goto_3

    .line 2284
    .end local v34    # "user":Ljava/lang/Integer;
    :cond_17
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2291
    if-eqz v15, :cond_18

    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "sort the candidate operations, size "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_18
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2293
    if-eqz v15, :cond_19

    const-string v36, "SyncManager"

    const-string v37, "dispatch all ready sync operations"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_19
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    :goto_4
    if-ge v13, v4, :cond_2

    .line 2295
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 2296
    .local v10, "candidate":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v10}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v11

    .line 2298
    .local v11, "candidateIsInitialization":Z
    const/16 v22, 0x0

    .line 2299
    .local v22, "numInit":I
    const/16 v23, 0x0

    .line 2300
    .local v23, "numRegular":I
    const/4 v12, 0x0

    .line 2301
    .local v12, "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v16, 0x0

    .line 2302
    .local v16, "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v32, 0x0

    .line 2303
    .local v32, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v24, 0x0

    .line 2305
    .local v24, "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1a
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_20

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2306
    .local v7, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v6, v7, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2307
    .local v6, "activeOp":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 2308
    add-int/lit8 v22, v22, 0x1

    .line 2319
    :cond_1b
    :goto_6
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v10, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v10, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    iget v0, v6, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v36, v0

    iget v0, v10, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1f

    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1c

    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v10, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 2324
    :cond_1c
    move-object v12, v7

    goto :goto_5

    .line 2310
    :cond_1d
    add-int/lit8 v23, v23, 0x1

    .line 2311
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v36

    if-nez v36, :cond_1b

    .line 2312
    if-eqz v24, :cond_1e

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v38, v0

    cmp-long v36, v36, v38

    if-lez v36, :cond_1b

    .line 2315
    :cond_1e
    move-object/from16 v24, v7

    goto :goto_6

    .line 2327
    :cond_1f
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v36

    move/from16 v0, v36

    if-ne v11, v0, :cond_1a

    iget-wide v0, v7, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3000()J

    move-result-wide v38

    add-long v36, v36, v38

    cmp-long v36, v36, v20

    if-gez v36, :cond_1a

    .line 2329
    move-object/from16 v16, v7

    goto/16 :goto_5

    .line 2335
    .end local v6    # "activeOp":Lcom/android/server/content/SyncOperation;
    .end local v7    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_20
    if-eqz v15, :cond_21

    .line 2336
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "candidate "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    add-int/lit8 v38, v13, 0x1

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ": "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "  numActiveInit="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", numActiveRegular="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "  longRunning: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "  conflict: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "  oldestNonExpeditedRegular: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_21
    if-eqz v11, :cond_26

    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3100()I

    move-result v36

    move/from16 v0, v22

    move/from16 v1, v36

    if-ge v0, v1, :cond_25

    const/16 v29, 0x1

    .line 2347
    .local v29, "roomAvailable":Z
    :goto_7
    if-eqz v12, :cond_29

    .line 2348
    if-eqz v11, :cond_28

    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v36

    if-nez v36, :cond_28

    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3100()I

    move-result v36

    move/from16 v0, v22

    move/from16 v1, v36

    if-ge v0, v1, :cond_28

    .line 2350
    move-object/from16 v32, v12

    .line 2351
    const-string v36, "SyncManager"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 2352
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "canceling and rescheduling sync since an initialization takes higher priority, "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_22
    :goto_8
    if-eqz v32, :cond_23

    .line 2395
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2398
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v37

    monitor-enter v37

    .line 2399
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    .line 2400
    monitor-exit v37
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2401
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    .line 2294
    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 2343
    .end local v29    # "roomAvailable":Z
    :cond_25
    const/16 v29, 0x0

    goto :goto_7

    :cond_26
    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3200()I

    move-result v36

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_27

    const/16 v29, 0x1

    goto/16 :goto_7

    :cond_27
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2355
    .restart local v29    # "roomAvailable":Z
    :cond_28
    invoke-virtual {v10}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v36

    if-eqz v36, :cond_24

    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v36

    if-nez v36, :cond_24

    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v36

    move/from16 v0, v36

    if-ne v11, v0, :cond_24

    .line 2358
    move-object/from16 v32, v12

    .line 2359
    const-string v36, "SyncManager"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 2360
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "canceling and rescheduling sync since an expedited takes higher priority, "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2366
    :cond_29
    if-nez v29, :cond_22

    .line 2368
    invoke-virtual {v10}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v36

    if-eqz v36, :cond_2a

    if-eqz v24, :cond_2a

    if-nez v11, :cond_2a

    .line 2373
    move-object/from16 v32, v24

    .line 2374
    const-string v36, "SyncManager"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 2375
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "canceling and rescheduling sync since an expedited is ready to run, "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2378
    :cond_2a
    if-eqz v16, :cond_24

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v36

    move/from16 v0, v36

    if-ne v11, v0, :cond_24

    .line 2383
    move-object/from16 v32, v16

    .line 2384
    const-string v36, "SyncManager"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 2385
    const-string v36, "SyncManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "canceling and rescheduling sync since it ran roo long, "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2400
    :catchall_1
    move-exception v36

    :try_start_3
    monitor-exit v37
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v36
.end method

.method private runBoundToSyncAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V
    .locals 6
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/content/ISyncAdapter;

    .prologue
    .line 2445
    iput-object p2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 2446
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2448
    .local v2, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2449
    invoke-interface {p2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2451
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {p2, p1, v3, v4, v5}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2462
    :goto_0
    return-void

    .line 2453
    :catch_0
    move-exception v1

    .line 2454
    .local v1, "remoteExc":Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2455
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2456
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2457
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v4, Lcom/android/server/content/SyncOperation;

    invoke-direct {v4, v2}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 2458
    .end local v1    # "remoteExc":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2459
    .local v0, "exc":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2460
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught RuntimeException while starting the sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 28
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 2494
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    .line 2496
    .local v27, "isLoggable":Z
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    if-eqz v2, :cond_0

    .line 2497
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2498
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2500
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2502
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2504
    .local v5, "syncOperation":Lcom/android/server/content/SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v9, v2, v11

    .line 2509
    .local v9, "elapsedTime":J
    if-eqz p1, :cond_5

    .line 2510
    if-eqz v27, :cond_1

    .line 2511
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2516
    const-string v6, "success"

    .line 2518
    .local v6, "historyMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2519
    .local v8, "downstreamActivity":I
    const/4 v7, 0x0

    .line 2520
    .local v7, "upstreamActivity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v2, v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2536
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    iget-wide v3, v0, Landroid/content/SyncResult;->delayUntil:J

    # invokes: Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 2553
    :goto_1
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 2556
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v2, :cond_8

    .line 2557
    iget-object v12, v5, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v13, v5, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v2, Landroid/content/SyncStats;->numDeletes:J

    iget v0, v5, Lcom/android/server/content/SyncOperation;->userId:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    .line 2566
    :goto_2
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v2, :cond_2

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v11, Lcom/android/server/content/SyncOperation;

    iget-object v12, v5, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v13, v5, Lcom/android/server/content/SyncOperation;->userId:I

    iget v14, v5, Lcom/android/server/content/SyncOperation;->reason:I

    iget v15, v5, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-object v3, v5, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    iget-wide v0, v5, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-wide/from16 v24, v0

    iget-boolean v0, v5, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v26, v0

    invoke-direct/range {v11 .. v26}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    invoke-virtual {v2, v11}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2576
    :cond_2
    return-void

    .line 2522
    .end local v6    # "historyMessage":Ljava/lang/String;
    .end local v7    # "upstreamActivity":I
    .end local v8    # "downstreamActivity":I
    :cond_3
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed sync operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_4

    .line 2525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v2, v5}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2528
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    .line 2529
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v6

    .line 2532
    .restart local v6    # "historyMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2533
    .restart local v8    # "downstreamActivity":I
    const/4 v7, 0x0

    .restart local v7    # "upstreamActivity":I
    goto/16 :goto_0

    .line 2538
    .end local v6    # "historyMessage":Ljava/lang/String;
    .end local v7    # "upstreamActivity":I
    .end local v8    # "downstreamActivity":I
    :cond_5
    if-eqz v27, :cond_6

    .line 2539
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v2, :cond_7

    .line 2543
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    :cond_7
    :goto_3
    const-string v6, "canceled"

    .line 2549
    .restart local v6    # "historyMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2550
    .restart local v8    # "downstreamActivity":I
    const/4 v7, 0x0

    .restart local v7    # "upstreamActivity":I
    goto/16 :goto_1

    .line 2561
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v5, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4}, Landroid/accounts/Account;->hashCode()I

    move-result v4

    iget-object v11, v5, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v4, v11

    new-instance v11, Landroid/os/UserHandle;

    iget v12, v5, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 2544
    .end local v6    # "historyMessage":Ljava/lang/String;
    .end local v7    # "upstreamActivity":I
    .end local v8    # "downstreamActivity":I
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private scheduleReadyPeriodicSyncs()J
    .locals 54

    .prologue
    .line 1991
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    .line 1992
    .local v33, "isLoggable":Z
    if-eqz v33, :cond_0

    .line 1993
    const-string v4, "SyncManager"

    const-string v5, "scheduleReadyPeriodicSyncs"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v23

    .line 1997
    .local v23, "backgroundDataUsageAllowed":Z
    const-wide v25, 0x7fffffffffffffffL

    .line 1998
    .local v25, "earliestFuturePollTime":J
    if-nez v23, :cond_1

    move-wide/from16 v4, v25

    .line 2131
    :goto_0
    return-wide v4

    .line 2002
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v21

    .line 2004
    .local v21, "accounts":[Landroid/accounts/AccountAndUser;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 2005
    .local v38, "nowAbsolute":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v38, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)I

    move-result v4

    int-to-long v4, v4

    sub-long v45, v38, v4

    .line 2008
    .local v45, "shiftedNowAbsolute":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;

    move-result-object v32

    .line 2010
    .local v32, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/Pair;

    .line 2011
    .local v31, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2012
    .local v22, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/content/SyncStatusInfo;

    .line 2013
    .local v47, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2014
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got an empty provider string. Skipping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2005
    .end local v22    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v31    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v32    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .end local v45    # "shiftedNowAbsolute":J
    .end local v47    # "status":Landroid/content/SyncStatusInfo;
    :cond_3
    const-wide/16 v45, 0x0

    goto :goto_1

    .line 2018
    .restart local v22    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v31    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v32    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v45    # "shiftedNowAbsolute":J
    .restart local v47    # "status":Landroid/content/SyncStatusInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 2036
    const/16 v29, 0x0

    .local v29, "i":I
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, "N":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2037
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/PeriodicSync;

    .line 2038
    .local v48, "sync":Landroid/content/PeriodicSync;
    move-object/from16 v0, v48

    iget-object v10, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 2039
    .local v10, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v48

    iget-wide v4, v0, Landroid/content/PeriodicSync;->period:J

    const-wide/16 v6, 0x3e8

    mul-long v40, v4, v6

    .line 2040
    .local v40, "periodInMillis":J
    move-object/from16 v0, v48

    iget-wide v4, v0, Landroid/content/PeriodicSync;->flexTime:J

    const-wide/16 v6, 0x3e8

    mul-long v27, v4, v6

    .line 2042
    .local v27, "flexInMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-gtz v4, :cond_6

    .line 2036
    :cond_5
    :goto_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 2046
    :cond_6
    move-object/from16 v0, v47

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v34

    .line 2047
    .local v34, "lastPollTimeAbsolute":J
    rem-long v4, v45, v40

    sub-long v42, v40, v4

    .line 2049
    .local v42, "remainingMillis":J
    sub-long v50, v38, v34

    .line 2054
    .local v50, "timeSinceLastRunMillis":J
    cmp-long v4, v42, v27

    if-gtz v4, :cond_a

    sub-long v4, v40, v27

    cmp-long v4, v50, v4

    if-lez v4, :cond_a

    const/16 v44, 0x1

    .line 2056
    .local v44, "runEarly":Z
    :goto_5
    if-eqz v33, :cond_7

    .line 2057
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " period: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v40

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remaining: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time_since_last: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " last poll absol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shifted now: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v45

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " run_early: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_7
    if-nez v44, :cond_8

    cmp-long v4, v42, v40

    if-eqz v4, :cond_8

    cmp-long v4, v34, v38

    if-gtz v4, :cond_8

    cmp-long v4, v50, v40

    if-ltz v4, :cond_9

    .line 2086
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v24

    .line 2090
    .local v24, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v5

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v49

    .line 2094
    .local v49, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v49, :cond_5

    .line 2097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    move-wide/from16 v0, v38

    invoke-virtual {v5, v6, v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v52, v0

    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    const/4 v7, -0x4

    const/4 v8, 0x4

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    iget-object v15, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v17

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v17

    move-object/from16 v0, v49

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/SyncAdapterType;

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v19

    invoke-direct/range {v4 .. v19}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2114
    .end local v24    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_9
    if-eqz v44, :cond_c

    .line 2116
    add-long v4, v38, v40

    add-long v36, v4, v42

    .line 2120
    .local v36, "nextPollTimeAbsolute":J
    :goto_7
    cmp-long v4, v36, v25

    if-gez v4, :cond_5

    .line 2121
    move-wide/from16 v25, v36

    goto/16 :goto_4

    .line 2054
    .end local v36    # "nextPollTimeAbsolute":J
    .end local v44    # "runEarly":Z
    :cond_a
    const/16 v44, 0x0

    goto/16 :goto_5

    .line 2099
    .restart local v24    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "runEarly":Z
    .restart local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_b
    const-wide/16 v15, 0x0

    goto :goto_6

    .line 2118
    .end local v24    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v49    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_c
    add-long v36, v38, v42

    .restart local v36    # "nextPollTimeAbsolute":J
    goto :goto_7

    .line 2126
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v20    # "N":I
    .end local v22    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v27    # "flexInMillis":J
    .end local v29    # "i":I
    .end local v31    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v34    # "lastPollTimeAbsolute":J
    .end local v36    # "nextPollTimeAbsolute":J
    .end local v40    # "periodInMillis":J
    .end local v42    # "remainingMillis":J
    .end local v44    # "runEarly":Z
    .end local v47    # "status":Landroid/content/SyncStatusInfo;
    .end local v48    # "sync":Landroid/content/PeriodicSync;
    .end local v50    # "timeSinceLastRunMillis":J
    :cond_d
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v25, v4

    if-nez v4, :cond_e

    .line 2127
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_0

    .line 2131
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v25, v38

    if-gez v4, :cond_f

    const-wide/16 v4, 0x0

    :goto_8
    add-long/2addr v4, v6

    goto/16 :goto_0

    :cond_f
    sub-long v4, v25, v38

    goto :goto_8
.end method

.method private sendSyncStateIntent()V
    .locals 3

    .prologue
    .line 2774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2775
    .local v0, "syncStateIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2776
    const-string v1, "active"

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2777
    const-string v1, "failing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2778
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2779
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const-wide/16 v2, 0x0

    .line 2595
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 2596
    const/4 v0, 0x1

    .line 2610
    :goto_0
    return v0

    .line 2597
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2598
    const/4 v0, 0x2

    goto :goto_0

    .line 2599
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2600
    const/4 v0, 0x3

    goto :goto_0

    .line 2601
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2602
    const/4 v0, 0x4

    goto :goto_0

    .line 2603
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2604
    const/4 v0, 0x5

    goto :goto_0

    .line 2605
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 2606
    const/4 v0, 0x6

    goto :goto_0

    .line 2607
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 2608
    const/4 v0, 0x7

    goto :goto_0

    .line 2609
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 2610
    const/16 v0, 0x8

    goto :goto_0

    .line 2611
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1827
    monitor-enter p0

    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    const/4 v0, 0x1

    monitor-exit p0

    .line 1833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1866
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1983
    :goto_0
    return-void

    .line 1870
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    .line 1871
    .local v2, "earliestFuturePollTime":J
    const-wide v6, 0x7fffffffffffffffL

    .line 1875
    .local v6, "nextPendingSyncTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Z

    move-result v12

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->access$402(Lcom/android/server/content/SyncManager;Z)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    move-result-wide v2

    .line 1882
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v11, :pswitch_data_0

    .line 1978
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1979
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 1981
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1884
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/util/Pair;

    .line 1885
    .local v9, "payload":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1886
    const-string v12, "SyncManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_CANCEL: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_2
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncLocked(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 1890
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1891
    goto :goto_1

    .line 1895
    .end local v9    # "payload":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    :pswitch_1
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1896
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    .line 1899
    .local v8, "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v8, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1900
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1978
    .end local v8    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1979
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v12}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 1981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1978
    throw v11

    .line 1905
    .restart local v8    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :cond_4
    :try_start_2
    iget-object v11, v8, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v12, v8, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 1908
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1909
    goto/16 :goto_1

    .line 1912
    .end local v8    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 1913
    .local v5, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1914
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v5, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1919
    iget-object v11, v5, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v12, v5, Lcom/android/server/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToSyncAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V

    goto/16 :goto_1

    .line 1925
    .end local v5    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v1, v11, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1927
    .local v1, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1928
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v11, v1}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1935
    iget-object v11, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_7

    .line 1937
    :try_start_3
    iget-object v11, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v11, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1945
    :cond_7
    :goto_2
    :try_start_4
    new-instance v10, Landroid/content/SyncResult;

    invoke-direct {v10}, Landroid/content/SyncResult;-><init>()V

    .line 1946
    .local v10, "syncResult":Landroid/content/SyncResult;
    iget-object v11, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1947
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 1950
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v6

    .line 1951
    goto/16 :goto_1

    .line 1957
    .end local v1    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v10    # "syncResult":Landroid/content/SyncResult;
    :pswitch_4
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 1958
    .local v4, "isLoggable":Z
    if-eqz v4, :cond_8

    .line 1959
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1963
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v6

    .line 1965
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :catchall_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v11

    .line 1971
    .end local v4    # "isLoggable":Z
    :pswitch_5
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1972
    const-string v11, "SyncManager"

    const-string v12, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v6

    goto/16 :goto_1

    .line 1938
    .restart local v1    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :catch_0
    move-exception v11

    goto :goto_2

    .line 1882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 10
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v3, 0x0

    .line 2845
    iget v7, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 2846
    .local v7, "source":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2848
    .local v5, "now":J
    const/16 v0, 0xaa0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2852
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v8

    iget-object v9, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Landroid/accounts/Account;IILjava/lang/String;JIZLandroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onBootCompleted()V
    .locals 4

    .prologue
    .line 1792
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1793
    const-string v2, "SyncManager"

    const-string v3, "Boot completed, clearing boot queue."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)V

    .line 1796
    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1799
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1803
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1801
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    .line 1802
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$2102(Lcom/android/server/content/SyncManager;Z)Z

    .line 1803
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 11
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J

    .prologue
    .line 2861
    const/16 v1, 0xaa0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p3, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2865
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move/from16 v0, p6

    int-to-long v7, v0

    move/from16 v0, p5

    int-to-long v9, v0

    move-wide v2, p1

    move-wide/from16 v4, p7

    move-object v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 2867
    return-void
.end method
