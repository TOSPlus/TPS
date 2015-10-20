.class public Lgov/nist/core/ThreadAuditor$ThreadHandle;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/core/ThreadAuditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadHandle"
.end annotation


# instance fields
.field private isThreadActive:Z

.field final synthetic this$0:Lgov/nist/core/ThreadAuditor;

.field private thread:Ljava/lang/Thread;

.field private threadAuditor:Lgov/nist/core/ThreadAuditor;


# direct methods
.method public constructor <init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V
    .locals 1
    .param p2, "aThreadAuditor"    # Lgov/nist/core/ThreadAuditor;

    .prologue
    .line 42
    iput-object p1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->this$0:Lgov/nist/core/ThreadAuditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    .line 45
    iput-object p2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    .line 46
    return-void
.end method


# virtual methods
.method public getPingIntervalInMillisecs()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isThreadActive()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    return v0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    invoke-virtual {v0, p0}, Lgov/nist/core/ThreadAuditor;->ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    .line 66
    return-void
.end method

.method protected setThreadActive(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Thread Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Alive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 82
    .local v0, "toString":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
