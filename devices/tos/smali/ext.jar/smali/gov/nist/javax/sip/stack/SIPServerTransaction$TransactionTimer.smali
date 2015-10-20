.class Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3

    .prologue
    .line 355
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 356
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionTimer() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 5

    .prologue
    .line 364
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 383
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v2

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 393
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 390
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    goto :goto_0
.end method
