.class public Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPClientTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPClientTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 9

    .prologue
    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 220
    .local v0, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v4, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 223
    .local v4, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removing  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isReliable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    iget-boolean v6, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    iget v7, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v3, v7, -0x1

    iput v3, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 248
    .local v3, "newUseCount":I
    if-gtz v3, :cond_2

    .line 251
    new-instance v2, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v2, v6}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 252
    .local v2, "myTimer":Ljava/util/TimerTask;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v6

    const-wide/16 v7, 0x1f40

    invoke-virtual {v6, v2, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 275
    .end local v2    # "myTimer":Ljava/util/TimerTask;
    .end local v3    # "newUseCount":I
    :cond_2
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 260
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_3
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 261
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    iget v5, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 262
    .local v5, "useCount":I
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client Use Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v5    # "useCount":I
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimer()V

    goto :goto_0
.end method
