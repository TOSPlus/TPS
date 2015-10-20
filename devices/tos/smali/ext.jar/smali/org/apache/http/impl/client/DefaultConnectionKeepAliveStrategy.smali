.class public Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP response may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v4, "Keep-Alive"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 62
    .local v1, "it":Lorg/apache/http/HeaderElementIterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 64
    .local v0, "he":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "param":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "timeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 73
    .end local v0    # "he":Lorg/apache/http/HeaderElement;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    return-wide v4

    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 69
    .restart local v0    # "he":Lorg/apache/http/HeaderElement;
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
