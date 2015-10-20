.class public Lorg/apache/http/client/protocol/RequestDefaultHeaders;
.super Ljava/lang/Object;
.source "RequestDefaultHeaders.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP request may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.default-headers"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 67
    .local v1, "defHeaders":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v1, :cond_1

    .line 68
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "defHeader":Ljava/lang/Object;
    check-cast v0, Lorg/apache/http/Header;

    .end local v0    # "defHeader":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 72
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
