.class public Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeExpiredConnections()V

    .line 300
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    .line 301
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "idleTimeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 295
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    .line 296
    return-void
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 117
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v2, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 118
    .local v0, "acp":Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    const/4 v1, 0x1

    .line 119
    .local v1, "conngc":Z
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    .line 122
    :cond_0
    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    return-void
.end method

.method public getConnectionsInPool()I
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    iget v0, v0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I

    monitor-exit v1

    return v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 200
    instance-of v0, p1, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v6, p1

    .line 205
    check-cast v6, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 206
    .local v6, "hca":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection not obtained from this manager."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 216
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    .line 217
    .local v8, "socket":Ljava/net/Socket;
    if-eqz v8, :cond_2

    .line 218
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 223
    :cond_2
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released connection open but not marked reusable."

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 236
    :cond_3
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_4
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 245
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    .line 246
    .local v2, "reusable":Z
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 247
    if-eqz v1, :cond_5

    .line 248
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 251
    .end local v8    # "socket":Ljava/net/Socket;
    :cond_5
    :goto_0
    return-void

    .line 238
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v2    # "reusable":Z
    :catch_0
    move-exception v7

    .line 240
    .local v7, "iox":Ljava/io/IOException;
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception shutting down released connection."

    invoke-interface {v0, v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_6
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 245
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    .line 246
    .restart local v2    # "reusable":Z
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 247
    if-eqz v1, :cond_5

    .line 248
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 244
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v2    # "reusable":Z
    .end local v7    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v9, v0

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 245
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    .line 246
    .restart local v2    # "reusable":Z
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 247
    if-eqz v1, :cond_7

    .line 248
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 250
    :cond_7
    throw v9
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 155
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 158
    .local v0, "poolRequest":Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    .line 257
    return-void
.end method
