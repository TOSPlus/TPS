.class public Lorg/apache/http/client/protocol/RequestProxyAuthentication;
.super Ljava/lang/Object;
.source "RequestProxyAuthentication.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    .line 61
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP request may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP context may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_1
    const-string v4, "Proxy-Authorization"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    const-string v4, "http.auth.proxy-scope"

    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 79
    .local v1, "authState":Lorg/apache/http/auth/AuthState;
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 84
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 89
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_4

    .line 90
    iget-object v4, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "User credentials not available"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    :cond_5
    :try_start_0
    invoke-interface {v0, v2, p1}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v4, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method
