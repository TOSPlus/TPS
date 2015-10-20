.class Lcom/android/server/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    .line 281
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 282
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 286
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 288
    .local v0, "isProvisioned":Z
    iget-object v3, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 294
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v4, 0x2932e00

    # invokes: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;J)V

    .line 300
    :cond_1
    monitor-exit v3

    .line 301
    return-void

    .line 288
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
