.class Lcom/tencent/qrom/gif/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :cond_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized close()V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qrom/gif/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized open()V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/ConditionVariable;->mCondition:Z

    .line 33
    .local v0, "old":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/gif/ConditionVariable;->mCondition:Z

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    .end local v0    # "old":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized set(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 24
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/ConditionVariable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
