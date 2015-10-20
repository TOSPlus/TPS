.class public Lorg/apache/http/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lorg/apache/http/HttpRequestFactory;


# static fields
.field private static final RFC2616_COMMON_METHODS:[Ljava/lang/String;

.field private static final RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

.field private static final RFC2616_SPECIAL_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GET"

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "POST"

    aput-object v1, v0, v2

    const-string v1, "PUT"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HEAD"

    aput-object v1, v0, v2

    const-string v1, "OPTIONS"

    aput-object v1, v0, v3

    const-string v1, "DELETE"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "methods"    # [Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 75
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 79
    :goto_1
    return v1

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Lorg/apache/http/MethodNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 4
    .param p1, "requestline"    # Lorg/apache/http/RequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request line may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v1, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    .line 93
    :goto_0
    return-object v1

    .line 90
    :cond_1
    sget-object v1, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v1, p1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lorg/apache/http/RequestLine;)V

    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lorg/apache/http/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    new-instance v1, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v1, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    goto :goto_0

    .line 95
    :cond_3
    new-instance v1, Lorg/apache/http/MethodNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
