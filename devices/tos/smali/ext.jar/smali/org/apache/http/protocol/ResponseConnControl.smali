.class public Lorg/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP response may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 72
    .local v3, "status":I
    const/16 v5, 0x190

    if-eq v3, v5, :cond_2

    const/16 v5, 0x198

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19b

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19e

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1f7

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1f5

    if-ne v3, v5, :cond_4

    .line 79
    :cond_2
    const-string v5, "Connection"

    const-string v6, "Close"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_0
    return-void

    .line 84
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 85
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_6

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    .line 87
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    :cond_5
    const-string v5, "Connection"

    const-string v6, "Close"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_6
    const-string v5, "http.request"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    .line 96
    .local v2, "request":Lorg/apache/http/HttpRequest;
    if-eqz v2, :cond_3

    .line 97
    const-string v5, "Connection"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 98
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 99
    const-string v5, "Connection"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
