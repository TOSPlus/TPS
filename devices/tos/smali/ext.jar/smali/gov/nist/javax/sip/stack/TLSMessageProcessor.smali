.class public Lgov/nist/javax/sip/stack/TLSMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TLSMessageProcessor.java"


# instance fields
.field private incomingTlsMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field protected nConnections:I

.field private sock:Ljava/net/ServerSocket;

.field private tlsMessageChannels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected useCount:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .prologue
    .line 89
    const-string v0, "tls"

    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 90
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method protected declared-synchronized cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .locals 5
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 251
    .local v0, "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    if-eqz v0, :cond_1

    .line 252
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 254
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    .line 256
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 258
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
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
    .line 232
    monitor-enter p0

    :try_start_0
    const-string v2, "TLS"

    invoke-static {p1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_0
    monitor-exit p0

    return-object v2

    .line 236
    :cond_0
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    .line 238
    .local v1, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 240
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 242
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 244
    goto :goto_0

    .line 232
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
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
    .line 265
    monitor-enter p0

    :try_start_0
    const-string v3, "TLS"

    invoke-static {p1, p2, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    monitor-exit p0

    return-object v3

    .line 269
    :cond_0
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v2, p1, p2, v3, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    .line 270
    .local v2, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 272
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 274
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 276
    goto :goto_0

    .line 278
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDefaultTargetPort()I
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x13c5

    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    .prologue
    .line 287
    const v0, 0x7fffffff

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public inUse()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

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
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .locals 4
    .param p1, "tlsMessageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 224
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 225
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v2, :cond_2

    .line 128
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 134
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v2, v3, :cond_3

    .line 136
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 138
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 139
    :try_start_3
    monitor-exit p0

    .line 177
    :cond_2
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 144
    :cond_3
    iget v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 145
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :try_start_4
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 149
    .local v1, "newsock":Ljava/net/Socket;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Accepting new connection!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 156
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    new-instance v3, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v3, v1, v4, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 157
    .end local v1    # "newsock":Ljava/net/Socket;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/net/SocketException;
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Fatal - SocketException occured while Accepting connection"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 161
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    goto :goto_1

    .line 145
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
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 164
    :catch_2
    move-exception v0

    .line 165
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 166
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Fatal - SSSLException occured while Accepting connection"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 169
    .end local v0    # "ex":Ljavax/net/ssl/SSLException;
    :catch_3
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Problem Accepting Connection"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 173
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected Exception!"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    .local v1, "thread":Ljava/lang/Thread;
    const-string v2, "TLSMessageProcessorThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 103
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 106
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v2, v3, v6, v4}, Lgov/nist/core/net/NetworkLayer;->createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 108
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 109
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 110
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 111
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    check-cast v2, Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "enabledCiphers":[Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 116
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 117
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :goto_1
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    .line 203
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 205
    .local v4, "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 192
    .end local v1    # "en":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 210
    .restart local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    goto :goto_3

    .line 212
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
