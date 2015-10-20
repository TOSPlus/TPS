.class public abstract Lorg/apache/http/impl/auth/RFC2617Scheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 10
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v6, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 69
    .local v6, "parser":Lorg/apache/http/message/HeaderValueParser;
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    invoke-direct {v1, p2, v7}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 70
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {v6, p1, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 71
    .local v3, "elements":[Lorg/apache/http/HeaderElement;
    array-length v7, v3

    if-nez v7, :cond_0

    .line 72
    new-instance v7, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v8, "Authentication challenge is empty"

    invoke-direct {v7, v8}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 76
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 77
    .local v2, "element":Lorg/apache/http/HeaderElement;
    iget-object v7, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "element":Lorg/apache/http/HeaderElement;
    :cond_1
    return-void
.end method
