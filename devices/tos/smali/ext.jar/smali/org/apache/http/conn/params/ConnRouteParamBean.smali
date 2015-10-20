.class public Lorg/apache/http/conn/params/ConnRouteParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 50
    return-void
.end method


# virtual methods
.method public setDefaultProxy(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "defaultProxy"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 55
    return-void
.end method

.method public setForcedRoute(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.route.forced-route"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 65
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.route.local-address"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 60
    return-void
.end method
