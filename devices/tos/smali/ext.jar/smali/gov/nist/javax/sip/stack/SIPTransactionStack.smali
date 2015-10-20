.class public abstract Lgov/nist/javax/sip/stack/SIPTransactionStack;
.super Ljava/lang/Object;
.source "SIPTransactionStack.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;,
        Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;
    }
.end annotation


# static fields
.field public static final BASE_TIMER_INTERVAL:I = 0x1f4

.field public static final CONNECTION_LINGER_TIME:I = 0x8

.field protected static final dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected addressResolver:Lgov/nist/core/net/AddressResolver;

.field protected cacheClientConnections:Z

.field protected cacheServerConnections:Z

.field protected cancelClientTransactionChecked:Z

.field protected checkBranchId:Z

.field private clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected clientTransactionTableHiwaterMark:I

.field protected clientTransactionTableLowaterMark:I

.field protected defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

.field protected dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected generateTimeStampHeader:Z

.field protected ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

.field protected isAutomaticDialogErrorHandlingEnabled:Z

.field protected isAutomaticDialogSupportEnabled:Z

.field protected isBackToBackUserAgent:Z

.field protected isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

.field protected logStackTraceOnMessageSend:Z

.field protected maxConnections:I

.field protected maxContentLength:I

.field protected maxForkTime:I

.field protected maxListenerResponseTime:I

.field protected maxMessageSize:I

.field private mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lgov/nist/javax/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected needsLogging:Z

.field protected networkLayer:Lgov/nist/core/net/NetworkLayer;

.field private non2XXAckPassedToListener:Z

.field protected outboundProxy:Ljava/lang/String;

.field private pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field protected receiveUdpBufferSize:I

.field protected remoteTagReassignmentAllowed:Z

.field protected retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected rfc2543Supported:Z

.field protected router:Ljavax/sip/address/Router;

.field protected routerPath:Ljava/lang/String;

.field protected sendUdpBufferSize:I

.field protected serverLogger:Lgov/nist/core/ServerLogger;

.field private serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected serverTransactionTableHighwaterMark:I

.field protected serverTransactionTableLowaterMark:I

.field protected sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

.field protected stackAddress:Ljava/lang/String;

.field protected stackDoesCongestionControl:Z

.field protected stackInetAddress:Ljava/net/InetAddress;

.field private stackLogger:Lgov/nist/core/StackLogger;

.field protected stackName:Ljava/lang/String;

.field private terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected threadAuditor:Lgov/nist/core/ThreadAuditor;

.field protected threadPoolSize:I

.field private timer:Ljava/util/Timer;

.field protected toExit:Z

.field udpFlag:Z

.field protected unlimitedClientTransactionTableSize:Z

.field protected unlimitedServerTransactionTableSize:Z

.field protected useRouterForAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    .line 414
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    .line 140
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    .line 144
    const/16 v0, 0x1388

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    .line 148
    const/16 v0, 0xfa0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    .line 153
    const/16 v0, 0x3e8

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    .line 156
    const/16 v0, 0x320

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 325
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 329
    new-instance v0, Lgov/nist/core/ThreadAuditor;

    invoke-direct {v0}, Lgov/nist/core/ThreadAuditor;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    .line 335
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 338
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    .line 340
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 348
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 350
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 354
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 356
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 361
    iput v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 423
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 424
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 427
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 430
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 433
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 435
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 439
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 442
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    .line 444
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 448
    new-instance v0, Lgov/nist/javax/sip/DefaultAddressResolver;

    invoke-direct {v0}, Lgov/nist/javax/sip/DefaultAddressResolver;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 455
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 466
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 467
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 470
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 472
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 476
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .prologue
    .line 1013
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    .line 1014
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1015
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 6
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 1520
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    .line 1521
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_3

    .line 1522
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v3, :cond_2

    .line 1523
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    if-le v3, v4, :cond_0

    .line 1525
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1527
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1528
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1544
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1556
    :cond_1
    :goto_1
    return-void

    .line 1528
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1532
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "Exception occured while waiting for room"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1538
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 1547
    :cond_3
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1550
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1552
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private auditDialogs(Ljava/util/Set;J)Ljava/lang/String;
    .locals 16
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J

    .prologue
    .line 2133
    const-string v1, "  Leaked dialogs:\n"

    .line 2134
    .local v1, "auditReport":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2135
    .local v11, "leakedDialogs":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2141
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v13

    .line 2142
    :try_start_0
    new-instance v8, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2143
    .local v8, "dialogs":Ljava/util/LinkedList;
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2151
    .local v9, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2153
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2156
    .local v10, "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 2157
    .local v3, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 2160
    .local v2, "callID":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_0

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2162
    iget-wide v12, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 2164
    iput-wide v4, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    goto :goto_0

    .line 2143
    .end local v2    # "callID":Ljava/lang/String;
    .end local v3    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    .end local v8    # "dialogs":Ljava/util/LinkedList;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 2156
    .restart local v8    # "dialogs":Ljava/util/LinkedList;
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v10    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2157
    .restart local v3    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 2168
    .restart local v2    # "callID":Ljava/lang/String;
    :cond_3
    iget-wide v12, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    sub-long v12, v4, v12

    cmp-long v12, v12, p2

    if-ltz v12, :cond_0

    .line 2170
    add-int/lit8 v11, v11, 0x1

    .line 2173
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    .line 2174
    .local v7, "dialogState":Ljavax/sip/DialogState;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dialog id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dialog state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljavax/sip/DialogState;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2177
    .local v6, "dialogReport":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2180
    sget v12, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v10, v12}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v12}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2182
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "auditDialogs: leaked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2174
    .end local v6    # "dialogReport":Ljava/lang/String;
    :cond_4
    const-string v12, "null"

    goto :goto_3

    .line 2189
    .end local v2    # "callID":Ljava/lang/String;
    .end local v3    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    .end local v7    # "dialogState":Ljavax/sip/DialogState;
    .end local v10    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_5
    if-lez v11, :cond_6

    .line 2190
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    Total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " leaked dialogs detected and removed.\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2195
    :goto_4
    return-object v1

    .line 2193
    :cond_6
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;
    .locals 15
    .param p1, "transactionsMap"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "a_nLeakedTransactionTimer"    # J

    .prologue
    .line 2205
    const-string v0, "  Leaked transactions:\n"

    .line 2206
    .local v0, "auditReport":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2207
    .local v4, "leakedTransactions":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2212
    .local v1, "currentTime":J
    new-instance v10, Ljava/util/LinkedList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2215
    .local v10, "transactionsList":Ljava/util/LinkedList;
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2216
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2217
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 2218
    .local v7, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v7, :cond_0

    .line 2219
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    .line 2221
    iput-wide v1, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    goto :goto_0

    .line 2225
    :cond_1
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    sub-long v11, v1, v11

    cmp-long v11, v11, p2

    if-ltz v11, :cond_0

    .line 2227
    add-int/lit8 v4, v4, 0x1

    .line 2230
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v9

    .line 2231
    .local v9, "transactionState":Ljavax/sip/TransactionState;
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    .line 2232
    .local v5, "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 2234
    .local v6, "origRequestMethod":Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljavax/sip/TransactionState;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", OR: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_4

    .end local v6    # "origRequestMethod":Ljava/lang/String;
    :goto_3
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2239
    .local v8, "transactionReport":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2242
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 2243
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2244
    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "auditTransactions: leaked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2232
    .end local v8    # "transactionReport":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2234
    .restart local v6    # "origRequestMethod":Ljava/lang/String;
    :cond_3
    const-string v11, "null"

    goto :goto_2

    :cond_4
    const-string v6, "null"

    goto :goto_3

    .line 2251
    .end local v5    # "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v6    # "origRequestMethod":Ljava/lang/String;
    .end local v7    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v9    # "transactionState":Ljavax/sip/TransactionState;
    :cond_5
    if-lez v4, :cond_6

    .line 2252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    Total: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " leaked transactions detected and removed.\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2257
    :goto_4
    return-object v0

    .line 2255
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isDialogCreated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addExtensionMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "extensionMethod"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string v0, "NOTIFY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "NOTIFY Supported Natively"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 2
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .prologue
    .line 2484
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    return-void
.end method

.method protected addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "newMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1890
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1899
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1901
    monitor-exit v1

    .line 1902
    return-void

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 3
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .prologue
    .line 1438
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1440
    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1442
    return-void
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1508
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1510
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->map()V

    .line 1512
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1514
    return-void
.end method

.method public addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 851
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 853
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_0
    return-void
.end method

.method public auditStack(Ljava/util/Set;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J
    .param p4, "leakedTransactionTimer"    # J

    .prologue
    .line 2110
    const/4 v0, 0x0

    .line 2111
    .local v0, "auditReport":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditDialogs(Ljava/util/Set;J)Ljava/lang/String;

    move-result-object v2

    .line 2112
    .local v2, "leakedDialogs":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v3

    .line 2114
    .local v3, "leakedServerTransactions":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, "leakedClientTransactions":Ljava/lang/String;
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 2118
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Stack Audit:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2

    .end local v2    # "leakedDialogs":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_3

    .end local v3    # "leakedServerTransactions":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    .end local v1    # "leakedClientTransactions":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2122
    :cond_1
    return-object v0

    .line 2118
    .restart local v1    # "leakedClientTransactions":Ljava/lang/String;
    .restart local v2    # "leakedDialogs":Ljava/lang/String;
    .restart local v3    # "leakedServerTransactions":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_0

    .end local v2    # "leakedDialogs":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1

    .end local v3    # "leakedServerTransactions":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_2
.end method

.method public checkBranchId()Z
    .locals 1

    .prologue
    .line 2462
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    return v0
.end method

.method public createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v0, p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 1384
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1385
    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 686
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V

    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 663
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "dialogId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 665
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 667
    .restart local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_0
    :goto_0
    return-object v1

    .line 672
    :cond_1
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog;

    .end local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .restart local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 5
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 630
    const/4 v2, 0x0

    .line 632
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_3

    .line 633
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 635
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 636
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v3, v4, :cond_1

    .line 637
    :cond_0
    move-object v2, v0

    .line 650
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "dialogId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 639
    .restart local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v1    # "dialogId":Ljava/lang/String;
    :cond_1
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 640
    .restart local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 643
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 644
    .restart local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 647
    .end local v1    # "dialogId":Ljava/lang/String;
    :cond_3
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .restart local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_0
.end method

.method public createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 6
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "mp"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1350
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    .line 1351
    .local v2, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 1352
    new-instance v3, Lgov/nist/core/HostPort;

    invoke-direct {v3}, Lgov/nist/core/HostPort;-><init>()V

    .line 1353
    .local v3, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v3, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 1354
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 1355
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    .line 1359
    .local v0, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    if-nez v0, :cond_0

    .line 1360
    const/4 v1, 0x0

    .line 1371
    :goto_0
    return-object v1

    .line 1362
    :cond_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v1

    .local v1, "returnChannel":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v4, v1

    .line 1364
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaPort(I)V

    move-object v4, v1

    .line 1365
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    .line 1366
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method protected createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 9
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1939
    const-string v7, "udp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1940
    new-instance v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-direct {v6, p1, p0, p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1942
    .local v6, "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1943
    const/4 v7, 0x1

    iput-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    .line 1966
    .end local v6    # "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :goto_0
    return-object v6

    .line 1945
    :cond_0
    const-string v7, "tcp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1946
    new-instance v4, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-direct {v4, p1, p0, p2}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1948
    .local v4, "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    move-object v6, v4

    .line 1950
    goto :goto_0

    .line 1951
    .end local v4    # "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_1
    const-string v7, "tls"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1952
    new-instance v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-direct {v5, p1, p0, p2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1954
    .local v5, "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    move-object v6, v5

    .line 1956
    goto :goto_0

    .line 1957
    .end local v5    # "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_2
    const-string v7, "sctp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1962
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "gov.nist.javax.sip.stack.sctp.SCTPMessageProcessor"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1963
    .local v3, "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1964
    .local v2, "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v2, p1, p2, p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 1965
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v2

    .line 1966
    goto :goto_0

    .line 1967
    .end local v2    # "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v3    # "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1968
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1969
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1970
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Error initializing SCTP"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1971
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 1972
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Error initializing SCTP"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1975
    .end local v1    # "ie":Ljava/lang/IllegalAccessException;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad transport"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 9
    .param p1, "sourceIpAddress"    # Ljava/lang/String;
    .param p2, "sourcePort"    # I
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2012
    new-instance v5, Lgov/nist/core/Host;

    invoke-direct {v5}, Lgov/nist/core/Host;-><init>()V

    .line 2013
    .local v5, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 2014
    new-instance v6, Lgov/nist/core/HostPort;

    invoke-direct {v6}, Lgov/nist/core/HostPort;-><init>()V

    .line 2015
    .local v6, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v6, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 2016
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 2019
    const/4 v2, 0x0

    .line 2020
    .local v2, "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2021
    .local v4, "processorIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v2, :cond_2

    .line 2022
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 2025
    .local v3, "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 2031
    :try_start_0
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 2032
    :catch_0
    move-exception v1

    .line 2033
    .local v1, "ex":Ljava/net/UnknownHostException;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2034
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 2035
    :cond_1
    throw v1

    .line 2036
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 2037
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2038
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2045
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_2
    return-object v2
.end method

.method public createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 8
    .param p1, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 1397
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    if-eqz v2, :cond_0

    .line 1398
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 1406
    :goto_0
    return-object v2

    .line 1400
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1402
    .local v1, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    float-to-double v6, v1

    sub-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 1403
    .local v0, "decision":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1404
    const/4 v2, 0x0

    goto :goto_0

    .line 1402
    .end local v0    # "decision":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1406
    .restart local v0    # "decision":Z
    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_0
.end method

.method protected decrementActiveClientTransactionCount()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v0, :cond_0

    .line 1566
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 1568
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1570
    monitor-exit v1

    .line 1572
    :cond_0
    return-void

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 4
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    .prologue
    .line 1624
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1625
    .local v1, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v2

    .line 1627
    .local v2, "sipListener":Ljavax/sip/SipListener;
    if-eqz v1, :cond_0

    instance-of v3, v2, Lgov/nist/javax/sip/SipListenerExt;

    if-nez v3, :cond_0

    .line 1628
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :cond_0
    monitor-exit p0

    return-void

    .line 1624
    .end local v1    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v2    # "sipListener":Ljavax/sip/SipListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public disableLogging()V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->disableLogging()V

    .line 542
    return-void
.end method

.method public enableLogging()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->enableLogging()V

    .line 550
    return-void
.end method

.method public findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 8
    .param p1, "cancelRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "isServer"    # Z

    .prologue
    .line 975
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCancelTransaction request= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nfindCancelRequest isServer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 980
    :cond_0
    if-eqz p2, :cond_2

    .line 981
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 982
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 983
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    .local v4, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v3, v4

    .line 985
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 986
    .local v3, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1004
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v3    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :goto_0
    return-object v3

    .line 991
    :cond_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 992
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 993
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    .restart local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v4

    .line 995
    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 996
    .local v2, "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v2

    .line 997
    goto :goto_0

    .line 1002
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v2    # "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1003
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "Could not find transaction for cancel request"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1004
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 10
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    const/4 v8, 0x0

    .line 1044
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v9, "INVITE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v3, v8

    .line 1072
    :cond_0
    :goto_0
    return-object v3

    .line 1050
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "mergeId":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1052
    .local v3, "mergedTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-nez v2, :cond_2

    move-object v3, v8

    .line 1053
    goto :goto_0

    .line 1054
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1060
    :cond_3
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .local v0, "dialog":Ljavax/sip/Dialog;
    move-object v5, v0

    .line 1061
    check-cast v5, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1062
    .local v5, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    instance-of v7, v7, Ljavax/sip/ServerTransaction;

    if-eqz v7, :cond_4

    .line 1064
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1065
    .local v4, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    .line 1066
    .local v6, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1068
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v3, v7

    goto :goto_0

    .end local v0    # "dialog":Ljavax/sip/Dialog;
    .end local v4    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v5    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v6    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_5
    move-object v3, v8

    .line 1072
    goto :goto_0
.end method

.method public findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 3
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1026
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for pending tx for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 12
    .param p1, "notifyMessage"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "listeningPoint"    # Lgov/nist/javax/sip/ListeningPointImpl;

    .prologue
    .line 789
    const/4 v5, 0x0

    .line 791
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :try_start_0
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 792
    .local v4, "it":Ljava/util/Iterator;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 793
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct table size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 794
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 795
    .local v7, "thisToTag":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 838
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    move-object v6, v5

    .line 836
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .local v6, "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :goto_0
    return-object v6

    .line 798
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_2
    :try_start_1
    const-string v8, "Event"

    invoke-virtual {p1, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Event;

    .line 799
    .local v1, "eventHdr":Lgov/nist/javax/sip/header/Event;
    if-nez v1, :cond_5

    .line 800
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 801
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v9, "event Header is null -- returning null"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :cond_3
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    move-object v6, v5

    .line 804
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    goto :goto_0

    .line 806
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 807
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 808
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUBSCRIBE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 812
    iget-object v8, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "fromTag":Ljava/lang/String;
    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->event:Lgov/nist/javax/sip/header/Event;

    .line 816
    .local v3, "hisEvent":Lgov/nist/javax/sip/header/Event;
    if-eqz v3, :cond_5

    .line 818
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 819
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct.fromTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 820
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thisToTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 821
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hisEvent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 822
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventHdr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 825
    :cond_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Event;->match(Lgov/nist/javax/sip/header/Event;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 830
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_7

    .line 831
    move-object v5, v0

    .line 838
    :cond_7
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_8
    move-object v6, v5

    .line 832
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    goto/16 :goto_0

    .line 838
    .end local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v2    # "fromTag":Ljava/lang/String;
    .end local v3    # "hisEvent":Lgov/nist/javax/sip/header/Event;
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_9
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    move-object v6, v5

    .line 836
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    goto/16 :goto_0

    .line 838
    .end local v1    # "eventHdr":Lgov/nist/javax/sip/header/Event;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v7    # "thisToTag":Ljava/lang/String;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 839
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSubscribeTransaction : returning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 838
    :cond_b
    throw v8
.end method

.method public findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 13
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "isServer"    # Z

    .prologue
    .line 907
    const/4 v5, 0x0

    .line 909
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz p2, :cond_5

    .line 910
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    .line 911
    .local v8, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 912
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 914
    .local v4, "key":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v5, v0

    .line 915
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 916
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serverTx: looking for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " existing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 919
    :cond_0
    const-string v9, "z9hg4bk"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    move-object v6, v5

    .line 965
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .local v6, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :goto_0
    return-object v6

    .line 926
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 927
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 928
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 929
    .local v7, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v7, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 930
    move-object v5, v7

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    move-object v6, v5

    .line 931
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto :goto_0

    .line 936
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v7    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v8    # "via":Lgov/nist/javax/sip/header/Via;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    .line 937
    .restart local v8    # "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 938
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 939
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 940
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clientTx: looking for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 941
    :cond_6
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v5, v0

    .line 942
    const-string v9, "z9hg4bk"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_8

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    move-object v6, v5

    .line 943
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto/16 :goto_0

    .line 950
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_8
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 951
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 952
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 953
    .local v1, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_9

    .line 954
    move-object v5, v1

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    move-object v6, v5

    .line 955
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto/16 :goto_0

    .line 961
    .end local v1    # "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v8    # "via":Lgov/nist/javax/sip/header/Via;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTransaction: returning  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 961
    :cond_b
    throw v9

    .restart local v8    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_d
    move-object v6, v5

    .line 965
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v6    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto/16 :goto_0
.end method

.method public findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2
    .param p1, "ackMessage"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 865
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getActiveClientTransactionCount()I
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAddressResolver()Lgov/nist/core/net/AddressResolver;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    return-object v0
.end method

.method public getClientTransactionTableSize()I
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 754
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 755
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 758
    :cond_0
    return-object v0
.end method

.method public getDialogs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2301
    .local v0, "dialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2302
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2303
    return-object v0
.end method

.method public getDialogs(Ljavax/sip/DialogState;)Ljava/util/Collection;
    .locals 5
    .param p1, "state"    # Ljavax/sip/DialogState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sip/DialogState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2311
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2312
    .local v3, "matchingDialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2313
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2322
    :cond_0
    return-object v3

    .line 2315
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2316
    .local v1, "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2317
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2318
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 2488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
    .locals 6
    .param p1, "joinHeader"    # Lgov/nist/javax/sip/header/extensions/JoinHeader;

    .prologue
    .line 2375
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2376
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    .line 2377
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getToTag()Ljava/lang/String;

    move-result-object v3

    .line 2379
    .local v3, "toTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-eqz v3, :cond_0

    .line 2383
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2387
    :cond_0
    if-eqz v1, :cond_1

    .line 2388
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2389
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2391
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    return-object v4
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 1740
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    return v0
.end method

.method protected getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 3

    .prologue
    .line 1925
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1926
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, [Lgov/nist/javax/sip/stack/MessageProcessor;

    monitor-exit v1

    return-object v0

    .line 1927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkLayer()Lgov/nist/core/net/NetworkLayer;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    if-nez v0, :cond_0

    .line 1700
    sget-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    .line 1702
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    goto :goto_0
.end method

.method public getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;
    .locals 2
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1779
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v1, :cond_1

    .line 1781
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v1, :cond_0

    .line 1782
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    .line 1793
    :cond_0
    :goto_0
    return-object v0

    .line 1788
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1789
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    goto :goto_0

    .line 1790
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v1, :cond_0

    .line 1791
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    goto :goto_0
.end method

.method public getReceiveUdpBufferSize()I
    .locals 1

    .prologue
    .line 2416
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return v0
.end method

.method public getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
    .locals 11
    .param p1, "replacesHeader"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .prologue
    .line 2331
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v4

    .line 2333
    .local v4, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v7

    .line 2335
    .local v7, "toTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v2, "dialogId":Ljava/lang/StringBuffer;
    if-eqz v7, :cond_0

    .line 2339
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2340
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2343
    :cond_0
    if-eqz v4, :cond_1

    .line 2344
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2345
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2347
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2348
    .local v3, "did":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2349
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking for dialog "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2353
    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/sip/Dialog;

    .line 2357
    .local v6, "replacesDialog":Ljavax/sip/Dialog;
    if-nez v6, :cond_4

    .line 2358
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2359
    .local v1, "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2360
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v6

    .line 2366
    .end local v1    # "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    return-object v6
.end method

.method public getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 571
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getRouter()Ljavax/sip/address/Router;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0
.end method

.method public getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;
    .locals 2
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1850
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1851
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    .line 1862
    :goto_0
    return-object v0

    .line 1852
    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v0, :cond_1

    .line 1853
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    goto :goto_0

    .line 1855
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1857
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    goto :goto_0

    .line 1859
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_4

    .line 1860
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    goto :goto_0

    .line 1862
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    goto :goto_0
.end method

.method public getSendUdpBufferSize()I
    .locals 1

    .prologue
    .line 2436
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return v0
.end method

.method public getServerLogger()Lgov/nist/core/ServerLogger;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    return-object v0
.end method

.method public getServerTransactionTableSize()I
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStackLogger()Lgov/nist/core/StackLogger;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    return-object v0
.end method

.method public getThreadAuditor()Lgov/nist/core/ThreadAuditor;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    return-object v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1882
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelClientTransactionChecked()Z
    .locals 1

    .prologue
    .line 2286
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    return v0
.end method

.method public isEventForked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ename"    # Ljava/lang/String;

    .prologue
    .line 2056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEventForked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2060
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLogStackTraceOnMessageSend()Z
    .locals 1

    .prologue
    .line 2476
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isNon2XXAckPassedToListener()Z
    .locals 1

    .prologue
    .line 2268
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return v0
.end method

.method public isRemoteTagReassignmentAllowed()Z
    .locals 1

    .prologue
    .line 2290
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    return v0
.end method

.method public isRfc2543Supported()Z
    .locals 1

    .prologue
    .line 2282
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    return v0
.end method

.method public isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 892
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "branchId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 1126
    iget-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v0, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    goto :goto_0
.end method

.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .locals 10
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "requestMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    const/4 v6, 0x0

    .line 1151
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    .line 1155
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1158
    .local v0, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1162
    :cond_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1163
    .local v4, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    const/4 v0, 0x0

    .line 1164
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "z9hg4bk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1165
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    .line 1167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1170
    .local v3, "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1173
    move-object v0, v3

    goto :goto_0

    .line 1179
    .end local v3    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_2
    if-nez v0, :cond_5

    .line 1180
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_4

    .line 1183
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1184
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v0

    .line 1234
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_3
    :goto_1
    return-object v6

    .line 1191
    .restart local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_4
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1192
    if-eqz v0, :cond_5

    .line 1194
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1196
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1205
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_5
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1206
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newSIPServerRequest( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1210
    :cond_6
    if-eqz v0, :cond_7

    .line 1211
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v7, p1, v0}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V

    .line 1214
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v6, v0

    .line 1215
    goto :goto_1

    .line 1216
    :cond_8
    if-eqz v0, :cond_3

    .line 1222
    :try_start_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1224
    const/16 v7, 0x64

    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v5

    .line 1225
    .local v5, "trying":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    .line 1226
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v7

    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1228
    .end local v5    # "trying":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1230
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "Exception occured sending TRYING"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .locals 10
    .param p1, "responseReceived"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "responseMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x10

    .line 1257
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1262
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1264
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "z9hg4bk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1269
    :cond_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1270
    .local v5, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    const/4 v1, 0x0

    .line 1271
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    .line 1273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1276
    .local v3, "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1280
    move-object v1, v3

    goto :goto_0

    .line 1287
    .end local v3    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_2
    if-nez v1, :cond_5

    .line 1291
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "before processing"

    invoke-virtual {p2, p1, v6, v7, v8}, Lgov/nist/javax/sip/stack/MessageChannel;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1297
    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v6, p1, p2}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v6

    .line 1332
    .end local v5    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_4
    :goto_1
    return-object v6

    .line 1304
    :cond_5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v0

    .line 1307
    .local v0, "acquired":Z
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "before processing"

    invoke-virtual {v1, p1, v7, v8, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1312
    :cond_6
    if-eqz v0, :cond_a

    .line 1313
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v7, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v4

    .line 1315
    .local v4, "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v4, :cond_8

    .line 1316
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V

    .line 1329
    .end local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_7
    :goto_2
    if-eqz v0, :cond_4

    move-object v6, v1

    .line 1330
    goto :goto_1

    .line 1318
    .restart local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_8
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1319
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "returning null - serverResponseInterface is null!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1321
    :cond_9
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    goto :goto_1

    .line 1325
    .end local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_a
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1326
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "Could not aquire semaphore !!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgov/nist/javax/sip/stack/IOHandler;->obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public printDialogTable()V
    .locals 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 559
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void
.end method

.method public putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 4
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 604
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog: dialog already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 615
    :cond_2
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 616
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 618
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1113
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "mergeKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1115
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_0
    return-void
.end method

.method public putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 1685
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPendingTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1688
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    return-void
.end method

.method protected reInit()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Re-initializing !"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 486
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 488
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 491
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 492
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 494
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 495
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 497
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 498
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 502
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 504
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 506
    return-void
.end method

.method public removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    const/4 v5, 0x0

    .line 696
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "earlyId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 701
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    if-eqz v2, :cond_3

    .line 710
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 712
    .local v3, "old":Ljava/lang/Object;
    if-ne v3, p1, :cond_1

    .line 713
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_2

    .line 721
    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 726
    .local v1, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 742
    .end local v1    # "event":Ljavax/sip/DialogTerminatedEvent;
    .end local v3    # "old":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 730
    :cond_3
    iget-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    if-eqz v4, :cond_2

    .line 731
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_2

    .line 732
    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 737
    .restart local v1    # "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method public removeDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Silently removing dialog from table"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-void
.end method

.method public removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 1097
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v2, "Removing tx from merge table "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1100
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1102
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_1
    return-void
.end method

.method protected removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "oldMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;

    .prologue
    .line 1910
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1911
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    .line 1914
    :cond_0
    monitor-exit v1

    .line 1915
    return-void

    .line 1914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 1083
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePendingTx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1086
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    return-void
.end method

.method public removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 10
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 1449
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1450
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing Transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1453
    :cond_0
    instance-of v7, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_4

    .line 1454
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1455
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1456
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1457
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1458
    .local v4, "removed":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    .local v3, "method":Ljava/lang/String;
    move-object v7, p1

    .line 1459
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object v7, p1

    .line 1460
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    .line 1461
    const-string v7, "INVITE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 1462
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1465
    :cond_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    .line 1466
    .local v5, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1467
    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    .line 1470
    .local v1, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1499
    .end local v1    # "event":Ljavax/sip/TransactionTerminatedEvent;
    .end local v3    # "method":Ljava/lang/String;
    .end local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_3
    :goto_0
    return-void

    .line 1475
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "removed":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1476
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1478
    .restart local v4    # "removed":Ljava/lang/Object;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1479
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REMOVED client tx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KEY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1480
    if-eqz v4, :cond_5

    move-object v0, v4

    .line 1481
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1482
    .local v0, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v7, :cond_5

    .line 1483
    new-instance v6, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    invoke-direct {v6, p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 1484
    .local v6, "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1490
    .end local v0    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v6    # "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    :cond_5
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1491
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    .line 1492
    .restart local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    .line 1495
    .restart local v1    # "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method protected removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 5
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 1578
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1579
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v1, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v2, :cond_3

    .line 1582
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1584
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1585
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing client Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1587
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1589
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v2, :cond_0

    .line 1590
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1591
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1593
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing server Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 876
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/4 v1, 0x1

    .line 881
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
    .locals 0
    .param p1, "addressResolver"    # Lgov/nist/core/net/AddressResolver;

    .prologue
    .line 2078
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 2079
    return-void
.end method

.method public setDeliverDialogTerminatedEventForNullDialog()V
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 2481
    return-void
.end method

.method protected setHostAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "stackAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5b

    const/16 v1, 0x3a

    .line 1814
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    .line 1819
    :goto_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackInetAddress:Ljava/net/InetAddress;

    .line 1820
    return-void

    .line 1818
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLogRecordFactory(Lgov/nist/javax/sip/LogRecordFactory;)V
    .locals 0
    .param p1, "logRecordFactory"    # Lgov/nist/javax/sip/LogRecordFactory;

    .prologue
    .line 2087
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    .line 2088
    return-void
.end method

.method public setLogStackTraceOnMessageSend(Z)V
    .locals 0
    .param p1, "logStackTraceOnMessageSend"    # Z

    .prologue
    .line 2469
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 2470
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "nconnections"    # I

    .prologue
    .line 1769
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 1770
    return-void
.end method

.method protected setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .prologue
    .line 1986
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1987
    return-void
.end method

.method public setNon2XXAckPassedToListener(Z)V
    .locals 0
    .param p1, "passToListener"    # Z

    .prologue
    .line 2261
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    .line 2262
    return-void
.end method

.method public setReceiveUdpBufferSize(I)V
    .locals 0
    .param p1, "receiveUdpBufferSize"    # I

    .prologue
    .line 2426
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    .line 2427
    return-void
.end method

.method protected setRouter(Ljavax/sip/address/Router;)V
    .locals 0
    .param p1, "router"    # Ljavax/sip/address/Router;

    .prologue
    .line 1841
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    .line 1842
    return-void
.end method

.method public setSendUdpBufferSize(I)V
    .locals 0
    .param p1, "sendUdpBufferSize"    # I

    .prologue
    .line 2446
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    .line 2447
    return-void
.end method

.method public setSingleThreaded()V
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1750
    return-void
.end method

.method public setStackLogger(Lgov/nist/core/StackLogger;)V
    .locals 0
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    .prologue
    .line 2453
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    .line 2454
    return-void
.end method

.method public setStackName(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackName"    # Ljava/lang/String;

    .prologue
    .line 1803
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    .line 1804
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1760
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1761
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 2398
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 2399
    return-void
.end method

.method public stopStack()V
    .locals 4

    .prologue
    .line 1640
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1641
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1644
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 1645
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1646
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 1647
    monitor-enter p0

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 1651
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1654
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v3

    .line 1657
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v1

    .line 1658
    .local v1, "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    const/4 v0, 0x0

    .local v0, "processorIndex":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1659
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1649
    .end local v0    # "processorIndex":I
    .end local v1    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1652
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1661
    .restart local v0    # "processorIndex":I
    .restart local v1    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_1
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/IOHandler;->closeAll()V

    .line 1664
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1667
    const-wide/16 v2, 0x3e8

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1671
    :goto_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1672
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1674
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1675
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v2}, Lgov/nist/core/ServerLogger;->closeLogFile()V

    .line 1677
    return-void

    .line 1664
    .end local v0    # "processorIndex":I
    .end local v1    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 1669
    .restart local v0    # "processorIndex":I
    .restart local v1    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 4
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    .prologue
    .line 1604
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1606
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1608
    sget-object v2, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1609
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v2, :cond_0

    .line 1611
    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1613
    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 1614
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    :cond_1
    monitor-exit p0

    return-void

    .line 1604
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
