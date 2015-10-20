.class public Lorg/apache/http/client/params/ClientParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ClientParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 46
    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 70
    return-void
.end method

.method public setConnectionManagerFactory(Lorg/apache/http/conn/ClientConnectionManagerFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/http/conn/ClientConnectionManagerFactory;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection-manager.factory-object"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 54
    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "factory"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 50
    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 78
    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "headers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/http/Header;>;"
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.default-headers"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 86
    return-void
.end method

.method public setDefaultHost(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.default-host"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 90
    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2
    .param p1, "handle"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 74
    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2
    .param p1, "handle"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 58
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2
    .param p1, "maxRedirects"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 66
    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2
    .param p1, "reject"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 62
    return-void
.end method

.method public setVirtualHost(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.virtual-host"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 82
    return-void
.end method
