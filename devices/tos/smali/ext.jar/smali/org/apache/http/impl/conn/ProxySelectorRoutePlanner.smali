.class public Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner$1;
    }
.end annotation


# instance fields
.field protected proxySelector:Ljava/net/ProxySelector;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p2, "prosel"    # Ljava/net/ProxySelector;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 91
    iput-object p2, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 92
    return-void
.end method


# virtual methods
.method protected chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .locals 5
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Proxy list must not be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    :cond_1
    const/4 v2, 0x0

    .line 274
    .local v2, "result":Ljava/net/Proxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 276
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 277
    .local v1, "p":Ljava/net/Proxy;
    sget-object v3, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 274
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :pswitch_0
    move-object v2, v1

    .line 282
    goto :goto_1

    .line 291
    .end local v1    # "p":Ljava/net/Proxy;
    :cond_2
    if-nez v2, :cond_3

    .line 295
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 298
    :cond_3
    return-object v2

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;
    .locals 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v3, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 191
    .local v3, "psel":Ljava/net/ProxySelector;
    if-nez v3, :cond_0

    .line 192
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    .line 193
    :cond_0
    if-nez v3, :cond_2

    .line 194
    const/4 v4, 0x0

    .line 219
    :cond_1
    :goto_0
    return-object v4

    .line 196
    :cond_2
    const/4 v5, 0x0

    .line 198
    .local v5, "targetURI":Ljava/net/URI;
    :try_start_0
    new-instance v5, Ljava/net/URI;

    .end local v5    # "targetURI":Ljava/net/URI;
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .restart local v5    # "targetURI":Ljava/net/URI;
    invoke-virtual {v3, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;

    move-result-object v1

    .line 207
    .local v1, "p":Ljava/net/Proxy;
    const/4 v4, 0x0

    .line 208
    .local v4, "result":Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_1

    .line 210
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/InetSocketAddress;

    if-nez v7, :cond_3

    .line 211
    new-instance v7, Lorg/apache/http/HttpException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to handle non-Inet proxy address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 199
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v4    # "result":Lorg/apache/http/HttpHost;
    .end local v5    # "targetURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 200
    .local v6, "usx":Ljava/net/URISyntaxException;
    new-instance v7, Lorg/apache/http/HttpException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot convert host to URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 214
    .end local v6    # "usx":Ljava/net/URISyntaxException;
    .restart local v1    # "p":Ljava/net/Proxy;
    .restart local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v4    # "result":Lorg/apache/http/HttpHost;
    .restart local v5    # "targetURI":Ljava/net/URI;
    :cond_3
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 216
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lorg/apache/http/HttpHost;

    .end local v4    # "result":Lorg/apache/http/HttpHost;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-direct {v4, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .restart local v4    # "result":Lorg/apache/http/HttpHost;
    goto :goto_0
.end method

.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 8
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Request must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 129
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 131
    .local v2, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 168
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v3, "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    return-object v3

    .line 137
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    if-nez p1, :cond_2

    .line 138
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Target host must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_2
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v0

    .line 148
    .local v0, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    .line 149
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_4

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 157
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v4

    .line 161
    .local v4, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v4}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v5

    .line 163
    .local v5, "secure":Z
    if-nez v1, :cond_5

    .line 164
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v5}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_2
    move-object v3, v2

    .line 168
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_0

    .line 151
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v4    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v5    # "secure":Z
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_4
    sget-object v6, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-virtual {v6, v1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const/4 v1, 0x0

    goto :goto_1

    .line 166
    .restart local v4    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v5    # "secure":Z
    :cond_5
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v1, v5}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_2
.end method

.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "isa"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1, "prosel"    # Ljava/net/ProxySelector;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 113
    return-void
.end method
