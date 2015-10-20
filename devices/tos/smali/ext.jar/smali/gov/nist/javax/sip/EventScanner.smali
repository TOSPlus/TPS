.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private eventMutex:[I

.field private isStopped:Z

.field private pendingEvents:Ljava/util/LinkedList;

.field private refCount:I

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 3
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v0, "myThread":Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 74
    const-string v1, "EventScannerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 3
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .prologue
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v1

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 17
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v7, v0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 129
    .local v7, "sipEvent":Ljava/util/EventObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sipEvent = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_0
    const/4 v8, 0x0

    .line 135
    .local v8, "sipListener":Ljavax/sip/SipListener;
    instance-of v13, v7, Ljavax/sip/IOExceptionEvent;

    if-nez v13, :cond_c

    .line 136
    invoke-virtual {v7}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    .line 141
    :goto_0
    instance-of v13, v7, Ljavax/sip/RequestEvent;

    if-eqz v13, :cond_1c

    .line 145
    :try_start_0
    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    .line 148
    .local v9, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deliverEvent : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " transaction "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " sipEvent.serverTx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    const/4 v14, 0x1

    invoke-virtual {v13, v9, v14}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v12

    check-cast v12, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 171
    .local v12, "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-nez v13, :cond_12

    .line 180
    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Detected broken client sending ACK with same branch! Passing..."

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 211
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v9, v13}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 223
    :cond_4
    if-eqz v8, :cond_5

    .line 224
    move-object v0, v7

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v13, v0

    invoke-interface {v8, v13}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    .line 226
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_7

    .line 233
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 235
    .local v3, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v3, :cond_7

    .line 236
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v3    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    :goto_3
    invoke-virtual {v13, v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 448
    .end local v8    # "sipListener":Ljavax/sip/SipListener;
    .end local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_b
    :goto_4
    return-void

    .line 138
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    .restart local v8    # "sipListener":Ljavax/sip/SipListener;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    goto/16 :goto_0

    .line 191
    .restart local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v12    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "transaction already exists! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_f
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_10

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_11

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_11
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_3

    .line 196
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13, v9}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "transaction already exists!!"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done processing Message "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_14
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_15

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_15
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_16

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v14, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_16
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_3

    .line 206
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_17
    :try_start_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v11, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 207
    .local v11, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13, v11}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 246
    .end local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v11    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v12    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catchall_0
    move-exception v13

    move-object v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    check-cast v7, Ljavax/sip/RequestEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_18
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_19

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 255
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_19
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_1a

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v15, v13}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_1a
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v15, "ACK"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 268
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v15, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {v13, v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 246
    :cond_1b
    throw v14

    .line 239
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    .restart local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v12    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catch_0
    move-exception v4

    .line 243
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 273
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_1c
    instance-of v13, v7, Ljavax/sip/ResponseEvent;

    if-eqz v13, :cond_28

    .line 275
    :try_start_6
    move-object v0, v7

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v5, v0

    .line 276
    .local v5, "responseEvent":Ljavax/sip/ResponseEvent;
    invoke-virtual {v5}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/message/SIPResponse;

    .line 278
    .local v10, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v5}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 280
    .local v6, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calling listener for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 286
    :cond_1d
    if-eqz v8, :cond_1f

    .line 287
    move-object/from16 v0, p1

    iget-object v12, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 288
    .local v12, "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v12, :cond_1e

    .line 289
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 291
    :cond_1e
    check-cast v7, Ljavax/sip/ResponseEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    .line 299
    .end local v12    # "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_1f
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    if-eqz v13, :cond_20

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v13, v14}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    :cond_20
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x1e1

    if-eq v13, v14, :cond_21

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x198

    if-ne v13, v14, :cond_23

    .line 303
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Removing dialog on 408 or 481 response"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 307
    :cond_22
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V

    .line 327
    :cond_23
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    if-eqz v6, :cond_25

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_25

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_24

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning! unacknowledged dialog. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 338
    :cond_24
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 349
    :cond_25
    :goto_5
    :try_start_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 350
    .local v2, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v2, :cond_26

    sget-object v13, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v14

    if-ne v13, v14, :cond_26

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    if-eqz v13, :cond_26

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    .line 359
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 363
    :cond_26
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_b

    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 365
    move-object/from16 v0, p1

    iget-object v13, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_4

    .line 340
    .end local v2    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_1
    move-exception v4

    .line 344
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 363
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "responseEvent":Ljavax/sip/ResponseEvent;
    .end local v6    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v10    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_1
    move-exception v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v14, :cond_27

    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_27

    .line 365
    move-object/from16 v0, p1

    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 363
    :cond_27
    throw v13

    .line 369
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_28
    instance-of v13, v7, Ljavax/sip/TimeoutEvent;

    if-eqz v13, :cond_29

    .line 373
    if-eqz v8, :cond_b

    .line 374
    :try_start_a
    check-cast v7, Ljavax/sip/TimeoutEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 375
    :catch_2
    move-exception v4

    .line 379
    .restart local v4    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 382
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_29
    instance-of v13, v7, Lgov/nist/javax/sip/DialogTimeoutEvent;

    if-eqz v13, :cond_2a

    .line 385
    if-eqz v8, :cond_b

    :try_start_b
    instance-of v13, v8, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v13, :cond_b

    .line 386
    check-cast v8, Lgov/nist/javax/sip/SipListenerExt;

    .end local v8    # "sipListener":Ljavax/sip/SipListener;
    check-cast v7, Lgov/nist/javax/sip/DialogTimeoutEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 388
    :catch_3
    move-exception v4

    .line 392
    .restart local v4    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 395
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    .restart local v8    # "sipListener":Ljavax/sip/SipListener;
    :cond_2a
    instance-of v13, v7, Ljavax/sip/IOExceptionEvent;

    if-eqz v13, :cond_2b

    .line 397
    if-eqz v8, :cond_b

    .line 398
    :try_start_c
    check-cast v7, Ljavax/sip/IOExceptionEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_4

    .line 399
    :catch_4
    move-exception v4

    .line 400
    .restart local v4    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 402
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_2b
    instance-of v13, v7, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v13, :cond_2d

    .line 404
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "About to deliver transactionTerminatedEvent"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tx = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    :cond_2c
    if-eqz v8, :cond_b

    .line 418
    check-cast v7, Ljavax/sip/TransactionTerminatedEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_d
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_4

    .line 420
    :catch_5
    move-exception v1

    .line 422
    .local v1, "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 427
    .end local v1    # "ame":Ljava/lang/AbstractMethodError;
    :catch_6
    move-exception v4

    .line 428
    .restart local v4    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 430
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_2d
    instance-of v13, v7, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v13, :cond_2e

    .line 432
    if-eqz v8, :cond_b

    .line 433
    :try_start_e
    check-cast v7, Ljavax/sip/DialogTerminatedEvent;

    .end local v7    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v8, v7}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_e
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_4

    .line 435
    :catch_7
    move-exception v1

    .line 437
    .restart local v1    # "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Unable to call sipListener.processDialogTerminated"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 440
    .end local v1    # "ame":Ljava/lang/AbstractMethodError;
    :catch_8
    move-exception v4

    .line 441
    .restart local v4    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    invoke-interface {v13, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 445
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "sipEvent":Ljava/util/EventObject;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad event"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 120
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v1

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incrementRefcount()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 61
    :try_start_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 459
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v5

    .line 462
    .local v5, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    const/4 v1, 0x0

    .line 465
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 471
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-eqz v6, :cond_3

    .line 472
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 473
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v8, "Stopped event scanner!!"

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 475
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_2

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    :goto_1
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 490
    :cond_2
    return-void

    .line 482
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 485
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v3

    .line 488
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 489
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v8, "Interrupted!"

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_2

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    goto :goto_1

    .line 499
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_4
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 500
    .local v2, "eventsToDeliver":Ljava/util/LinkedList;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 501
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 502
    :try_start_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 503
    .local v4, "iterator":Ljava/util/ListIterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 504
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    check-cast v1, Lgov/nist/javax/sip/EventWrapper;

    .line 505
    .restart local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 506
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nevents "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    :cond_7
    :try_start_6
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 512
    :catch_1
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 514
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .end local v2    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "iterator":Ljava/util/ListIterator;
    .end local v5    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 522
    iget-boolean v7, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v7, :cond_8

    .line 523
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Event scanner exited abnormally"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 521
    :cond_8
    throw v6

    .line 501
    .restart local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .restart local v5    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 102
    :try_start_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-lez v0, :cond_0

    .line 103
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 105
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 107
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_1
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
