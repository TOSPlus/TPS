.class Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTrying"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3

    .prologue
    .line 323
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 324
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduled timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    .prologue
    .line 330
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 332
    .local v2, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    # invokes: Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->access$100(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    move-result-object v1

    .line 334
    .local v1, "realState":Ljavax/sip/TransactionState;
    if-eqz v1, :cond_0

    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v3, v1, :cond_2

    .line 335
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sending Trying current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->access$100(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 339
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    const/16 v4, 0x64

    const-string v5, "Trying"

    invoke-virtual {v3, v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 341
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " trying sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->access$100(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_2
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "IO error sending  TRYING"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method
