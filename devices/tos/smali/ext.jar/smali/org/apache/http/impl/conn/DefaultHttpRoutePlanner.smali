.class public Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 74
    return-void
.end method


# virtual methods
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
    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Request must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 91
    .local v2, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 117
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v3, "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    return-object v3

    .line 97
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    if-nez p1, :cond_2

    .line 98
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Target host must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_2
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    .local v0, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/params/ConnRouteParams;->getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 107
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v4

    .line 110
    .local v4, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v4}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v5

    .line 112
    .local v5, "secure":Z
    if-nez v1, :cond_3

    .line 113
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v5}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_1
    move-object v3, v2

    .line 117
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_0

    .line 115
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_3
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v1, v5}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_1
.end method
