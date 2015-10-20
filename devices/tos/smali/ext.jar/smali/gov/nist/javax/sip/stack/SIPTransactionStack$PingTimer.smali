.class Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPTransactionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 0
    .param p2, "a_oThreadHandle"    # Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .prologue
    .line 371
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 372
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .line 373
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .line 386
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 389
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    invoke-direct {v1, v2, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 392
    :cond_1
    return-void
.end method
