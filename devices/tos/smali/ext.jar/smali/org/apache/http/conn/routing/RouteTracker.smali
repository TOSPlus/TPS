.class public final Lorg/apache/http/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/conn/routing/RouteInfo;


# instance fields
.field private connected:Z

.field private layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lorg/apache/http/HttpHost;

.field private secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    .line 93
    iput-object p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 94
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 95
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V

    .line 108
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lorg/apache/http/HttpHost;Z)V
    .locals 2
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    .prologue
    const/4 v1, 0x1

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    .line 141
    new-array v0, v1, [Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 142
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 143
    return-void
.end method

.method public final connectTarget(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    .line 122
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 123
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 329
    if-ne p1, p0, :cond_0

    .line 358
    :goto_0
    return v5

    .line 331
    :cond_0
    instance-of v3, p1, Lorg/apache/http/conn/routing/RouteTracker;

    if-nez v3, :cond_1

    move v5, v4

    .line 332
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 334
    check-cast v2, Lorg/apache/http/conn/routing/RouteTracker;

    .line 335
    .local v2, "that":Lorg/apache/http/conn/routing/RouteTracker;
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v6}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 336
    .local v0, "equal":Z
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v3, v5

    :goto_1
    and-int/2addr v0, v3

    .line 340
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v6, v6

    if-ne v3, v6, :cond_5

    :cond_3
    move v3, v5

    :goto_2
    and-int/2addr v0, v3

    .line 346
    iget-boolean v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    iget-boolean v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-ne v3, v6, :cond_6

    iget-boolean v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    iget-boolean v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v3, v6, :cond_6

    :goto_3
    and-int/2addr v0, v5

    .line 353
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_7

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 355
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v3, v3, v1

    iget-object v4, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_4
    move v3, v4

    .line 336
    goto :goto_1

    :cond_5
    move v3, v4

    .line 340
    goto :goto_2

    :cond_6
    move v5, v4

    .line 346
    goto :goto_3

    :cond_7
    move v5, v0

    .line 358
    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "hops":I
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v1, :cond_1

    .line 231
    const/4 v0, 0x1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v1, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .locals 5
    .param p1, "hop"    # I

    .prologue
    .line 241
    if-gez p1, :cond_0

    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index must not be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    .line 245
    .local v0, "hopcount":I
    if-lt p1, v0, :cond_1

    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds tracked route length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_1
    const/4 v1, 0x0

    .line 252
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 253
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v1, v2, p1

    .line 257
    :goto_0
    return-object v1

    .line 255
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 373
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v0

    .line 375
    .local v0, "hc":I
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 377
    :cond_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v2, v2

    xor-int/2addr v0, v2

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 380
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_1
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v2, :cond_2

    .line 384
    const v2, 0x11111111

    xor-int/2addr v0, v2

    .line 385
    :cond_2
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-eqz v2, :cond_3

    .line 386
    const v2, 0x22222222

    xor-int/2addr v0, v2

    .line 388
    :cond_3
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 389
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 391
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layerProtocol(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No layered protocol unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 209
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 210
    return-void
.end method

.method public final toRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-boolean v4, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    iget-object v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    add-int/lit8 v2, v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 404
    .local v0, "cab":Ljava/lang/StringBuilder;
    const-string v2, "RouteTracker["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v2, :cond_1

    .line 411
    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :cond_1
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v2, v3, :cond_2

    .line 413
    const/16 v2, 0x74

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v2, v3, :cond_3

    .line 415
    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    :cond_3
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-eqz v2, :cond_4

    .line 417
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    :cond_4
    const-string v2, "}->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_5

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 421
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final tunnelProxy(Lorg/apache/http/HttpHost;Z)V
    .locals 4
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    .prologue
    const/4 v3, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy host may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No tunnel unless connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v1, :cond_2

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No proxy tunnel without proxy."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/http/HttpHost;

    .line 186
    .local v0, "proxies":[Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 190
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 191
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 192
    return-void
.end method

.method public final tunnelTarget(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel without proxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 160
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 161
    return-void
.end method
