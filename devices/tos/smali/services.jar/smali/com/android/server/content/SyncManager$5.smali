.class Lcom/android/server/content/SyncManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    .line 313
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$402(Lcom/android/server/content/SyncManager;Z)Z

    .line 314
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    if-nez v0, :cond_1

    .line 316
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const-string v1, "SyncManager"

    const-string v2, "Reconnection detected: clearing all backoffs"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v2

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V

    .line 321
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;)V

    .line 325
    :cond_2
    return-void

    .line 321
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
