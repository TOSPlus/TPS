.class public Lgov/nist/javax/sip/stack/TCPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TCPMessageProcessor.java"


# instance fields
.field private incomingTcpMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgov/nist/javax/sip/stack/TCPMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field protected nConnections:I

.field private sock:Ljava/net/ServerSocket;

.field private tcpMessageChannels:Ljava/util/Hashtable;

.field protected useCount:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .prologue
    .line 79
    const-string v0, "tcp"

    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 81
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    .line 85
    return-void
.end method


# virtual methods
.method protected declared-synchronized cacheMessageChannel(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 5
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 235
    .local v0, "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    if-eqz v0, :cond_1

    .line 236
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    .line 240
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 242
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 5
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    const-string v2, "TCP"

    invoke-static {p1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    monitor-exit p0

    return-object v2

    .line 220
    :cond_0
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    .line 222
    .local v1, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    .line 224
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v2, v1

    .line 228
    goto :goto_0

    .line 216
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 6
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    const-string v3, "TCP"

    invoke-static {p1, p2, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    monitor-exit p0

    return-object v3

    .line 253
    :cond_0
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v2, p1, p2, v3, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    .line 254
    .local v2, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    .line 256
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v3, v2

    .line 260
    goto :goto_0

    .line 262
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDefaultTargetPort()I
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x13c4

    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    .prologue
    .line 271
    const v0, 0x7fffffff

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "tcp"

    return-object v0
.end method

.method public inUse()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 4
    .param p1, "tcpMessageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 112
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    if-eqz v2, :cond_2

    .line 114
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v2, v3, :cond_3

    .line 122
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 124
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 125
    :try_start_3
    monitor-exit p0

    .line 152
    :cond_2
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 130
    :cond_3
    iget v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    .line 131
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 134
    .local v1, "newsock":Ljava/net/Socket;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Accepting new connection!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 140
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    new-instance v3, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v3, v1, v4, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 141
    .end local v1    # "newsock":Ljava/net/Socket;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    goto :goto_0

    .line 131
    .end local v0    # "ex":Ljava/net/SocketException;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 143
    :catch_2
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 91
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "TCPMessageProcessorThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 95
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lgov/nist/core/net/NetworkLayer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "::0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V

    .line 102
    :cond_1
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    .line 176
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_0
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    .line 185
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 187
    .local v4, "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 176
    .end local v1    # "en":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 193
    .restart local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    goto :goto_2

    .line 196
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    monitor-exit p0

    return-void
.end method
