.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 65
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 66
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exception parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    if-nez p3, :cond_1

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1
    iget v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v4, :cond_3

    .line 117
    :cond_2
    :goto_0
    return v2

    .line 92
    :cond_3
    instance-of v4, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v4, :cond_4

    move v2, v3

    .line 94
    goto :goto_0

    .line 96
    :cond_4
    instance-of v4, p1, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_2

    .line 100
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-nez v4, :cond_2

    .line 104
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v4, :cond_2

    .line 108
    const-string v4, "http.request_sent"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v3

    .line 111
    .local v1, "sent":Z
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v4, :cond_2

    :cond_5
    move v2, v3

    .line 114
    goto :goto_0

    .end local v1    # "sent":Z
    :cond_6
    move v1, v2

    .line 110
    goto :goto_1
.end method
