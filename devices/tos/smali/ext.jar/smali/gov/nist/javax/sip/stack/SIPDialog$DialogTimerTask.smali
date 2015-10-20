.class Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogTimerTask"
.end annotation


# instance fields
.field nRetransmissions:I

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;

.field transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 391
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 392
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 394
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 399
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 400
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Running dialog timer"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 402
    :cond_0
    iget v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 403
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 412
    .local v4, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    const/16 v6, 0x40

    if-le v5, v6, :cond_5

    .line 413
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v5

    instance-of v5, v5, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v5, :cond_4

    .line 414
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    # invokes: Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v5, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    .line 418
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v5, v6, :cond_1

    .line 420
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 455
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v5

    if-nez v5, :cond_2

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->access$800(Lgov/nist/javax/sip/stack/SIPDialog;)I

    move-result v5

    sget v6, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne v5, v6, :cond_3

    .line 456
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 457
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 461
    :cond_3
    return-void

    .line 416
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_0

    .line 422
    :cond_5
    iget-boolean v5, v0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 424
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 425
    .local v2, "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 429
    :try_start_0
    iget v5, v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;->T2:I

    # invokes: Lgov/nist/javax/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z
    invoke-static {v0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$600(Lgov/nist/javax/sip/stack/SIPDialog;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 430
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_6
    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 445
    .local v3, "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resend 200 response from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 448
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    goto :goto_1

    .line 432
    .end local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerPort()I

    move-result v7

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerProtocol()Ljava/lang/String;

    move-result-object v8

    # invokes: Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$700(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 445
    .restart local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resend 200 response from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :catchall_0
    move-exception v5

    # getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 445
    .restart local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resend 200 response from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 448
    :cond_8
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 444
    throw v5
.end method
