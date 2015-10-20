.class Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
.super Ljava/lang/Object;
.source "NistSipMessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/StackMessageFactory;


# instance fields
.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 145
    return-void
.end method


# virtual methods
.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 67
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null Arg!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    .line 72
    .local v1, "theStack":Lgov/nist/javax/sip/SipStackImpl;
    new-instance v0, Lgov/nist/javax/sip/DialogFilter;

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 74
    .local v0, "retval":Lgov/nist/javax/sip/DialogFilter;
    instance-of v2, p2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 77
    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 79
    :cond_2
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 81
    iget-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v2, :cond_4

    .line 82
    const/4 v0, 0x0

    .line 88
    .end local v0    # "retval":Lgov/nist/javax/sip/DialogFilter;
    :cond_3
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "retval":Lgov/nist/javax/sip/DialogFilter;
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning request interface for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .locals 6
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    .line 105
    .local v1, "theStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    .line 107
    .local v2, "tr":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found Transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 111
    :cond_0
    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Dropping response - null transaction state"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 139
    :cond_1
    :goto_0
    return-object v0

    .line 122
    :cond_2
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 124
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping response - late arriving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Lgov/nist/javax/sip/DialogFilter;

    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-direct {v0, v3}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 135
    .local v0, "retval":Lgov/nist/javax/sip/DialogFilter;
    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 137
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v3

    iput-object v3, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    goto :goto_0
.end method
