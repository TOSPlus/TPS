.class public Lgov/nist/javax/sip/stack/SIPServerTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPServerTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/ServerTransactionExt;
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Ljavax/sip/ServerTransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
    }
.end annotation


# instance fields
.field private dialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field protected isAckSeen:Z

.field private pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field private provisionalResponseSem:Ljava/util/concurrent/Semaphore;

.field private provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

.field private transient requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

.field private retransmissionAlertEnabled:Z

.field private retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

.field private rseqNumber:I


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 4
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 204
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    .line 504
    iget v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 505
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget v2, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 509
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    .line 512
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Server Transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 517
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 173
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V

    return-void
.end method

.method static synthetic access$100(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 173
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private fireReliableResponseRetransmissionTimer()V
    .locals 2

    .prologue
    .line 1144
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1149
    :cond_0
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1150
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_0
.end method

.method private getRealState()Ljavax/sip/TransactionState;
    .locals 1

    .prologue
    .line 1422
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 9
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 492
    return-void

    .line 429
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    .line 430
    .local v5, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "transport":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 432
    new-instance v6, Ljava/io/IOException;

    const-string v7, "missing transport!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v4    # "transport":Ljava/lang/String;
    .end local v5    # "via":Lgov/nist/javax/sip/header/Via;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v6

    .line 434
    .restart local v4    # "transport":Ljava/lang/String;
    .restart local v5    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v3

    .line 435
    .local v3, "port":I
    if-ne v3, v7, :cond_2

    .line 436
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v3

    .line 437
    :cond_2
    if-ne v3, v7, :cond_3

    .line 438
    const-string v6, "TLS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 439
    const/16 v3, 0x13c5

    .line 453
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 454
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 455
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v1

    .line 477
    :cond_4
    :goto_2
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    new-instance v7, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v7, v1, v3, v4}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v0

    .line 480
    .local v0, "hop":Ljavax/sip/address/Hop;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v7

    invoke-interface {v0}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPort()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    .line 483
    .local v2, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    if-eqz v2, :cond_7

    .line 484
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    goto :goto_0

    .line 441
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_5
    const/16 v3, 0x13c4

    goto :goto_1

    .line 466
    .restart local v1    # "host":Ljava/lang/String;
    :cond_6
    const-string v6, "received"

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    if-nez v1, :cond_4

    .line 473
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 486
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create a message channel for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public ackSeen()Z
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    return v0
.end method

.method public disableRetransmissionAlerts()V
    .locals 2

    .prologue
    .line 1630
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v1, :cond_1

    .line 1631
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1632
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1634
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    .line 1635
    .local v0, "dialogId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1636
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1640
    .end local v0    # "dialogId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public enableRetransmissionAlerts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog associated with tx"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1615
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Request Method must be INVITE"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1619
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 1474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    const/4 v1, 0x0

    .line 1478
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1477
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1478
    .local v0, "sst":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected fireRetransmissionTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1113
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "fireRetransmissionTimer() -- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v3, :cond_2

    .line 1119
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1121
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    if-le v3, v5, :cond_2

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    if-nez v3, :cond_2

    .line 1122
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1139
    :cond_2
    :goto_0
    return-void

    .line 1125
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1126
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v2, Ljavax/sip/TimeoutEvent;

    sget-object v3, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v2, v1, p0, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .line 1128
    .local v2, "txTimeout":Ljavax/sip/TimeoutEvent;
    invoke-virtual {v1, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1132
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "txTimeout":Ljavax/sip/TimeoutEvent;
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1134
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1135
    :cond_4
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_0
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1160
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIPServerTransaction.fireTimeoutTimer this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1166
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1167
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Found tx pending ACK - returning"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1211
    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1173
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_3

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 1177
    :cond_3
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1183
    :cond_4
    :goto_1
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1184
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1185
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1186
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0

    .line 1178
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1179
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1180
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_1

    .line 1188
    :cond_6
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1189
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1190
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0

    .line 1192
    :cond_7
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1197
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1198
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 1199
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_9

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_a

    .line 1202
    :cond_9
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_0

    .line 1203
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1206
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1207
    if-eqz v0, :cond_1

    .line 1208
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0
.end method

.method public getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public bridge synthetic getCanceledInviteTransaction()Ljavax/sip/ServerTransaction;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getResponseChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    .prologue
    .line 535
    return-object p0
.end method

.method public getState()Ljavax/sip/TransactionState;
    .locals 2

    .prologue
    .line 1434
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1435
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    .line 1437
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    goto :goto_0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    move-result v0

    return v0
.end method

.method public isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 17
    .param p1, "messageToTest"    # Lgov/nist/javax/sip/message/SIPMessage;

    .prologue
    .line 559
    const/4 v11, 0x0

    .line 561
    .local v11, "transactionMatches":Z
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "method":Ljava/lang/String;
    const-string v13, "INVITE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v13

    if-nez v13, :cond_2

    .line 569
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v12

    .line 570
    .local v12, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v12, :cond_2

    .line 572
    invoke-virtual {v12}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Via;

    .line 573
    .local v10, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "messageBranch":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "z9hg4bk"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 584
    const/4 v2, 0x0

    .line 591
    :cond_1
    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 592
    const-string v13, "CANCEL"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 596
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v13

    invoke-virtual {v14, v13}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 661
    .end local v2    # "messageBranch":Ljava/lang/String;
    .end local v10    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    .end local v12    # "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    :cond_2
    :goto_0
    return v11

    .line 596
    .restart local v2    # "messageBranch":Ljava/lang/String;
    .restart local v10    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    .restart local v12    # "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 605
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v13

    invoke-virtual {v14, v13}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 621
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 623
    .local v4, "originalFromTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "thisFromTag":Ljava/lang/String;
    if-eqz v4, :cond_7

    if-nez v8, :cond_9

    :cond_7
    const/4 v6, 0x1

    .line 627
    .local v6, "skipFrom":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 629
    .local v5, "originalToTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 631
    .local v9, "thisToTag":Ljava/lang/String;
    if-eqz v5, :cond_8

    if-nez v9, :cond_a

    :cond_8
    const/4 v7, 0x1

    .line 632
    .local v7, "skipTo":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v1, v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 636
    .local v1, "isResponse":Z
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 639
    const/4 v11, 0x0

    goto :goto_0

    .line 625
    .end local v1    # "isResponse":Z
    .end local v5    # "originalToTag":Ljava/lang/String;
    .end local v6    # "skipFrom":Z
    .end local v7    # "skipTo":Z
    .end local v9    # "thisToTag":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 631
    .restart local v5    # "originalToTag":Ljava/lang/String;
    .restart local v6    # "skipFrom":Z
    .restart local v9    # "thisToTag":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 640
    .restart local v1    # "isResponse":Z
    .restart local v7    # "skipTo":Z
    :cond_b
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object/from16 v13, p1

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_c
    if-nez v6, :cond_d

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_d
    if-nez v7, :cond_e

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    invoke-virtual {v10, v13}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 653
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public isRetransmissionAlertEnabled()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return v0
.end method

.method public isTransactionMapped()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    return v0
.end method

.method protected map()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 672
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v0

    .line 674
    .local v0, "realState":Ljavax/sip/TransactionState;
    if-eqz v0, :cond_0

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_1

    .line 679
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 680
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 683
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 691
    :cond_1
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 692
    return-void

    .line 686
    :cond_2
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    goto :goto_0
.end method

.method public prackRecieved()Z
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v0, :cond_0

    .line 1596
    const/4 v0, 0x0

    .line 1601
    :goto_0
    return v0

    .line 1597
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 1599
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1600
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1601
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 6
    .param p1, "transactionRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 709
    const/4 v2, 0x0

    .line 715
    .local v2, "toTu":Z
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tx state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 723
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-nez v3, :cond_3

    .line 726
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 727
    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 728
    const/4 v2, 0x1

    .line 729
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 732
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v3, :cond_1

    .line 739
    const/16 v3, 0x64

    const-string v4, "Trying"

    invoke-virtual {p1, v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 810
    :cond_1
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_10

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_10

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_10

    .line 812
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 814
    if-eqz v2, :cond_d

    .line 815
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 867
    :cond_2
    :goto_0
    return-void

    .line 744
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 748
    sget-object v3, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 749
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 750
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 751
    iget v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->TIMER_I:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    .line 761
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isNon2XXAckPassedToListener()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 764
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 862
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "IOException "

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 863
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    .line 864
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto :goto_0

    .line 755
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_1
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_1

    .line 768
    :cond_6
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 769
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACK received for server Tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not delivering to application!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 774
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    .line 780
    :cond_8
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_9

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_b

    .line 784
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    .line 787
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v3, :cond_a

    .line 790
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 801
    :cond_a
    :goto_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 802
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completed processing retransmitted request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " txState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastResponse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    :cond_b
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 796
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_c

    .line 797
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_2

    .line 799
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_2

    .line 817
    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    .line 819
    :cond_e
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_f

    .line 820
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto/16 :goto_0

    .line 822
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    .line 826
    :cond_10
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne v3, v4, :cond_15

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_15

    .line 831
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 833
    .local v1, "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v1, :cond_11

    iget-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    if-nez v3, :cond_14

    .line 835
    :cond_11
    if-eqz v1, :cond_12

    .line 836
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 837
    const/4 v3, 0x1

    iput-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    .line 839
    :cond_12
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 856
    .end local v1    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_13
    :goto_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 857
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .restart local v1    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_3

    .line 844
    .end local v1    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_15
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 845
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 846
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Too late to cancel Transaction"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 847
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    const/16 v3, 0xc8

    :try_start_2
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 851
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public releaseSem()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_1

    .line 1672
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    .line 1680
    :cond_0
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 1681
    return-void

    .line 1673
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_0
.end method

.method public scheduleAckRemoval()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1703
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1704
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is null["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] or method is not ACK["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1709
    return-void
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 10
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x2

    const/16 v7, 0x2bb

    .line 883
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v4, v0

    .line 884
    .local v4, "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 890
    .local v3, "statusCode":I
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 891
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 897
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v5

    if-nez v5, :cond_0

    .line 898
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->removePort()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 907
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1092
    return-void

    .line 893
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    const-string v6, "branch"

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_4
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1089
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "statusCode":I
    .end local v4    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v5

    .line 914
    .restart local v3    # "statusCode":I
    .restart local v4    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_2
    :try_start_5
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v5, v6, :cond_a

    .line 915
    div-int/lit8 v5, v3, 0x64

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 916
    sget-object v5, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1074
    :cond_3
    :goto_3
    :try_start_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1075
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage : tx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1078
    :cond_4
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1079
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1081
    :catch_1
    move-exception v1

    .line 1083
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1084
    const/4 v5, 0x0

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1085
    throw v1

    .line 917
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    if-gt v9, v3, :cond_3

    if-gt v3, v7, :cond_3

    .line 924
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-nez v5, :cond_7

    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_6

    .line 929
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 945
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_3

    .line 947
    :cond_6
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_3

    .line 956
    :cond_7
    div-int/lit8 v5, v3, 0x64

    if-ne v5, v8, :cond_8

    .line 975
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 976
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    .line 977
    const/16 v5, 0x40

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 978
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 979
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v5, :cond_3

    .line 980
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto :goto_3

    .line 983
    :cond_8
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 984
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_9

    .line 996
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    .line 999
    :cond_9
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    .line 1006
    :cond_a
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v5, v6, :cond_f

    .line 1008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1011
    div-int/lit8 v5, v3, 0x64

    if-ne v5, v8, :cond_b

    .line 1016
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 1017
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    .line 1018
    const/16 v5, 0x40

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1019
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1020
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v5, :cond_3

    .line 1021
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto/16 :goto_3

    .line 1023
    :cond_b
    const/16 v5, 0x12c

    if-gt v5, v3, :cond_3

    if-gt v3, v7, :cond_3

    .line 1026
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1027
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1037
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    .line 1040
    :cond_c
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    .line 1046
    :cond_d
    if-gt v9, v3, :cond_3

    if-gt v3, v7, :cond_3

    .line 1051
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1052
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1054
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 1055
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    .line 1059
    :cond_e
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_3

    .line 1066
    :cond_f
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    if-ne v5, v6, :cond_3

    goto/16 :goto_2
.end method

.method protected sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 10
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1542
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_0

    .line 1543
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Unacknowledged response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 1546
    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1551
    const-string v1, "RSeq"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/header/RSeq;

    .line 1552
    .local v9, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const-string v1, "RSeq"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1553
    new-instance v9, Lgov/nist/javax/sip/header/RSeq;

    .end local v9    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-direct {v9}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 1554
    .restart local v9    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-interface {p1, v9}, Ljavax/sip/message/Response;->setHeader(Ljavax/sip/header/Header;)V

    .line 1558
    :cond_1
    :try_start_0
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    .line 1559
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 1563
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v1, v0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1564
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1565
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    .line 1566
    .local v7, "acquired":Z
    if-nez v7, :cond_2

    .line 1567
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Unacknowledged response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .end local v7    # "acquired":Z
    .end local p1    # "relResponse":Ljavax/sip/message/Response;
    :catch_0
    move-exception v8

    .line 1577
    .local v8, "ex":Ljava/lang/Exception;
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1580
    .end local v8    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1570
    .restart local p1    # "relResponse":Ljavax/sip/message/Response;
    :cond_2
    :try_start_1
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .end local p1    # "relResponse":Ljavax/sip/message/Response;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1571
    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    .line 1572
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .locals 19
    .param p1, "response"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1234
    move-object/from16 v18, p1

    check-cast v18, Lgov/nist/javax/sip/message/SIPResponse;

    .line 1236
    .local v18, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    move-object/from16 v0, p0

    iget-object v9, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1237
    .local v9, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez p1, :cond_0

    .line 1238
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null response"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :cond_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1248
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "CSeq method does not match Request method of request that created the tx."

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1242
    :catch_0
    move-exception v12

    .line 1243
    .local v12, "ex":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v12}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1257
    .end local v12    # "ex":Ljava/text/ParseException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUBSCRIBE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1259
    const-string v2, "Expires"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1260
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Expires header is mandatory in 2xx response of SUBSCRIBE"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v16

    check-cast v16, Lgov/nist/javax/sip/header/Expires;

    .line 1263
    .local v16, "requestExpires":Lgov/nist/javax/sip/header/Expires;
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/header/Expires;

    .line 1268
    .local v17, "responseExpires":Lgov/nist/javax/sip/header/Expires;
    if-eqz v16, :cond_3

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1270
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Response Expires time exceeds request Expires time : See RFC 3265 3.1.1"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1278
    .end local v16    # "requestExpires":Lgov/nist/javax/sip/header/Expires;
    .end local v17    # "responseExpires":Lgov/nist/javax/sip/header/Expires;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Contact"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1281
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Contact Header is mandatory for the OK to the INVITE"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v2, p1

    .line 1283
    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1284
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Response does not belong to this transaction."

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1296
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-eqz v2, :cond_9

    .line 1306
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    .line 1307
    .local v8, "acquired":Z
    if-nez v8, :cond_6

    .line 1308
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "cannot send response -- unacked povisional"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1310
    .end local v8    # "acquired":Z
    :catch_1
    move-exception v12

    .line 1311
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Could not acquire PRACK sem "

    invoke-interface {v2, v3, v12}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1324
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_0
    if-eqz v9, :cond_d

    .line 1325
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1327
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1332
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/Utils;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 1343
    :cond_7
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1344
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Dialog mismatch!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1404
    .end local p1    # "response":Ljavax/sip/message/Response;
    :catch_2
    move-exception v12

    .line 1405
    .local v12, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v12}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1407
    :cond_8
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1408
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1409
    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1316
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 1318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1410
    .end local p1    # "response":Ljavax/sip/message/Response;
    :catch_3
    move-exception v13

    .line 1411
    .local v13, "ex1":Ljava/text/ParseException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v13}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1413
    :cond_a
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1414
    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v13}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1333
    .end local v13    # "ex1":Ljava/text/ParseException;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_b
    :try_start_5
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1334
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1335
    :cond_c
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1337
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag mismatch dialogTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1353
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 1354
    .local v14, "fromTag":Ljava/lang/String;
    if-eqz v14, :cond_e

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1356
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "From tag of request does not match response from tag"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1357
    :cond_e
    if-eqz v14, :cond_12

    .line 1358
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2, v14}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    .line 1368
    :cond_f
    :goto_2
    if-eqz v9, :cond_13

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_13

    .line 1369
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1370
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v15

    .line 1371
    .local v15, "oldState":Ljavax/sip/DialogState;
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1372
    if-nez v15, :cond_10

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v2, v3, :cond_10

    .line 1373
    new-instance v11, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v2

    invoke-direct {v11, v2, v9}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 1378
    .local v11, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v11, v0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1398
    .end local v11    # "event":Ljavax/sip/DialogTerminatedEvent;
    .end local v15    # "oldState":Ljavax/sip/DialogState;
    :cond_10
    :goto_3
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1400
    if-eqz v9, :cond_11

    .line 1401
    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    .end local p1    # "response":Ljavax/sip/message/Response;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    .line 1416
    :cond_11
    return-void

    .line 1360
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "WARNING -- Null From tag in request!!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 1382
    :cond_13
    if-nez v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v2, :cond_10

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 1386
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v10

    .line 1388
    .local v10, "dialogId":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3
.end method

.method public setAckSeen()V
    .locals 1

    .prologue
    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    .line 1647
    return-void
.end method

.method public setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 1498
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1500
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1501
    if-eqz p2, :cond_1

    .line 1502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    .line 1503
    :cond_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_3

    .line 1504
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1505
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1506
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1512
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1514
    return-void
.end method

.method public setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0
    .param p1, "st"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 1689
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1691
    return-void
.end method

.method public setMapped(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1659
    return-void
.end method

.method public setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "originalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1224
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1226
    return-void
.end method

.method public setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p1, "pendingSubscribeClientTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .prologue
    .line 1662
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1664
    return-void
.end method

.method public setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V
    .locals 0
    .param p1, "newRequestOf"    # Lgov/nist/javax/sip/stack/ServerRequestInterface;

    .prologue
    .line 526
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    .line 528
    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 1
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    .prologue
    .line 1448
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v0, :cond_0

    .line 1452
    const/16 v0, 0x40

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1455
    :cond_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1457
    return-void
.end method

.method protected startTransactionTimer()V
    .locals 6

    .prologue
    .line 1463
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1467
    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1468
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1471
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1522
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1523
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_1

    .line 1524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1525
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1533
    :cond_1
    return-void
.end method
