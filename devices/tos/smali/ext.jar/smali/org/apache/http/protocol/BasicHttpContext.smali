.class public Lorg/apache/http/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# instance fields
.field private map:Ljava/util/Map;

.field private final parentContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "parentContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/apache/http/protocol/HttpContext;

    .line 58
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    :cond_2
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
