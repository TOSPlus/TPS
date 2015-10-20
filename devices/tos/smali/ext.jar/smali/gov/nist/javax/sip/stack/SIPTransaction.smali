.class public abstract Lgov/nist/javax/sip/stack/SIPTransaction;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "SIPTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/TransactionExt;
.implements Ljavax/sip/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;
    }
.end annotation


# static fields
.field public static final CALLING_STATE:Ljavax/sip/TransactionState;

.field public static final COMPLETED_STATE:Ljavax/sip/TransactionState;

.field public static final CONFIRMED_STATE:Ljavax/sip/TransactionState;

.field public static final INITIAL_STATE:Ljavax/sip/TransactionState;

.field protected static final MAXIMUM_RETRANSMISSION_TICK_COUNT:I = 0x8

.field public static final PROCEEDING_STATE:Ljavax/sip/TransactionState;

.field protected static final T1:I = 0x1

.field public static final TERMINATED_STATE:Ljavax/sip/TransactionState;

.field protected static final TIMER_A:I = 0x1

.field protected static final TIMER_B:I = 0x40

.field protected static final TIMER_F:I = 0x40

.field protected static final TIMER_H:I = 0x40

.field protected static final TIMER_J:I = 0x40

.field public static final TRYING_STATE:Ljavax/sip/TransactionState;


# instance fields
.field protected BASE_TIMER_INTERVAL:I

.field protected T2:I

.field protected T4:I

.field protected TIMER_D:I

.field protected TIMER_I:I

.field protected TIMER_K:I

.field protected transient applicationData:Ljava/lang/Object;

.field public auditTag:J

.field private branch:Ljava/lang/String;

.field private cSeq:J

.field protected callId:Lgov/nist/javax/sip/header/CallID;

.field protected collectionTime:I

.field private currentState:Ljavax/sip/TransactionState;

.field private transient encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

.field protected event:Lgov/nist/javax/sip/header/Event;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov/nist/javax/sip/stack/SIPTransactionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected from:Lgov/nist/javax/sip/header/From;

.field protected fromTag:Ljava/lang/String;

.field protected isMapped:Z

.field protected isSemaphoreAquired:Z

.field protected lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private method:Ljava/lang/String;

.field protected originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field protected peerAddress:Ljava/lang/String;

.field protected peerInetAddress:Ljava/net/InetAddress;

.field protected peerPacketSourceAddress:Ljava/net/InetAddress;

.field protected peerPacketSourcePort:I

.field protected peerPort:I

.field protected peerProtocol:Ljava/lang/String;

.field private transient retransmissionTimerLastTickCount:I

.field private transient retransmissionTimerTicksLeft:I

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field protected transient sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private terminatedEventDelivered:Z

.field protected timeoutTimerTicksLeft:I

.field protected to:Lgov/nist/javax/sip/header/To;

.field protected toListener:Z

.field protected toTag:Ljava/lang/String;

.field protected transactionId:Ljava/lang/String;

.field protected transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->INITIAL_STATE:Ljavax/sip/TransactionState;

    .line 151
    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TRYING_STATE:Ljavax/sip/TransactionState;

    .line 156
    sget-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CALLING_STATE:Ljavax/sip/TransactionState;

    .line 161
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->PROCEEDING_STATE:Ljavax/sip/TransactionState;

    .line 166
    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->COMPLETED_STATE:Ljavax/sip/TransactionState;

    .line 171
    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CONFIRMED_STATE:Ljavax/sip/TransactionState;

    .line 176
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 3
    .param p1, "newParentStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newEncapsulatedChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    const/4 v2, 0x1

    .line 329
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 82
    const/16 v0, 0x1f4

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 86
    const/16 v0, 0x1388

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    .line 92
    const/16 v0, 0xfa0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    .line 93
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    .line 95
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    .line 97
    const/16 v0, 0x7d00

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 331
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 332
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 334
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    .line 337
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    .line 338
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    .line 339
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 341
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourcePort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    .line 343
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourceAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 345
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget v1, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use count for encapsulated channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget v2, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    .line 358
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V

    .line 359
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 360
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    .line 364
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 366
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    return-object v0
.end method


# virtual methods
.method public acquireSem()Z
    .locals 6

    .prologue
    .line 1134
    const/4 v1, 0x0

    .line 1136
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1137
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireSem [[[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1140
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1141
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1142
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireSem() returning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    :cond_1
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    move v2, v1

    .line 1149
    :goto_0
    return v2

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected exception acquiring sem"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1148
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    const/4 v2, 0x0

    .line 1151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    throw v2
.end method

.method public addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .prologue
    .line 770
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1054
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V

    .line 1055
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1058
    :cond_0
    return-void
.end method

.method protected final disableRetransmissionTimer()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 591
    return-void
.end method

.method protected final disableTimeoutTimer()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 614
    return-void
.end method

.method public doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 8
    .param p1, "requestToTest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 940
    const/4 v2, 0x0

    .line 942
    .local v2, "transactionMatches":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CANCEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 944
    :cond_0
    const/4 v4, 0x0

    .line 1014
    :goto_0
    return v4

    .line 946
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    .line 947
    .local v3, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v3, :cond_3

    .line 949
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Via;

    .line 950
    .local v1, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "messageBranch":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "z9hg4bk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 960
    const/4 v0, 0x0

    .line 967
    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 971
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v4

    invoke-virtual {v5, v4}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 975
    const/4 v2, 0x1

    .line 976
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 977
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "returning  true"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1011
    .end local v0    # "messageBranch":Ljava/lang/String;
    .end local v1    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1012
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    :cond_4
    move v4, v2

    .line 1014
    goto :goto_0

    .line 985
    .restart local v0    # "messageBranch":Ljava/lang/String;
    .restart local v1    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    :cond_5
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 986
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testing against "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 989
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1002
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method protected final enableRetransmissionTimer()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 564
    return-void
.end method

.method protected final enableRetransmissionTimer(I)V
    .locals 1
    .param p1, "tickCount"    # I

    .prologue
    .line 576
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_0

    .line 577
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 583
    :goto_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    .line 584
    return-void

    .line 580
    :cond_0
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    goto :goto_0
.end method

.method protected final enableTimeoutTimer(I)V
    .locals 3
    .param p1, "tickCount"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTimeoutTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tickCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTickCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 606
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 607
    return-void
.end method

.method protected abstract fireRetransmissionTimer()V
.end method

.method protected abstract fireTimeoutTimer()V
.end method

.method final fireTimer()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 623
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    if-eq v0, v1, :cond_0

    .line 625
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireTimeoutTimer()V

    .line 632
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-eq v0, v1, :cond_1

    .line 634
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-nez v0, :cond_1

    .line 637
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 639
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireRetransmissionTimer()V

    .line 642
    :cond_1
    return-void
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    .line 498
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public getBranchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public final getCSeq()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    return-wide v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1222
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1227
    :goto_0
    return-object v0

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1226
    goto :goto_0

    .line 1227
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1228
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDialog()Ljavax/sip/Dialog;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1234
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_2

    .line 1235
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1239
    :goto_0
    return-object v0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1238
    goto :goto_0

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    return-object v0
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1245
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1250
    :goto_0
    return-object v0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1249
    goto :goto_0

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0

    .line 1251
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    return v0
.end method

.method protected getPeerProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v0

    return v0
.end method

.method public getRequest()Ljavax/sip/message/Request;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getResponse()Ljavax/sip/message/Response;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getRetransmitTimer()I
    .locals 1

    .prologue
    .line 865
    const/16 v0, 0x1f4

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSipProvider()Ljavax/sip/SipProvider;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljavax/sip/TransactionState;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 2

    .prologue
    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    .line 715
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-object v0

    .line 716
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    .prologue
    .line 915
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 906
    const/4 v0, -0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isByeTransaction()Z
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCancelTransaction()Z
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInviteTransaction()Z
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
.end method

.method public isReliable()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isReliable()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isSecure()Z

    move-result v0

    return v0
.end method

.method protected isServerTransaction()Z
    .locals 1

    .prologue
    .line 833
    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v1, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public passToListener()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    return v0
.end method

.method protected raiseErrorEvent(I)V
    .locals 5
    .param p1, "errorEventID"    # I

    .prologue
    .line 801
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;I)V

    .line 804
    .local v1, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    monitor-enter v4

    .line 805
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 806
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .line 810
    .local v2, "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    invoke-interface {v2, v1}, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;->transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V

    goto :goto_0

    .line 812
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    .end local v2    # "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 817
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 820
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 822
    instance-of v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isByeTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 824
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    sget v4, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 827
    :cond_1
    return-void
.end method

.method public raiseIOExceptionEvent()V
    .locals 5

    .prologue
    .line 1119
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1120
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerPort()I

    move-result v2

    .line 1122
    .local v2, "port":I
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransport()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "transport":Ljava/lang/String;
    new-instance v0, Ljavax/sip/IOExceptionEvent;

    invoke-direct {v0, p0, v1, v2, v3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    .local v0, "exceptionEvent":Ljavax/sip/IOExceptionEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1126
    return-void
.end method

.method public releaseSem()V
    .locals 3

    .prologue
    .line 1163
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    .line 1164
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->semRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .locals 1
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .prologue
    .line 780
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method protected semRelease()V
    .locals 4

    .prologue
    .line 1176
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "semRelease ]]]]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1178
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1180
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1181
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    invoke-virtual {v0, p1, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    .line 739
    return-void

    .line 737
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    throw v0
.end method

.method protected sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 2
    .param p1, "messageBytes"    # [B
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot send unparsed message through Transaction Channel!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "applicationData"    # Ljava/lang/Object;

    .prologue
    .line 1081
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public final setBranch(Ljava/lang/String;)V
    .locals 0
    .param p1, "newBranch"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public abstract setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
.end method

.method public setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 1
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 1098
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1099
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 1100
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    .line 1101
    return-void
.end method

.method public setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 4
    .param p1, "newOriginalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 379
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 386
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 390
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    .line 392
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/To;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    .line 394
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CallID;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    .line 397
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    .line 398
    const-string v1, "Event"

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Event;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->event:Lgov/nist/javax/sip/header/Event;

    .line 399
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "newBranch":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 407
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Branch id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Branch id is null - compute TID!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassToListener()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "setPassToListener()"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    .line 1208
    return-void
.end method

.method public setRetransmitTimer(I)V
    .locals 2
    .param p1, "retransmitTimer"    # I

    .prologue
    .line 1032
    if-gtz p1, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Retransmit timer must be positive!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction timer is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 1039
    const/16 v0, 0x1388

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    .line 1041
    const/16 v0, 0xfa0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    .line 1042
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    .line 1044
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    .line 1046
    const/16 v0, 0x7d00

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    .line 1048
    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 3
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    .prologue
    .line 527
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_0

    .line 528
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_0

    .line 530
    sget-object p1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 532
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_1

    .line 533
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_1

    .line 534
    sget-object p1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    .line 536
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v0, v1, :cond_3

    .line 537
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    .line 541
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction:setState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " branchID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 547
    :cond_2
    return-void

    .line 539
    :cond_3
    iget-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    goto :goto_0
.end method

.method protected abstract startTransactionTimer()V
.end method

.method protected declared-synchronized testAndSetTransactionTerminatedEvent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1216
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z

    if-nez v1, :cond_0

    .line 1217
    .local v0, "retval":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    monitor-exit p0

    return v0

    .line 1216
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
