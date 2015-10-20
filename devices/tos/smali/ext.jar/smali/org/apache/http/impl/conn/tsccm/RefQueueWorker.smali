.class public Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;
.super Ljava/lang/Object;
.source "RefQueueWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field protected final refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

.field protected final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;"
        }
    .end annotation
.end field

.field protected volatile workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;)V
    .locals 2
    .param p2, "handler"    # Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;",
            "Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Queue must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 83
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 99
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 102
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 103
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;->handleReference(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 121
    .local v0, "wt":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 125
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefQueueWorker::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
