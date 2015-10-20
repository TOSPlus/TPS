.class public Lorg/apache/http/impl/client/RequestWrapper;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lorg/apache/http/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    .line 75
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 77
    instance-of v2, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 78
    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 79
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 92
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    .line 93
    return-void

    .line 82
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    .line 84
    .local v1, "requestLine":Lorg/apache/http/RequestLine;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 90
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExecCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 136
    .local v2, "ver":Lorg/apache/http/ProtocolVersion;
    const/4 v1, 0x0

    .line 137
    .local v1, "uritext":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 141
    :cond_1
    const-string v1, "/"

    .line 143
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public incrementExecCount()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    .line 168
    return-void
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public resetHeaders()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 98
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setHeaders([Lorg/apache/http/Header;)V

    .line 99
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 122
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 131
    return-void
.end method
