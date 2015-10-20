.class public Lgov/nist/javax/sip/stack/SIPDialog;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Lgov/nist/javax/sip/DialogExt;
.implements Ljavax/sip/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;,
        Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;
    }
.end annotation


# static fields
.field public static final CONFIRMED_STATE:I

.field private static final DIALOG_LINGER_TIME:I = 0x8

.field public static final EARLY_STATE:I

.field public static final NULL_STATE:I = -0x1

.field public static final TERMINATED_STATE:I

.field private static final serialVersionUID:J = -0x13d7a673d1d40265L


# instance fields
.field private transient ackLine:I

.field protected transient ackProcessed:Z

.field protected transient ackSeen:Z

.field private transient ackSem:Ljava/util/concurrent/Semaphore;

.field private transient applicationData:Ljava/lang/Object;

.field public transient auditTag:J

.field private transient byeSent:Z

.field protected callIdHeader:Ljavax/sip/header/CallIdHeader;

.field protected contactHeader:Lgov/nist/javax/sip/header/Contact;

.field private transient dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

.field private transient dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

.field private dialogId:Ljava/lang/String;

.field private dialogState:I

.field private transient dialogTerminatedEventDelivered:Z

.field private transient earlyDialogId:Ljava/lang/String;

.field private eventHeader:Ljavax/sip/header/EventHeader;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov/nist/javax/sip/stack/SIPDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected firstTransactionId:Ljava/lang/String;

.field protected firstTransactionIsServerTransaction:Z

.field protected firstTransactionMethod:Ljava/lang/String;

.field protected firstTransactionPort:I

.field protected firstTransactionSecure:Z

.field protected firstTransactionSeen:Z

.field private transient highestSequenceNumberAcknowledged:J

.field protected hisTag:Ljava/lang/String;

.field private transient isAcknowledged:Z

.field private transient isAssigned:Z

.field private isBackToBackUserAgent:Z

.field private lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastInviteOkReceived:J

.field private lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private transient lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected localParty:Ljavax/sip/address/Address;

.field private localSequenceNumber:J

.field private method:Ljava/lang/String;

.field protected myTag:Ljava/lang/String;

.field protected transient nextSeqno:Ljava/lang/Long;

.field private originalLocalSequenceNumber:J

.field private transient originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient prevRetransmissionTicks:I

.field private reInviteFlag:Z

.field private transient reInviteWaitTime:I

.field protected remoteParty:Ljavax/sip/address/Address;

.field private remoteSequenceNumber:J

.field private remoteTarget:Ljavax/sip/address/Address;

.field private transient retransmissionTicksLeft:I

.field private routeList:Lgov/nist/javax/sip/header/RouteList;

.field private sequenceNumberValidation:Z

.field private serverTransactionFlag:Z

.field private transient sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field private transient sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private transient stackTrace:Ljava/lang/String;

.field private terminateOnBye:Z

.field protected transient timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

.field private timerTaskLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    sget v0, Ljavax/sip/DialogState;->_EARLY:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    .line 216
    sget v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    .line 218
    sget v0, Ljavax/sip/DialogState;->_TERMINATED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    return-void
.end method

.method private constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 6
    .param p1, "provider"    # Lgov/nist/javax/sip/SipProviderImpl;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    .line 242
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    .line 244
    const/16 v0, 0x64

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    .line 252
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 256
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    .line 261
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    .line 271
    const/16 v0, 0x13c4

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 547
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 548
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    .line 550
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 551
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 552
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 553
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    .line 554
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    .line 614
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipProviderImpl;->getSipStack()Ljavax/sip/SipStack;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 616
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 617
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 618
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 619
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 620
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 621
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 622
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 623
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 625
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 629
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 631
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 2
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 603
    if-nez p2, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null SipResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 606
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 607
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 569
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    .line 571
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 572
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    .line 574
    if-nez p1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null tx"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_0
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 581
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 582
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-nez v1, :cond_1

    .line 583
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null Provider!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 585
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 591
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 592
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 593
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method static synthetic access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method static synthetic access$1002(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    .locals 0
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "x1"    # Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .prologue
    .line 131
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    return-object p1
.end method

.method static synthetic access$1100(Lgov/nist/javax/sip/stack/SIPDialog;)Z
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method static synthetic access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V
    .locals 0
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    return v0
.end method

.method static synthetic access$400(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "x1"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 131
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$600(Lgov/nist/javax/sip/stack/SIPDialog;I)Z
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    return v0
.end method

.method static synthetic access$900(Lgov/nist/javax/sip/stack/SIPDialog;)J
    .locals 2
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 131
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    return-wide v0
.end method

.method private addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V
    .locals 11
    .param p1, "recordRouteList"    # Lgov/nist/javax/sip/header/RecordRouteList;

    .prologue
    .line 743
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isClientDialog()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 747
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 750
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 751
    .local v3, "li":Ljava/util/ListIterator;
    const/4 v0, 0x1

    .line 752
    .local v0, "addRoute":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 753
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    .line 755
    .local v5, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v0, :cond_0

    .line 756
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 757
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    .line 760
    .local v1, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 761
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 763
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 788
    .end local v0    # "addRoute":Z
    .end local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3    # "li":Ljava/util/ListIterator;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    :catchall_0
    move-exception v7

    move-object v8, v7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 789
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 791
    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    check-cast v7, Ljavax/sip/address/SipURI;

    move-object v6, v7

    check-cast v6, Ljavax/sip/address/SipURI;

    .line 793
    .local v6, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v7

    if-nez v7, :cond_1

    .line 794
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 795
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 797
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    goto :goto_1

    .line 771
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_2
    :try_start_1
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 772
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 773
    .restart local v3    # "li":Ljava/util/ListIterator;
    const/4 v0, 0x1

    .line 774
    .restart local v0    # "addRoute":Z
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 775
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    .line 777
    .restart local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v0, :cond_3

    .line 778
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 779
    .restart local v4    # "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    .line 781
    .restart local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 782
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 783
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 788
    .end local v0    # "addRoute":Z
    .end local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3    # "li":Ljava/util/ListIterator;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    :cond_4
    throw v8

    .line 803
    .restart local v0    # "addRoute":Z
    .restart local v3    # "li":Ljava/util/ListIterator;
    :cond_5
    return-void

    .line 788
    :cond_6
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 789
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 791
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    check-cast v7, Ljavax/sip/address/SipURI;

    move-object v6, v7

    check-cast v6, Ljavax/sip/address/SipURI;

    .line 793
    .restart local v6    # "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v7

    if-nez v7, :cond_7

    .line 794
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 795
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 797
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 834
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 878
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 837
    :cond_2
    :try_start_2
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v3, :cond_3

    .line 878
    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 840
    :cond_3
    :try_start_4
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v2, v3, :cond_5

    .line 844
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_4

    .line 845
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 846
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 848
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 878
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_4
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 855
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_7

    .line 858
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_6

    .line 860
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v1

    .line 863
    .local v1, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v1, :cond_8

    .line 864
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    .line 871
    .end local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 872
    .restart local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_7

    .line 873
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 878
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_7
    :try_start_7
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 867
    .restart local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_8
    :try_start_8
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 878
    .end local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :catchall_1
    move-exception v2

    :try_start_9
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 879
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 878
    :cond_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public static createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p0, "subscribeTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p1, "notifyST"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    const/4 v2, 0x0

    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1387
    .local v0, "d":Lgov/nist/javax/sip/stack/SIPDialog;
    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 1389
    iput-object p0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1390
    invoke-static {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1391
    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 1392
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getCSeq()J

    move-result-wide v2

    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1393
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 1394
    .local v1, "not":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1395
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1403
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 1404
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 1408
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1409
    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1410
    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;
    .locals 15
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1880
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1881
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v11, "null argument"

    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1883
    :cond_1
    const-string v1, "CANCEL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1884
    new-instance v1, Ljavax/sip/SipException;

    const-string v11, "Dialog.createRequest(): Invalid request"

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1886
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v11, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne v1, v11, :cond_3

    const-string v1, "BYE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v11, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v1, v11, :cond_5

    const-string v1, "BYE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1891
    :cond_4
    new-instance v1, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dialog  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not yet established or terminated "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1894
    :cond_5
    const/4 v2, 0x0

    .line 1895
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1896
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 1902
    .restart local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :goto_0
    new-instance v4, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 1904
    .local v4, "cseq":Lgov/nist/javax/sip/header/CSeq;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1918
    .local v9, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v9, :cond_9

    .line 1919
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1920
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find listening point for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1923
    :cond_6
    new-instance v1, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find listening point for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1898
    .end local v4    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    .end local v9    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 1899
    .restart local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->clearUriParms()V

    goto/16 :goto_0

    .line 1906
    .restart local v4    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :catch_0
    move-exception v8

    .line 1907
    .local v8, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1908
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v11, "Unexpected error"

    invoke-interface {v1, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1909
    :cond_8
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1926
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_9
    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 1928
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    new-instance v5, Lgov/nist/javax/sip/header/From;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 1929
    .local v5, "from":Lgov/nist/javax/sip/header/From;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 1930
    new-instance v6, Lgov/nist/javax/sip/header/To;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 1931
    .local v6, "to":Lgov/nist/javax/sip/header/To;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v6, v1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    move-object/from16 v1, p2

    .line 1932
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/message/SIPResponse;->createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v10

    .line 1941
    .local v10, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-static/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1942
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v7

    .line 1945
    .local v7, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v7}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    check-cast v1, Ljavax/sip/address/SipURI;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSecure()Z

    move-result v11

    invoke-interface {v1, v11}, Ljavax/sip/address/SipURI;->setSecure(Z)V

    .line 1946
    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 1954
    .end local v7    # "contactHeader":Ljavax/sip/header/ContactHeader;
    :cond_a
    :try_start_1
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    move-object v4, v0

    .line 1955
    iget-wide v11, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1961
    :goto_2
    const-string v1, "SUBSCRIBE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1963
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    if-eqz v1, :cond_b

    .line 1964
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    invoke-virtual {v10, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 1980
    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1981
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 1985
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1986
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1995
    :goto_4
    invoke-direct {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1997
    return-object v10

    .line 1957
    :catch_1
    move-exception v8

    .line 1958
    .local v8, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 1983
    .end local v8    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_c
    :try_start_3
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/From;->removeTag()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1990
    :catch_2
    move-exception v8

    .line 1991
    .local v8, "ex":Ljava/text/ParseException;
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_4

    .line 1988
    .end local v8    # "ex":Ljava/text/ParseException;
    :cond_d
    :try_start_4
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/To;->removeTag()V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4
.end method

.method private doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 2
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .prologue
    .line 2843
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v1

    .line 2849
    .local v1, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v1, :cond_0

    .line 2851
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Contact;

    .line 2852
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V

    .line 2856
    .end local v0    # "contact":Lgov/nist/javax/sip/header/Contact;
    :cond_0
    return-void
.end method

.method private declared-synchronized getRouteList()Lgov/nist/javax/sip/header/RouteList;
    .locals 6

    .prologue
    .line 890
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouteList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 894
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 896
    .local v1, "retval":Lgov/nist/javax/sip/header/RouteList;
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    .end local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 897
    .restart local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v3, :cond_1

    .line 898
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 899
    .local v0, "li":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 900
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    .line 901
    .local v2, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 890
    .end local v0    # "li":Ljava/util/ListIterator;
    .end local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    .end local v2    # "route":Lgov/nist/javax/sip/header/Route;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 905
    .restart local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 906
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 907
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouteList for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 908
    if-eqz v1, :cond_2

    .line 909
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 910
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v3, :cond_3

    .line 911
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myRouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 912
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    :cond_4
    monitor-exit p0

    return-object v1
.end method

.method private isClientDialog()Z
    .locals 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 654
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return v1
.end method

.method private static final optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z
    .locals 2
    .param p0, "l"    # Ljava/util/ListIterator;
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 2859
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2860
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/OptionTag;

    .line 2861
    .local v0, "opt":Ljavax/sip/header/OptionTag;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/sip/header/OptionTag;->getOptionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2862
    const/4 v1, 0x1

    .line 2864
    .end local v0    # "opt":Ljavax/sip/header/OptionTag;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printRouteList()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printRouteList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 644
    :cond_0
    return-void
.end method

.method private raiseErrorEvent(I)V
    .locals 5
    .param p1, "dialogTimeoutError"    # I

    .prologue
    .line 689
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    .line 692
    .local v1, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    monitor-enter v4

    .line 693
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 694
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .line 697
    .local v2, "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    invoke-interface {v2, v1}, Lgov/nist/javax/sip/stack/SIPDialogEventListener;->dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V

    goto :goto_0

    .line 699
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    .end local v2    # "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 704
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 707
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 710
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    .line 711
    return-void
.end method

.method private raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v0, Ljavax/sip/IOExceptionEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    .local v0, "ioError":Ljavax/sip/IOExceptionEvent;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 672
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 673
    return-void
.end method

.method private recordStackTrace()V
    .locals 3

    .prologue
    .line 557
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 558
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 559
    .local v1, "writer":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 560
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    .line 561
    return-void
.end method

.method private sendAck(Ljavax/sip/message/Request;Z)V
    .locals 13
    .param p1, "request"    # Ljavax/sip/message/Request;
    .param p2, "throwIOExceptionAsSipException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 934
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 935
    .local v0, "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 936
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendAck"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 938
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 939
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Bad request method -- should be ACK"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 940
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/sip/DialogState;->getValue()I

    move-result v9

    sget v10, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v9, v10, :cond_4

    .line 941
    :cond_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 942
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad Dialog State for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dialogID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 945
    :cond_3
    new-instance v9, Ljavax/sip/SipException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad dialog state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 948
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    move-object v9, p1

    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 949
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 950
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 951
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RequestCallID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 953
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dialog =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 955
    :cond_5
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Bad call ID in request"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 958
    :cond_6
    :try_start_0
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 959
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting from tag For outgoing ACK= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 961
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting To tag for outgoing ACK = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 963
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ack = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 965
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 966
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    .line 967
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 968
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :cond_9
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v4

    .line 975
    .local v4, "hop":Ljavax/sip/address/Hop;
    if-nez v4, :cond_a

    .line 976
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "No route!"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 969
    .end local v4    # "hop":Ljavax/sip/address/Hop;
    :catch_0
    move-exception v3

    .line 970
    .local v3, "ex":Ljava/text/ParseException;
    new-instance v9, Ljavax/sip/SipException;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 978
    .end local v3    # "ex":Ljava/text/ParseException;
    .restart local v4    # "hop":Ljavax/sip/address/Hop;
    :cond_a
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 979
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 980
    :cond_b
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 982
    .local v6, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v6, :cond_c

    .line 983
    new-instance v9, Ljavax/sip/SipException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No listening point for this provider registered at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1007
    .end local v6    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    :catch_1
    move-exception v3

    .line 1008
    .local v3, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_12

    .line 1009
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Could not send ack"

    invoke-direct {v9, v10, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 985
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_c
    :try_start_2
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 986
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v7

    .line 988
    .local v7, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    const/4 v8, 0x0

    .line 989
    .local v8, "releaseAckSem":Z
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    .line 990
    .local v1, "cseqNo":J
    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v9

    if-nez v9, :cond_d

    .line 991
    const/4 v8, 0x1

    .line 994
    :cond_d
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 995
    invoke-virtual {v7, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 997
    const/4 v9, 0x1

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    .line 998
    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 1000
    if-eqz v8, :cond_10

    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v9, :cond_10

    .line 1001
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1020
    .end local v1    # "cseqNo":J
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v8    # "releaseAckSem":Z
    :cond_e
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v9, :cond_f

    .line 1021
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    .line 1022
    const/4 v9, 0x0

    iput-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1024
    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 1026
    return-void

    .line 1003
    .restart local v1    # "cseqNo":J
    .restart local v5    # "inetAddress":Ljava/net/InetAddress;
    .restart local v6    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v8    # "releaseAckSem":Z
    :cond_10
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1004
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not releasing ack sem for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAckSent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1011
    .end local v1    # "cseqNo":J
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v8    # "releaseAckSem":Z
    :catch_2
    move-exception v3

    .line 1012
    .local v3, "ex":Ljavax/sip/SipException;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1013
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v3}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1014
    :cond_11
    throw v3

    .line 1010
    .local v3, "ex":Ljava/io/IOException;
    :cond_12
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v10

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1015
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1016
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1017
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v3}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1018
    :cond_13
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Could not create message channel"

    invoke-direct {v9, v10, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 1
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1767
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 1768
    return-void
.end method

.method private setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 3237
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    .line 3238
    return-void
.end method

.method private setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckSent"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 3251
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    .line 3252
    return-void
.end method

.method private setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 1
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .prologue
    .line 1781
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 1786
    :goto_0
    return-void

    .line 1784
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    goto :goto_0
.end method

.method private setLocalSequenceNumber(J)V
    .locals 4
    .param p1, "lCseq"    # J

    .prologue
    .line 1626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalSequenceNumber: original  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1630
    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1631
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sequence number should not decrease !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1633
    return-void
.end method

.method private setLocalTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "mytag"    # Ljava/lang/String;

    .prologue
    .line 1734
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Local tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1739
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1741
    return-void
.end method

.method private setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .prologue
    .line 720
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 727
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 730
    :cond_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    goto :goto_0
.end method

.method private setRemoteTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "hisTag"    # Ljava/lang/String;

    .prologue
    .line 1559
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteTag(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remoteTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1564
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1565
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v2, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-eq v1, v2, :cond_2

    .line 1566
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Dialog is already established -- ignoring remote tag re-assignment"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1599
    :cond_1
    :goto_0
    return-void

    .line 1570
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRemoteTagReassignmentAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1571
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1572
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNSAFE OPERATION !  tag re-assignment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying to set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can cause unexpected effects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1576
    :cond_3
    const/4 v0, 0x0

    .line 1577
    .local v0, "removed":Z
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    if-ne v1, p0, :cond_4

    .line 1578
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Ljava/lang/String;)V

    .line 1579
    const/4 v0, 0x1

    .line 1583
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1584
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 1585
    if-eqz v0, :cond_1

    .line 1586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "ReInserting Dialog"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1588
    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_0

    .line 1592
    .end local v0    # "removed":Z
    :cond_6
    if-eqz p1, :cond_7

    .line 1593
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto :goto_0

    .line 1595
    :cond_7
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1596
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "setRemoteTag : called with null argument "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 6
    .param p0, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 1450
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1451
    const/4 v4, 0x1

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    .line 1452
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v4

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    .line 1453
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sips"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    .line 1455
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPort()I

    move-result v4

    iput v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 1456
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    .line 1457
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    .line 1459
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 1460
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1461
    .local v3, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 1462
    .local v1, "response":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    .line 1470
    .end local v1    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_0
    :goto_1
    return-void

    .line 1462
    .restart local v1    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v3    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .end local v1    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_2
    move-object v0, p1

    .line 1464
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1465
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    .line 1467
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    goto :goto_1
.end method

.method private toRetransmitFinalResponse(I)Z
    .locals 1
    .param p1, "T2"    # I

    .prologue
    .line 2213
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    if-nez v0, :cond_1

    .line 2214
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    if-gt v0, p1, :cond_0

    .line 2215
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2218
    :goto_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2219
    const/4 v0, 0x1

    .line 2221
    :goto_1
    return v0

    .line 2217
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    goto :goto_0

    .line 2221
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 2356
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    .line 2357
    .local v0, "rl":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2358
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 2362
    :goto_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2363
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 2366
    :cond_0
    return-void

    .line 2360
    :cond_1
    const-string v1, "Route"

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    const/4 v5, 0x0

    .line 1068
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1071
    .local v0, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCSeq()J

    move-result-wide v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1073
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 1075
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 1077
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 1082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 1083
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v1, :cond_3

    .line 1084
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    .line 1085
    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1087
    :cond_3
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1088
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1089
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ackReceived for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->getLineCount()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    .line 1092
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->printDebugInfo()V

    .line 1094
    :cond_4
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v1, :cond_5

    .line 1095
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    .line 1097
    :cond_5
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_0

    .line 1080
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v1
.end method

.method public acquireTimerTaskSem()V
    .locals 6

    .prologue
    .line 3327
    const/4 v0, 0x0

    .line 3329
    .local v0, "acquired":Z
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3333
    :goto_0
    if-nez v0, :cond_0

    .line 3334
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Impossible to acquire the dialog timer task lock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3330
    :catch_0
    move-exception v1

    .line 3331
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    goto :goto_0

    .line 3336
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .prologue
    .line 1124
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1125
    return-void
.end method

.method public declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1331
    :cond_0
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1333
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1335
    :cond_1
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    .line 1359
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1340
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1343
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v1

    .line 1346
    .local v1, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v1, :cond_4

    .line 1347
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    .line 1355
    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 1356
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_2

    .line 1357
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1326
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    .end local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1350
    .restart local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_4
    :try_start_2
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 1478
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1481
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    .line 1486
    :cond_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v1, :cond_8

    .line 1490
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1491
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1492
    const-string v1, "Event"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/EventHeader;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    .line 1494
    :cond_1
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1495
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1496
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1497
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-nez v1, :cond_2

    .line 1498
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 1500
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1501
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 1504
    :cond_3
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_7

    .line 1505
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 1531
    :cond_4
    :goto_0
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_5

    .line 1532
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteSequenceNumber(J)V

    .line 1539
    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1543
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1544
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1546
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1551
    :cond_6
    return-void

    .line 1508
    :cond_7
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalSequenceNumber(J)V

    .line 1509
    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 1510
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1511
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1512
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1513
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "The request\'s From header is missing the required Tag parameter."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1516
    :cond_8
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1522
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1524
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1525
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1526
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1527
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 1528
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public createAck(J)Ljavax/sip/message/Request;
    .locals 17
    .param p1, "cseqno"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2389
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    const-string v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2390
    new-instance v14, Ljavax/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dialog was not created with an INVITE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2392
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_1

    .line 2393
    new-instance v14, Ljavax/sip/InvalidArgumentException;

    const-string v15, "bad cseq <= 0 "

    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2394
    :cond_1
    const-wide v14, 0xffffffffL

    cmp-long v14, p1, v14

    if-lez v14, :cond_2

    .line 2395
    new-instance v14, Ljavax/sip/InvalidArgumentException;

    const-string v15, "bad cseq > 4294967295"

    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2397
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    if-nez v14, :cond_3

    .line 2398
    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "Cannot create ACK - no remote Target!"

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2401
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2402
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createAck "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cseqno "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2407
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    cmp-long v14, v14, p1

    if-gez v14, :cond_6

    .line 2408
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2409
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WARNING : Attempt to crete ACK without OK "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2411
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "LAST RESPONSE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2413
    :cond_5
    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "Dialog not yet established -- no OK response!"

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2421
    :cond_6
    const/4 v11, 0x0

    .line 2423
    .local v11, "uri4transport":Ljavax/sip/address/SipURI;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 2424
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    .line 2425
    .local v7, "r":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v11, v0

    .line 2430
    .end local v7    # "r":Lgov/nist/javax/sip/header/Route;
    :goto_0
    invoke-interface {v11}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v10

    .line 2431
    .local v10, "transport":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 2433
    invoke-interface {v11}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v10, "TLS"

    .line 2435
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v14, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 2436
    .local v5, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v5, :cond_b

    .line 2437
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2438
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remoteTargetURI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uri4transport = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No LP found for transport="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2443
    :cond_8
    new-instance v14, Ljavax/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot create ACK - no ListeningPoint for transport towards next hop found:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    .end local v5    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v10    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2495
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2496
    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "unexpected exception "

    invoke-direct {v14, v15, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 2427
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v11, v0

    goto/16 :goto_0

    .line 2433
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_a
    const-string v10, "UDP"

    goto/16 :goto_1

    .line 2447
    .restart local v5    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_b
    new-instance v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v8}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 2448
    .local v8, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const-string v14, "ACK"

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 2451
    new-instance v14, Lgov/nist/javax/sip/header/CSeq;

    const-string v15, "ACK"

    move-wide/from16 v0, p1

    invoke-direct {v14, v0, v1, v15}, Lgov/nist/javax/sip/header/CSeq;-><init>(JLjava/lang/String;)V

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 2452
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    .local v13, "vias":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/Via;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    .line 2460
    .local v12, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->removeParameters()V

    .line 2461
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 2462
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v6

    .line 2464
    .local v6, "originalRequestParameters":Lgov/nist/core/NameValueList;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->size()I

    move-result v14

    if-lez v14, :cond_c

    .line 2465
    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov/nist/core/NameValueList;

    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 2468
    .end local v6    # "originalRequestParameters":Lgov/nist/core/NameValueList;
    :cond_c
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 2469
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 2471
    new-instance v4, Lgov/nist/javax/sip/header/From;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 2472
    .local v4, "from":Lgov/nist/javax/sip/header/From;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v8, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 2475
    new-instance v9, Lgov/nist/javax/sip/header/To;

    invoke-direct {v9}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 2476
    .local v9, "to":Lgov/nist/javax/sip/header/To;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 2478
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    .line 2479
    :cond_d
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 2480
    new-instance v14, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v15, 0x46

    invoke-direct {v14, v15}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v14, :cond_e

    .line 2483
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getAuthorization()Lgov/nist/javax/sip/header/Authorization;

    move-result-object v2

    .line 2484
    .local v2, "authorization":Lgov/nist/javax/sip/header/Authorization;
    if-eqz v2, :cond_e

    .line 2485
    invoke-virtual {v8, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 2491
    .end local v2    # "authorization":Lgov/nist/javax/sip/header/Authorization;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2493
    return-object v8
.end method

.method public createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .locals 9
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2327
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v7, v8}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2328
    :cond_0
    new-instance v7, Ljavax/sip/DialogDoesNotExistException;

    const-string v8, "Dialog not initialized or terminated"

    invoke-direct {v7, v8}, Ljavax/sip/DialogDoesNotExistException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2330
    :cond_1
    const-string v7, "RSeq"

    invoke-interface {p1, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/RSeq;

    if-nez v7, :cond_2

    .line 2331
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "Missing RSeq Header"

    invoke-direct {v7, v8}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2335
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v5, v0

    .line 2336
    .local v5, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v8, "PRACK"

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v7, v0

    invoke-direct {p0, v8, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    .line 2338
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 2339
    .local v6, "toHeaderTag":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setToTag(Ljava/lang/String;)V

    .line 2340
    new-instance v2, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 2341
    .local v2, "rack":Lgov/nist/javax/sip/header/RAck;
    const-string v7, "RSeq"

    invoke-interface {p1, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/RSeq;

    .line 2342
    .local v3, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 2344
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 2345
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2349
    .end local v2    # "rack":Lgov/nist/javax/sip/header/RAck;
    .end local v3    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local v4    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v5    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v6    # "toHeaderTag":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 2347
    :catch_0
    move-exception v1

    .line 2348
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2349
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .locals 10
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2875
    iget-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    if-nez v8, :cond_0

    .line 2876
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Not a Server Dialog!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2885
    :cond_0
    const/16 v8, 0x64

    if-le p1, v8, :cond_1

    const/16 v8, 0xc7

    if-le p1, v8, :cond_2

    .line 2886
    :cond_1
    new-instance v8, Ljavax/sip/InvalidArgumentException;

    const-string v9, "Bad status code "

    invoke-direct {v8, v9}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2887
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 2888
    .local v2, "request":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2889
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Bad method"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2891
    :cond_3
    const-string v8, "Supported"

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 2892
    .local v1, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v1, :cond_4

    const-string v8, "100rel"

    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2893
    :cond_4
    const-string v8, "Require"

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 2894
    if-eqz v1, :cond_5

    const-string v8, "100rel"

    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2895
    :cond_5
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "No Supported/Require 100rel header in the request"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2899
    :cond_6
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    .line 2910
    .local v4, "response":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v3, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Require;-><init>()V

    .line 2912
    .local v3, "require":Lgov/nist/javax/sip/header/Require;
    :try_start_0
    const-string v8, "100rel"

    invoke-virtual {v3, v8}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    :goto_0
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/SIPResponse;->addHeader(Ljavax/sip/header/Header;)V

    .line 2917
    new-instance v7, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 2921
    .local v7, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 2927
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    .line 2928
    .local v5, "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v5, :cond_7

    .line 2929
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/RecordRouteList;

    .line 2930
    .local v6, "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 2933
    .end local v6    # "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_7
    return-object v4

    .line 2913
    .end local v5    # "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local v7    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    :catch_0
    move-exception v0

    .line 2914
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1854
    const-string v0, "ACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    :cond_0
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method specified for createRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1857
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_2

    .line 1858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_2
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog not yet established -- no response!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 1751
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1752
    return-void
.end method

.method public disableSequenceNumberValidation()V
    .locals 1

    .prologue
    .line 3322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    .line 3323
    return-void
.end method

.method public doDeferredDelete()V
    .locals 4

    .prologue
    .line 1195
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1196
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1204
    :goto_0
    return-void

    .line 1198
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1200
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public declared-synchronized doDeferredDeleteIfNoAckSent(J)V
    .locals 4
    .param p1, "seqno"    # J

    .prologue
    .line 3268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3269
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    if-nez v0, :cond_0

    .line 3272
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .line 3273
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1446
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    return-object v0
.end method

.method getEarlyDialogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    return-object v0
.end method

.method getEventHeader()Ljavax/sip/header/EventHeader;
    .locals 1

    .prologue
    .line 3292
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    return-object v0
.end method

.method public getFirstTransaction()Ljavax/sip/Transaction;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2

    .prologue
    .line 1612
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    .line 1613
    .local v0, "t":Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    if-eqz v0, :cond_0

    .line 1614
    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1616
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLastAckReceived()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    .prologue
    .line 3244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 2825
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getLocalParty()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getLocalSeqNumber()J
    .locals 2

    .prologue
    .line 1695
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    return-wide v0
.end method

.method public getLocalSequenceNumber()I
    .locals 2

    .prologue
    .line 1677
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMyContactHeader()Lgov/nist/javax/sip/header/Contact;
    .locals 1

    .prologue
    .line 3103
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    return-object v0
.end method

.method public getOriginalLocalSequenceNumber()J
    .locals 2

    .prologue
    .line 1686
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    return-wide v0
.end method

.method public getRemoteParty()Ljavax/sip/address/Address;
    .locals 3

    .prologue
    .line 1799
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gettingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1802
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getRemoteSeqNumber()J
    .locals 2

    .prologue
    .line 1704
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    return-wide v0
.end method

.method public getRemoteSequenceNumber()I
    .locals 2

    .prologue
    .line 1665
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteTarget()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getRouteSet()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1316
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 2509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method public bridge synthetic getSipProvider()Ljavax/sip/SipProvider;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getState()Ljavax/sip/DialogState;
    .locals 2

    .prologue
    .line 1822
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1823
    const/4 v0, 0x0

    .line 1824
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    invoke-static {v0}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v0

    goto :goto_0
.end method

.method public handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 8
    .param p1, "ackTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3114
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 3116
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 3118
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3119
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "ACK already seen by dialog -- dropping Ack retransmission"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3122
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 3124
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v4, :cond_1

    .line 3125
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 3126
    const/4 v4, 0x0

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3129
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 3175
    :cond_2
    :goto_0
    return v3

    .line 3129
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v3

    .line 3132
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    sget-object v5, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v4, v5, :cond_4

    .line 3133
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3134
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Dialog is terminated -- dropping ACK"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 3144
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v2

    .line 3146
    .local v2, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 3149
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_5
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 3156
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 3162
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3163
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "ACK for 2XX response --- sending to TU "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3164
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 3172
    :cond_7
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3173
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, " INVITE transaction not found  -- Discarding ACK"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 10
    .param p1, "prackRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    const/4 v5, 0x0

    .line 2951
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2952
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2953
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- not a server Dialog"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2999
    :cond_0
    :goto_0
    return v5

    .line 2956
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 2958
    .local v4, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 2960
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v3, :cond_2

    .line 2961
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2962
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- ReliableResponse not found"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2967
    :cond_2
    const-string v6, "RAck"

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RAck;

    .line 2969
    .local v1, "rack":Lgov/nist/javax/sip/header/RAck;
    if-nez v1, :cond_3

    .line 2970
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2971
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- rack header not found"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2974
    :cond_3
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    .line 2976
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2977
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2978
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2983
    :cond_4
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getCSeqNumberLong()J

    move-result-wide v6

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 2984
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2985
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2990
    :cond_5
    const-string v6, "RSeq"

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/RSeq;

    .line 2992
    .local v2, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getRSequenceNumber()J

    move-result-wide v6

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 2993
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2994
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- RSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2999
    :cond_6
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->prackRecieved()Z

    move-result v5

    goto/16 :goto_0
.end method

.method public incrementLocalSequenceNumber()V
    .locals 4

    .prologue
    .line 1653
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1654
    return-void
.end method

.method public isAckSeen()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    return v0
.end method

.method public isAckSent(J)Z
    .locals 4
    .param p1, "cseqNo"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return v0

    .line 1274
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    instance-of v2, v2, Ljavax/sip/ClientTransaction;

    if-eqz v2, :cond_0

    .line 1275
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1276
    goto :goto_0

    .line 1278
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isAssigned()Z
    .locals 1

    .prologue
    .line 3092
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    return v0
.end method

.method public isAtleastOneAckSent()Z
    .locals 1

    .prologue
    .line 3258
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    .prologue
    .line 3264
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method protected isReInvite()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    return v0
.end method

.method public declared-synchronized isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 5
    .param p1, "dialogRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .prologue
    const/4 v0, 0x1

    .line 1175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1179
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1185
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1835
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    return v0
.end method

.method public isSequnceNumberValidation()Z
    .locals 1

    .prologue
    .line 3318
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    return v0
.end method

.method public isServer()Z
    .locals 1

    .prologue
    .line 1419
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v0, :cond_0

    .line 1420
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 1422
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    goto :goto_0
.end method

.method isTerminatedOnBye()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    return v0
.end method

.method public printDebugInfo()V
    .locals 4

    .prologue
    .line 1241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1249
    :cond_0
    return-void
.end method

.method releaseAckSem()V
    .locals 3

    .prologue
    .line 3192
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3194
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAckSem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3196
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3199
    :cond_1
    return-void
.end method

.method public releaseTimerTaskSem()V
    .locals 1

    .prologue
    .line 3339
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3340
    return-void
.end method

.method public removeEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .prologue
    .line 1134
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1135
    return-void
.end method

.method public declared-synchronized requestConsumed()V
    .locals 4

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Consumed -- next consumable Request Seqno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :cond_0
    monitor-exit p0

    return-void

    .line 1158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resendAck()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2236
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2237
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    const-string v2, "Timestamp"

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v1, :cond_0

    .line 2239
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 2241
    .local v0, "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 2242
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    .end local v0    # "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    .line 2250
    :cond_1
    return-void

    .line 2243
    .restart local v0    # "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendAck(Ljavax/sip/message/Request;)V
    .locals 1
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1844
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    .line 1845
    return-void
.end method

.method public sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 8
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 3008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3009
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Not a Server Dialog"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v5, p1

    .line 3012
    check-cast v5, Lgov/nist/javax/sip/message/SIPResponse;

    .line 3014
    .local v5, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    .line 3015
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Cannot send 100 as a reliable provisional response"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3017
    :cond_1
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 3018
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Response code is not a 1xx response - should be in the range 101 to 199 "

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3024
    :cond_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3025
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Badly formatted response -- To tag mandatory for Reliable Provisional Response"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3028
    :cond_3
    const-string v6, "Require"

    invoke-interface {p1, v6}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v2

    .line 3029
    .local v2, "requireList":Ljava/util/ListIterator;
    const/4 v0, 0x0

    .line 3031
    .local v0, "found":Z
    if-eqz v2, :cond_5

    .line 3033
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    .line 3034
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/RequireHeader;

    .line 3035
    .local v3, "rh":Ljavax/sip/header/RequireHeader;
    invoke-interface {v3}, Ljavax/sip/header/RequireHeader;->getOptionTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "100rel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3036
    const/4 v0, 0x1

    goto :goto_0

    .line 3041
    .end local v3    # "rh":Ljavax/sip/header/RequireHeader;
    :cond_5
    if-nez v0, :cond_6

    .line 3042
    new-instance v1, Lgov/nist/javax/sip/header/Require;

    const-string v6, "100rel"

    invoke-direct {v1, v6}, Lgov/nist/javax/sip/header/Require;-><init>(Ljava/lang/String;)V

    .line 3043
    .local v1, "require":Lgov/nist/javax/sip/header/Require;
    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 3044
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3045
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Require header with optionTag 100rel is needed -- adding one"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3051
    .end local v1    # "require":Lgov/nist/javax/sip/header/Require;
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 3057
    .local v4, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0, v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 3059
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V

    .line 3063
    invoke-virtual {p0, v4, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    .line 3065
    return-void
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;)V
    .locals 1
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2009
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    .line 2010
    return-void

    .line 2009
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;Z)V
    .locals 14
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .param p2, "allowInterleaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 2015
    if-nez p2, :cond_1

    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INVITE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2017
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;

    invoke-direct {v11, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 2207
    .end local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    :cond_1
    move-object v10, p1

    .line 2021
    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 2024
    .local v1, "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2025
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialog.sendRequest  dialog = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\ndialogRequest = \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2029
    :cond_2
    if-nez p1, :cond_3

    .line 2030
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "null parameter"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2032
    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ACK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CANCEL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2034
    :cond_4
    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Request Method. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2037
    :cond_5
    iget-boolean v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BYE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2038
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2039
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BYE already sent for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2040
    :cond_6
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Cannot send request; BYE already sent"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2043
    :cond_7
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v10

    if-nez v10, :cond_8

    move-object v10, p1

    .line 2044
    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    .line 2045
    .local v9, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1, v9}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 2047
    .end local v9    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2049
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2050
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CallID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2051
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RequestCallID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2053
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialog =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2055
    :cond_9
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Bad call ID in request"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    move-object v10, p1

    .line 2059
    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v10, p0, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    move-object v10, p1

    .line 2061
    check-cast v10, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v10, p1

    .line 2064
    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iput-boolean v13, v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 2066
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/From;

    .line 2067
    .local v3, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/To;

    .line 2071
    .local v8, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2073
    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "From tag mismatch expecting  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2075
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 2077
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2078
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "To header tag mismatch expecting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 2084
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NOTIFY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2085
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SUBSCRIBE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2086
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Trying to send NOTIFY without SUBSCRIBE Dialog!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2087
    :cond_d
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 2092
    :cond_e
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 2093
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 2094
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 2095
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_10
    :goto_1
    move-object v10, p1

    .line 2103
    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v4

    .line 2104
    .local v4, "hop":Ljavax/sip/address/Hop;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2105
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Using hop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2110
    :cond_11
    :try_start_1
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    invoke-virtual {v10, v11, v12, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    .line 2114
    .local v5, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    .line 2120
    .local v6, "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageChannel;->uncache()V

    .line 2123
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v10, :cond_12

    .line 2124
    iget v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 2125
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2126
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oldChannel: useCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2131
    :cond_12
    if-nez v5, :cond_19

    .line 2145
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2146
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    const-string v11, "Null message channel using outbound proxy !"

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2148
    :cond_13
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v7

    .line 2149
    .local v7, "outboundProxy":Ljavax/sip/address/Hop;
    if-nez v7, :cond_15

    .line 2150
    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No route found! hop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2174
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v6    # "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v7    # "outboundProxy":Ljavax/sip/address/Hop;
    :catch_0
    move-exception v2

    .line 2175
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2176
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 2177
    :cond_14
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Could not create message channel"

    invoke-direct {v10, v11, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 2097
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "hop":Ljavax/sip/address/Hop;
    :catch_1
    move-exception v2

    .line 2099
    .local v2, "ex":Ljava/text/ParseException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 2151
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local v4    # "hop":Ljavax/sip/address/Hop;
    .restart local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v6    # "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v7    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_15
    :try_start_2
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v11

    invoke-interface {v7}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    invoke-virtual {v10, v11, v12, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    .line 2154
    if-eqz v5, :cond_16

    .line 2155
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 2168
    .end local v7    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_16
    :goto_2
    if-eqz v5, :cond_17

    iget v10, v5, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 2171
    :cond_17
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v10, :cond_18

    if-eqz v6, :cond_18

    iget v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    if-gtz v10, :cond_18

    .line 2173
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2182
    :cond_18
    :try_start_3
    iget-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 2183
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2189
    :goto_3
    :try_start_4
    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .end local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 2194
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BYE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2195
    const/4 v10, 0x1

    iput-boolean v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    .line 2199
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2200
    sget v10, Ljavax/sip/DialogState;->_TERMINATED:I

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2203
    :catch_2
    move-exception v2

    .line 2204
    .local v2, "ex":Ljava/io/IOException;
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "error sending message"

    invoke-direct {v10, v11, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 2158
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    :cond_19
    :try_start_5
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 2161
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2162
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "using message channel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2184
    :catch_3
    move-exception v2

    .line 2185
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "applicationData"    # Ljava/lang/Object;

    .prologue
    .line 1141
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    .line 1142
    return-void
.end method

.method public setAssigned()V
    .locals 1

    .prologue
    .line 3083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    .line 3084
    return-void
.end method

.method public setBackToBackUserAgent()V
    .locals 1

    .prologue
    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 3286
    return-void
.end method

.method public setDialogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 1365
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1366
    return-void
.end method

.method setEarlyDialogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "earlyDialogId"    # Ljava/lang/String;

    .prologue
    .line 3181
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    .line 3182
    return-void
.end method

.method setEventHeader(Ljavax/sip/header/EventHeader;)V
    .locals 0
    .param p1, "eventHeader"    # Ljavax/sip/header/EventHeader;

    .prologue
    .line 3299
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    .line 3300
    return-void
.end method

.method public setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 11
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 2552
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 2553
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    .line 2554
    .local v6, "statusCode":I
    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    .line 2555
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2556
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Invalid status code - 100 in setLastResponse - ignoring"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2561
    :cond_1
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 2562
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    .line 2564
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2565
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sipDialog: setLastResponse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastResponse = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2569
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v7, v8, :cond_4

    .line 2570
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2571
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "sipDialog: setLastResponse -- dialog is terminated - ignoring "

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2576
    :cond_3
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 2578
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto :goto_0

    .line 2583
    :cond_4
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 2584
    .local v0, "cseqMethod":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2585
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 2586
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cseqMethod = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2587
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialogState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2588
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2589
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2590
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2596
    :cond_5
    if-eqz p1, :cond_6

    instance-of v7, p1, Ljavax/sip/ClientTransaction;

    if-eqz v7, :cond_13

    .line 2597
    :cond_6
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2599
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_9

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 2604
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2605
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    .line 2607
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2608
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2609
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2610
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 2675
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    .line 2676
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v7, :cond_0

    .line 2677
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    .line 2678
    .local v5, "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v5, :cond_0

    .line 2679
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2680
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2681
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/RecordRoute;

    .line 2682
    .local v4, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    .line 2683
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2684
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    goto :goto_2

    .line 2612
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    .end local v3    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v4    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v5    # "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v7, v8}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 2619
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_8

    .line 2621
    :cond_a
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2622
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2623
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2624
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    goto/16 :goto_1

    .line 2626
    :cond_b
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    .line 2633
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_d

    .line 2636
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2637
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2638
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2639
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 2641
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2645
    :cond_d
    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2646
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto/16 :goto_1

    .line 2650
    :cond_e
    const/16 v7, 0x12c

    if-lt v6, v7, :cond_8

    const/16 v7, 0x2bb

    if-gt v6, v7, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/sip/DialogState;->getValue()I

    move-result v7

    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v7, v8, :cond_8

    .line 2660
    :cond_f
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_1

    .line 2692
    :cond_10
    const-string v7, "NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SUBSCRIBE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "REFER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_12

    .line 2697
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2698
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2699
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    .line 2701
    :cond_12
    const-string v7, "BYE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2704
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    .line 2709
    :cond_13
    const-string v7, "BYE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2715
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    .line 2717
    :cond_14
    const/4 v1, 0x0

    .line 2719
    .local v1, "doPutDialog":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2721
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 2723
    const/4 v1, 0x1

    .line 2726
    :cond_15
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_19

    .line 2727
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    .line 2728
    if-eqz v1, :cond_0

    .line 2730
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2731
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2732
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 2744
    :cond_16
    const/16 v7, 0x1e9

    if-ne v6, v7, :cond_18

    const-string v7, "NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2747
    :cond_17
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2748
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "RFC 3265 : Not setting dialog to TERMINATED for 489"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2755
    :cond_18
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isReInvite()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    .line 2756
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    .line 2767
    :cond_19
    iget v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-gt v7, v8, :cond_1b

    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "REFER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2771
    :cond_1a
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2774
    :cond_1b
    if-eqz v1, :cond_1c

    .line 2775
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2776
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2782
    :cond_1c
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    sget-object v8, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v7, v8, :cond_0

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v7, :cond_0

    .line 2790
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2791
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2792
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Delete dialog -- cannot acquire ackSem"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2795
    :cond_1d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto/16 :goto_0
.end method

.method setReInviteFlag(Z)V
    .locals 0
    .param p1, "reInviteFlag"    # Z

    .prologue
    .line 3313
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    .line 3314
    return-void
.end method

.method public setRemoteSequenceNumber(J)V
    .locals 3
    .param p1, "rCseq"    # J

    .prologue
    .line 1642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteSeqno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1644
    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1645
    return-void
.end method

.method setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    .locals 3
    .param p1, "contact"    # Ljavax/sip/header/ContactHeader;

    .prologue
    .line 813
    invoke-interface {p1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    .line 814
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog.setRemoteTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 819
    :cond_0
    return-void
.end method

.method public setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 2527
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2542
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 2531
    .local v0, "responseFromTag":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2532
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2533
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    .line 2534
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    .line 2538
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2539
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "No from tag in response! Not RFC 3261 compatible."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setRetransmissionTicks()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2226
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2227
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2228
    return-void
.end method

.method setRouteList(Lgov/nist/javax/sip/header/RouteList;)V
    .locals 0
    .param p1, "routeList"    # Lgov/nist/javax/sip/header/RouteList;

    .prologue
    .line 918
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 919
    return-void
.end method

.method setServerTransactionFlag(Z)V
    .locals 0
    .param p1, "serverTransactionFlag"    # Z

    .prologue
    .line 3306
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 3307
    return-void
.end method

.method public setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 0
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;

    .prologue
    .line 2516
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 2517
    return-void
.end method

.method setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .prologue
    .line 1039
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1041
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1213
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting dialog state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1217
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    if-eq p1, v0, :cond_0

    .line 1218
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  old dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  New dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1226
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    .line 1228
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne p1, v0, :cond_2

    .line 1229
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1232
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    .line 1235
    :cond_2
    return-void
.end method

.method public startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V
    .locals 2
    .param p1, "sipServerTx"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "response"    # Ljavax/sip/message/Response;

    .prologue
    .line 2814
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2816
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 2818
    :cond_0
    return-void
.end method

.method protected startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 2269
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-ne v0, p1, :cond_1

    .line 2270
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer already running for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2292
    :cond_0
    :goto_0
    return-void

    .line 2274
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2275
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dialog timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2276
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 2278
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 2280
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_3

    .line 2281
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iput-object p1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2291
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto :goto_0

    .line 2283
    :cond_3
    :try_start_1
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    .line 2284
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2288
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
.end method

.method protected stopTimer()V
    .locals 1

    .prologue
    .line 2300
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 2304
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2307
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2311
    :goto_0
    return-void

    .line 2307
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method takeAckSem()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3202
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3203
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[takeAckSem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3206
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3207
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3208
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Cannot aquire ACK semaphore"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 3211
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3212
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Semaphore previously acquired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3213
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 3229
    :cond_2
    :goto_0
    return v1

    .line 3219
    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3221
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->recordStackTrace()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3229
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 3224
    :catch_0
    move-exception v0

    .line 3225
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Cannot aquire ACK semaphore"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public terminateOnBye(Z)V
    .locals 0
    .param p1, "terminateFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 3074
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 3075
    return-void
.end method

.method declared-synchronized testAndSetIsDialogTerminatedEventDelivered()Z
    .locals 2

    .prologue
    .line 1108
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z

    .line 1109
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    monitor-exit p0

    return v0

    .line 1108
    .end local v0    # "retval":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
