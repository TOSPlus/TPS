.class public Lorg/apache/http/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# instance fields
.field private final handlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Request URI may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_0
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, "index":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 93
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_1
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "handler":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    :cond_3
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    move-object v0, v4

    goto :goto_0

    .line 114
    .end local v0    # "bestMatch":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return v1

    :cond_0
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI request pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request handelr may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map of handlers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
