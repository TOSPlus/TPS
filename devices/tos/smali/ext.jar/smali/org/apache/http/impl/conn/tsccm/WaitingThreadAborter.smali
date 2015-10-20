.class public Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# instance fields
.field private aborted:Z

.field private waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    .line 45
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 48
    :cond_0
    return-void
.end method

.method public setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .param p1, "waitingThread"    # Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .line 58
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 60
    :cond_0
    return-void
.end method
