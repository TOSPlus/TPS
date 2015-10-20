.class public abstract Lgov/nist/javax/sip/stack/MessageChannel;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# instance fields
.field protected transient messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field protected useCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fromReq"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v3, -0x1

    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, "start":I
    if-eq v1, v3, :cond_0

    .line 445
    const-string v2, "\r\n"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    .line 448
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 450
    const/4 v2, 0x1

    .line 453
    .end local v0    # "end":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "fromReq"    # Ljava/lang/String;
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v4, -0x1

    .line 466
    const-string v3, "Via"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 467
    .local v2, "start":I
    const/4 v1, 0x0

    .line 468
    .local v1, "found":Z
    :goto_0
    if-eq v2, v4, :cond_1

    .line 469
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 470
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    .line 472
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 474
    const/4 v1, 0x1

    .line 475
    const-string v3, "Via"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 477
    :cond_0
    const/4 v1, 0x0

    .line 480
    .end local v0    # "end":I
    .end local v1    # "found":Z
    :cond_1
    return v1
.end method

.method public static getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostPort"    # Lgov/nist/core/HostPort;
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inetAddr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected final createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;
    .locals 10
    .param p1, "badReq"    # Ljava/lang/String;
    .param p2, "pe"    # Ljava/text/ParseException;

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 383
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0x200

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 384
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIP/2.0 400 Bad Request ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-static {p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v6

    .line 389
    :cond_1
    const-string v7, "CSeq"

    invoke-static {v7, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    const-string v7, "Call-ID"

    invoke-static {v7, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 393
    const-string v7, "From"

    invoke-static {v7, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 395
    const-string v7, "To"

    invoke-static {v7, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 399
    const-string v6, "To"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 400
    .local v5, "toStart":I
    if-eq v5, v9, :cond_2

    const-string v6, "tag"

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 401
    const-string v6, ";tag=badreq"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :cond_2
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v4

    .line 406
    .local v4, "s":Ljavax/sip/header/ServerHeader;
    if-eqz v4, :cond_3

    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 410
    .local v1, "clength":I
    instance-of v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/2addr v6, v1

    const-string v7, "Content-Type"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, ": message/sipfrag\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "Content-Length"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x514

    if-ge v6, v7, :cond_5

    .line 418
    :cond_4
    new-instance v3, Lgov/nist/javax/sip/header/ContentType;

    const-string v6, "message"

    const-string v7, "sipfrag"

    invoke-direct {v3, v6, v7}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v3, "cth":Ljavax/sip/header/ContentTypeHeader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    new-instance v2, Lgov/nist/javax/sip/header/ContentLength;

    invoke-direct {v2, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    .line 421
    .local v2, "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    .end local v3    # "cth":Ljavax/sip/header/ContentTypeHeader;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 424
    .end local v2    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    :cond_5
    new-instance v2, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    .line 425
    .restart local v2    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .prologue
    .line 288
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 289
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 291
    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public abstract getPeerAddress()Ljava/lang/String;
.end method

.method public getPeerHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 301
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 302
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 303
    return-object v0
.end method

.method protected abstract getPeerInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourcePort()I
.end method

.method public abstract getPeerPort()I
.end method

.method protected abstract getPeerProtocol()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRawIpSourceAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "sourceAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 261
    .local v1, "rawIpSourceAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 262
    .local v3, "sourceInetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    .end local v3    # "sourceInetAddress":Ljava/net/InetAddress;
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public abstract getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 2

    .prologue
    .line 314
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 316
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 320
    return-object v0

    .line 317
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract getViaHost()Ljava/lang/String;
.end method

.method public getViaHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 331
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 332
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 333
    return-object v0
.end method

.method public abstract getViaPort()I
.end method

.method public abstract isReliable()Z
.end method

.method public abstract isSecure()Z
.end method

.method protected logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V
    .locals 7
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "time"    # J

    .prologue
    .line 344
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 349
    const/16 p3, 0x13c4

    .line 350
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_0
.end method

.method public logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V
    .locals 10
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "receptionTime"    # J
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v9

    .line 364
    .local v9, "peerport":I
    if-nez v9, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax/sip/header/ContactHeader;

    .line 366
    .local v8, "contact":Ljavax/sip/header/ContactHeader;
    invoke-interface {v8}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getPort()I

    move-result v9

    .line 369
    .end local v8    # "contact":Ljavax/sip/header/ContactHeader;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "from":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p4

    move-wide v6, p2

    invoke-interface/range {v0 .. v7}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 373
    return-void
.end method

.method public abstract sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    .locals 7
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 249
    .local v4, "time":J
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 250
    .local v6, "bytes":[B
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v6, p2, p3, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 251
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 252
    return-void
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    .locals 16
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "hop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 201
    .local v5, "time":J
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 205
    .local v3, "hopAddr":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v7

    .local v7, "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v13, v7, v9

    .line 206
    .local v13, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v1

    invoke-virtual {v13, v3, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v12

    .line 211
    .local v12, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v1, v12, Lgov/nist/javax/sip/stack/RawMessageChannel;

    if-eqz v1, :cond_2

    .line 212
    check-cast v12, Lgov/nist/javax/sip/stack/RawMessageChannel;

    .end local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Self routing message"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    .end local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 237
    :cond_1
    return-void

    .line 205
    .restart local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 220
    .end local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 222
    .local v14, "msg":[B
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v1

    move-object/from16 v0, p1

    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    goto :goto_1

    .line 224
    .end local v7    # "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "msg":[B
    :catch_0
    move-exception v10

    .line 225
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .end local v10    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    move-object v15, v1

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    invoke-interface/range {p2 .. p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 234
    :cond_4
    throw v15

    .line 226
    :catch_1
    move-exception v8

    .line 227
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Error self routing message cause by: "

    invoke-interface {v1, v2, v8}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 231
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error self routing message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected abstract sendMessage([BLjava/net/InetAddress;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected uncache()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
