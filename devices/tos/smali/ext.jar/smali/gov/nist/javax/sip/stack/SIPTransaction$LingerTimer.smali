.class Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LingerTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 3
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 275
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 277
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LingerTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    .prologue
    .line 285
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 287
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    .line 289
    .local v0, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LingerTimer: run() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 294
    :cond_0
    instance-of v3, v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_2

    .line 295
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 296
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    instance-of v3, v1, Ljavax/sip/ServerTransaction;

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 302
    :cond_3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 303
    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v3, :cond_4

    # getter for: Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->access$000(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v3

    iget v4, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    if-gtz v4, :cond_4

    .line 306
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    goto :goto_0

    .line 308
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    # getter for: Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->access$000(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v3

    iget v2, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 312
    .local v2, "useCount":I
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method
