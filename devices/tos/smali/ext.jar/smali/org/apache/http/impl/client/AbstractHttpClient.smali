.class public abstract Lorg/apache/http/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private credsProvider:Lorg/apache/http/client/CredentialsProvider;

.field private defaultParams:Lorg/apache/http/params/HttpParams;

.field private httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

.field private supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

.field private targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 147
    iput-object p2, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    .line 148
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 149
    return-void
.end method

.method private determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 499
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    new-instance v1, Lorg/apache/http/HttpHost;

    .end local v1    # "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    .restart local v1    # "target":Lorg/apache/http/HttpHost;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
.end method

.method protected abstract createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
.end method

.method protected createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;
    .locals 13
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "stateHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 627
    new-instance v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected abstract createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.end method

.method protected abstract createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
.end method

.method protected abstract createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
.end method

.method protected abstract createCookieStore()Lorg/apache/http/client/CookieStore;
.end method

.method protected abstract createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
.end method

.method protected abstract createHttpContext()Lorg/apache/http/protocol/HttpContext;
.end method

.method protected abstract createHttpParams()Lorg/apache/http/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
.end method

.method protected abstract createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
.end method

.method protected abstract createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
.end method

.method protected abstract createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
.end method

.method protected abstract createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
.end method

.method protected abstract createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
.end method

.method protected determineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;
    .locals 4
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v3, 0x0

    .line 658
    new-instance v0, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 689
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 700
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    if-nez p3, :cond_0

    .line 701
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Response handler must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 705
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 709
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {p3, v1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 739
    .local v2, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 740
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    .line 742
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 745
    :cond_1
    return-object v2

    .line 710
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    .line 711
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 712
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_2

    .line 714
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :cond_2
    :goto_0
    instance-of v5, v3, Ljava/lang/Error;

    if-eqz v5, :cond_3

    .line 723
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 715
    .restart local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 718
    .local v4, "t2":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Error consuming content after an exception."

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 726
    .end local v4    # "t2":Ljava/lang/Throwable;
    :cond_3
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_4

    .line 727
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 730
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    instance-of v5, v3, Ljava/io/IOException;

    if-eqz v5, :cond_5

    .line 731
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 734
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v5, v3}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 668
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 679
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 19
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 526
    .local v12, "sysclsLoader":Ljava/lang/ClassLoader;
    const-string v15, "com.android.internal.os.TosModulesLoader"

    invoke-virtual {v12, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 527
    .local v2, "TosModulesLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "com.android.internal.os.TosPlugMethod$MethodPlugParam"

    invoke-virtual {v12, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 528
    .local v1, "MethodPlugParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .line 529
    .local v14, "tosModulesLoader":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 531
    .local v9, "methodPlugParam":Ljava/lang/Object;
    const-string v15, "invokeType"

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 532
    .local v8, "invokeTypeField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    const-string v15, "thisObject"

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 534
    .local v13, "thisObjectField":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    invoke-virtual {v13, v9, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    const-string v15, "args"

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 536
    .local v4, "argsField":Ljava/lang/reflect/Field;
    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/Object;

    .line 537
    .local v3, "args":[Ljava/lang/Object;
    const/4 v15, 0x0

    aput-object p1, v3, v15

    .line 538
    const/4 v15, 0x1

    aput-object p2, v3, v15

    .line 539
    const/4 v15, 0x2

    aput-object p3, v3, v15

    .line 540
    invoke-virtual {v4, v9, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    const-string v15, "invoke"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v1, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 543
    .local v7, "invokeMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_0

    .line 544
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "org.apache.http.impl.client.AbstractHttpClient#execute"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_0
    const-string v15, "returnEarly"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 548
    .local v11, "returnEarlyMethod":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_1

    .line 549
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v9, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 550
    .local v10, "result":Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 551
    const-string v15, "getResult"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 552
    .local v6, "getResultMethod":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_1

    .line 553
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v1    # "MethodPlugParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "TosModulesLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "argsField":Ljava/lang/reflect/Field;
    .end local v6    # "getResultMethod":Ljava/lang/reflect/Method;
    .end local v7    # "invokeMethod":Ljava/lang/reflect/Method;
    .end local v8    # "invokeTypeField":Ljava/lang/reflect/Field;
    .end local v9    # "methodPlugParam":Ljava/lang/Object;
    .end local v10    # "result":Ljava/lang/Boolean;
    .end local v11    # "returnEarlyMethod":Ljava/lang/reflect/Method;
    .end local v12    # "sysclsLoader":Ljava/lang/ClassLoader;
    .end local v13    # "thisObjectField":Ljava/lang/reflect/Field;
    .end local v14    # "tosModulesLoader":Ljava/lang/Object;
    :goto_0
    return-object v15

    .line 557
    :catch_0
    move-exception v5

    .line 558
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->tos_org_execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    goto :goto_0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpRequestInterceptor;>;"
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 461
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpResponseInterceptor;>;"
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 431
    return-void
.end method

.method public declared-synchronized setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V
    .locals 1
    .param p1, "authSchemeRegistry"    # Lorg/apache/http/auth/AuthSchemeRegistry;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V
    .locals 1
    .param p1, "cookieSpecRegistry"    # Lorg/apache/http/cookie/CookieSpecRegistry;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 1
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1
    .param p1, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 1
    .param p1, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .locals 1
    .param p1, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .locals 1
    .param p1, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V
    .locals 1
    .param p1, "routePlanner"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)V
    .locals 1
    .param p1, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final tos_org_execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 22
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 570
    if-nez p2, :cond_0

    .line 571
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 577
    :cond_0
    const/16 v19, 0x0

    .line 578
    .local v19, "execContext":Lorg/apache/http/protocol/HttpContext;
    const/16 v18, 0x0

    .line 582
    .local v18, "director":Lorg/apache/http/client/RequestDirector;
    monitor-enter p0

    .line 584
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v17

    .line 585
    .local v17, "defaultContext":Lorg/apache/http/protocol/HttpContext;
    if-nez p3, :cond_1

    .line 586
    move-object/from16 v19, v17

    .line 591
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;

    move-result-object v18

    .line 604
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 588
    :cond_1
    :try_start_2
    new-instance v20, Lorg/apache/http/protocol/DefaultedHttpContext;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/protocol/DefaultedHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V

    .end local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .local v20, "execContext":Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v19, v20

    .end local v20    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    goto :goto_0

    .line 604
    .end local v17    # "defaultContext":Lorg/apache/http/protocol/HttpContext;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 608
    .restart local v17    # "defaultContext":Lorg/apache/http/protocol/HttpContext;
    :catch_0
    move-exception v21

    .line 609
    .local v21, "httpException":Lorg/apache/http/HttpException;
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
