.class public Lgov/nist/javax/sip/stack/UDPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "UDPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
    }
.end annotation


# instance fields
.field private incomingPacket:Ljava/net/DatagramPacket;

.field private myAddress:Ljava/lang/String;

.field protected myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

.field protected myPort:I

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPacketSourceAddress:Ljava/net/InetAddress;

.field private peerPacketSourcePort:I

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private pingBackRecord:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private receptionTime:J

.field protected sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .locals 2
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .prologue
    .line 173
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 174
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 175
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 177
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    .local v0, "mythread":Ljava/lang/Thread;
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 180
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 182
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    .locals 2
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    .param p3, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 200
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 202
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 203
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 206
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 207
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 208
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, "mythread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 210
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .locals 3
    .param p1, "targetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .prologue
    .line 227
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 228
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 229
    iput p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 230
    const-string v0, "UDP"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 232
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 233
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 234
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 235
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating message channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/stack/UDPMessageChannel;

    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    return-object v0
.end method

.method private processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    .locals 23
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 319
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v19

    .line 321
    .local v19, "packetLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    .line 322
    .local v11, "bytes":[B
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 323
    .local v17, "msgBytes":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v11, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UDPMessageChannel: processIncomingDataPacket : peerAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 334
    :cond_0
    const/16 v20, 0x0

    .line 336
    .local v20, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v20

    .line 338
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    if-nez v20, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Rejecting message !  + Null message parsed."

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 389
    const-string v5, "\r\n\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 390
    .local v4, "retval":[B
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 391
    .local v3, "keepalive":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v5, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v5, v5, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v5

    new-instance v6, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8}, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;-><init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 459
    .end local v3    # "keepalive":Ljava/net/DatagramPacket;
    .end local v4    # "retval":[B
    :cond_2
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v13

    .line 340
    .local v13, "ex":Ljava/text/ParseException;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 341
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting message !  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v13}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 352
    :cond_3
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 353
    .local v18, "msgString":Ljava/lang/String;
    const-string v5, "SIP/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ACK "

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "badReqRes":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Sending automatic 400 Bad Request:"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 363
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    const-string v7, "UDP"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 365
    :catch_1
    move-exception v12

    .line 366
    .local v12, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v12}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 369
    .end local v12    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v9    # "badReqRes":Ljava/lang/String;
    .end local v13    # "ex":Ljava/text/ParseException;
    .end local v18    # "msgString":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v22

    .line 399
    .local v22, "viaList":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    if-nez v5, :cond_8

    .line 403
    :cond_7
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 404
    .local v10, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> Dropped Bad Msg From = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "To = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CallId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CSeq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Via = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    .end local v10    # "badmsg":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    instance-of v5, v0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v5, :cond_c

    .line 419
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v21

    check-cast v21, Lgov/nist/javax/sip/header/Via;

    .line 420
    .local v21, "v":Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v16

    .line 421
    .local v16, "hop":Ljavax/sip/address/Hop;
    invoke-interface/range {v16 .. v16}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 422
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 425
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 427
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 432
    const-string v5, "rport"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v15

    .line 433
    .local v15, "hasRPort":Z
    if-nez v15, :cond_9

    invoke-interface/range {v16 .. v16}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 436
    :cond_9
    const-string v5, "received"

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_a
    if-eqz v15, :cond_b

    .line 441
    const-string v5, "rport"

    move-object/from16 v0, p0

    iget v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 457
    .end local v15    # "hasRPort":Z
    .end local v16    # "hop":Ljavax/sip/address/Hop;
    .end local v21    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    goto/16 :goto_0

    .line 444
    .restart local v16    # "hop":Ljavax/sip/address/Hop;
    .restart local v21    # "v":Lgov/nist/javax/sip/header/Via;
    :catch_2
    move-exception v14

    .line 445
    .local v14, "ex1":Ljava/text/ParseException;
    invoke-static {v14}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 450
    .end local v14    # "ex1":Ljava/text/ParseException;
    .end local v16    # "hop":Ljavax/sip/address/Hop;
    .end local v21    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 451
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 452
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 453
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 454
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 869
    if-nez p1, :cond_0

    .line 870
    const/4 v0, 0x0

    .line 879
    :goto_0
    return v0

    .line 872
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 873
    const/4 v0, 0x0

    .local v0, "retval":Z
    goto :goto_0

    .end local v0    # "retval":Z
    :cond_1
    move-object v1, p1

    .line 875
    check-cast v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    .line 876
    .local v1, "that":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "retval":Z
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    const-string v2, "UDP"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    const-string v0, "udp"

    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    return v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 587
    :cond_0
    if-eqz p3, :cond_3

    const-class v0, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "BAD MESSAGE!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 598
    :cond_2
    throw p1

    .line 600
    :cond_3
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public isReliable()Z
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 14
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .prologue
    .line 468
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v1, :cond_6

    move-object v9, p1

    .line 469
    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    .line 474
    .local v9, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-wide v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 481
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, v9, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v11

    .line 484
    .local v11, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-nez v11, :cond_2

    .line 485
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Null request interface returned -- dropping request"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 555
    .end local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v11    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_1
    :goto_0
    return-void

    .line 493
    .restart local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v11    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 497
    :cond_3
    :try_start_0
    invoke-interface {v11, v9, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    instance-of v1, v11, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_4

    move-object v13, v11

    .line 500
    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .local v13, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v11

    .line 502
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 506
    .end local v13    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v1

    instance-of v2, v11, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_5

    move-object v13, v11

    .line 500
    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .restart local v13    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_5

    .line 502
    check-cast v11, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v11    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 499
    .end local v13    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_5
    throw v1

    .end local v9    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_6
    move-object v10, p1

    .line 515
    check-cast v10, Lgov/nist/javax/sip/message/SIPResponse;

    .line 517
    .local v10, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_1
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 525
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, v10, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v12

    .line 527
    .local v12, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v12, :cond_a

    .line 529
    :try_start_2
    instance-of v1, v12, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_8

    move-object v0, v12

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v1, v0

    invoke-virtual {v1, v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 532
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 533
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping response message with invalid tag >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 541
    :cond_7
    instance-of v1, v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_1

    move-object v1, v12

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    check-cast v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v12    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :goto_1
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_0

    .line 518
    :catch_0
    move-exception v8

    .line 519
    .local v8, "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping Badly formatted response message >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .end local v8    # "ex":Ljava/text/ParseException;
    .restart local v12    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_8
    :try_start_3
    invoke-interface {v12, v10, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    instance-of v1, v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_1

    move-object v1, v12

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    check-cast v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    goto :goto_1

    .line 541
    :catchall_1
    move-exception v1

    move-object v2, v1

    instance-of v1, v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_9

    move-object v1, v12

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v1

    if-nez v1, :cond_9

    .line 544
    check-cast v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v12    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 541
    :cond_9
    throw v2

    .line 549
    .restart local v12    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "null sipServerResponse!"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 246
    const/4 v3, 0x0

    .line 250
    .local v3, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    if-nez v4, :cond_1

    .line 251
    new-instance v4, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v4}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    iput-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 252
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-virtual {v4, p0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 257
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-eq v4, v8, :cond_6

    .line 258
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v5, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 260
    :cond_2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 262
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v4, :cond_3

    .line 263
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_1
    return-void

    .line 267
    :cond_3
    if-nez v3, :cond_4

    .line 268
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v3

    .line 273
    :cond_4
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 278
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v4, :cond_2

    .line 283
    monitor-exit v5

    goto :goto_1

    .line 289
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 286
    :cond_5
    :try_start_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/DatagramPacket;

    .line 289
    .local v2, "packet":Ljava/net/DatagramPacket;
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    iput-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 297
    :goto_2
    :try_start_4
    invoke-direct {p0, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 304
    :goto_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ne v4, v8, :cond_0

    goto :goto_1

    .line 292
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :cond_6
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    goto :goto_2

    .line 298
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Error while processing incoming UDP packet"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 14
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 629
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 631
    .local v6, "time":J
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v8

    .local v8, "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v13, v8, v10

    .line 633
    .local v13, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    iget v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    if-ne v0, v2, :cond_4

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    invoke-virtual {v13, v0, v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v12

    .line 640
    .local v12, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v0, v12, Lgov/nist/javax/sip/stack/RawMessageChannel;

    if-eqz v0, :cond_4

    .line 641
    check-cast v12, Lgov/nist/javax/sip/stack/RawMessageChannel;

    .end local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-interface {v12, p1}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 643
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Self routing message"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_8

    .line 664
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .end local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :goto_2
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 668
    :cond_2
    :goto_3
    return-void

    .line 622
    .end local v6    # "time":J
    .end local v8    # "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    goto :goto_0

    .line 631
    .restart local v6    # "time":J
    .restart local v8    # "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 651
    .end local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 653
    .local v1, "msg":[B
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    instance-of v5, p1, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_9

    .line 664
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    goto :goto_2

    .line 656
    .end local v1    # "msg":[B
    .end local v8    # "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_0
    move-exception v9

    .line 657
    .local v9, "ex":Ljava/io/IOException;
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v2

    if-nez v2, :cond_7

    .line 664
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 663
    :cond_6
    :goto_4
    throw v0

    .line 658
    :catch_1
    move-exception v9

    .line 659
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "An exception occured while sending message"

    invoke-interface {v0, v2, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 660
    new-instance v0, Ljava/io/IOException;

    const-string v2, "An exception occured while sending message"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_7
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 666
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Sent EMPTY Message"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 665
    .restart local v8    # "arr$":[Lgov/nist/javax/sip/stack/MessageProcessor;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_8
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Sent EMPTY Message"

    .end local v13    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :goto_5
    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 665
    .restart local v1    # "msg":[B
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Sent EMPTY Message"

    goto :goto_5
.end method

.method protected sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    .locals 16
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "peerProtocol"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":sendMessage: Dropping reply!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 757
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Receiver port not set "

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 764
    :cond_2
    const-string v3, "UDP"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 765
    new-instance v14, Ljava/net/DatagramPacket;

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v14, v0, v3, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 770
    .local v14, "reply":Ljava/net/DatagramPacket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v3, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v15, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 777
    .local v15, "sock":Ljava/net/DatagramSocket;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 782
    :cond_3
    invoke-virtual {v15, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v3, :cond_4

    .line 784
    invoke-virtual {v15}, Ljava/net/DatagramSocket;->close()V

    .line 801
    .end local v14    # "reply":Ljava/net/DatagramPacket;
    .end local v15    # "sock":Ljava/net/DatagramSocket;
    :cond_4
    :goto_1
    return-void

    .line 775
    .restart local v14    # "reply":Ljava/net/DatagramPacket;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .restart local v15    # "sock":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 785
    .end local v15    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v11

    .line 786
    .local v11, "ex":Ljava/io/IOException;
    throw v11

    .line 787
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 788
    .local v11, "ex":Ljava/lang/Exception;
    invoke-static {v11}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 793
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v14    # "reply":Ljava/net/DatagramPacket;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    const-string v7, "tcp"

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p1

    move/from16 v9, p5

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v13

    .line 796
    .local v13, "outputSocket":Ljava/net/Socket;
    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 797
    .local v12, "myOutputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 798
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method protected sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "reConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 688
    :cond_0
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    .line 689
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":sendMessage: Dropping reply!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 693
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Receiver port not set "

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 695
    :cond_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 696
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "messageSize =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 698
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "*******************\n"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 702
    :cond_3
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, p1

    invoke-direct {v2, p1, v4, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 706
    .local v2, "reply":Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 708
    .local v0, "created":Z
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v4, :cond_5

    .line 713
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 724
    .local v3, "sock":Ljava/net/DatagramSocket;
    :goto_0
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 725
    if-eqz v0, :cond_4

    .line 726
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 732
    .end local v3    # "sock":Ljava/net/DatagramSocket;
    :cond_4
    :goto_1
    return-void

    .line 721
    :cond_5
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    .restart local v3    # "sock":Ljava/net/DatagramSocket;
    const/4 v0, 0x1

    goto :goto_0

    .line 727
    .end local v3    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v1

    .line 728
    .local v1, "ex":Ljava/io/IOException;
    throw v1

    .line 729
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 730
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method
