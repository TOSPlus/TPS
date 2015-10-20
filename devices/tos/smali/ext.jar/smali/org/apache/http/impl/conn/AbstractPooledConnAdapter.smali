.class public abstract Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# instance fields
.field protected volatile poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .param p1, "manager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .prologue
    .line 77
    iget-object v0, p2, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 78
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 79
    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter is detached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 157
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    .line 160
    :cond_1
    return-void
.end method

.method protected detach()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->detach()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 102
    return-void
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 109
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    iget-object v0, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    iget-object v0, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 177
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 146
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 147
    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 120
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 184
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 168
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    .line 171
    :cond_1
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "next"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 138
    return-void
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 129
    return-void
.end method
