.class public Lgov/nist/javax/sip/ListeningPointImpl;
.super Ljava/lang/Object;
.source "ListeningPointImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/ListeningPointExt;
.implements Ljavax/sip/ListeningPoint;


# instance fields
.field protected messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field port:I

.field protected sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field protected sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    .locals 0
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    check-cast p1, Lgov/nist/javax/sip/SipStackImpl;

    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    iput-object p1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 134
    iput p2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    .line 135
    iput-object p3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V

    .line 147
    .local v0, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 148
    return-object v0
.end method

.method public createContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 8

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v4

    .line 229
    .local v4, "port":I
    new-instance v5, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v5}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 230
    .local v5, "sipURI":Ljavax/sip/address/SipURI;
    invoke-interface {v5, v3}, Ljavax/sip/address/SipURI;->setHost(Ljava/lang/String;)V

    .line 231
    invoke-interface {v5, v4}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 232
    iget-object v6, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 233
    new-instance v1, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 234
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 235
    .local v0, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 236
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "sipURI":Ljavax/sip/address/SipURI;
    :goto_0
    return-object v1

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Unexpected exception"

    iget-object v7, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-static {v6, v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createViaHeader()Ljavax/sip/header/ViaHeader;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    iget-object v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public getProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSentBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public isSentBySet()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->isSentBySet()Z

    move-result v0

    return v0
.end method

.method protected removeSipProvider()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 122
    return-void
.end method

.method public sendHeartbeat(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Lgov/nist/core/HostPort;

    invoke-direct {v2}, Lgov/nist/core/HostPort;-><init>()V

    .line 249
    .local v2, "targetHostPort":Lgov/nist/core/HostPort;
    new-instance v3, Lgov/nist/core/Host;

    invoke-direct {v3, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 250
    invoke-virtual {v2, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 251
    iget-object v3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    .line 252
    .local v0, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    new-instance v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 253
    .local v1, "siprequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    .line 254
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 256
    return-void
.end method

.method public setSentBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "sentBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setSentBy(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 0
    .param p1, "sipProviderImpl"    # Lgov/nist/javax/sip/SipProviderImpl;

    .prologue
    .line 114
    iput-object p1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 115
    return-void
.end method
