.class public final Lorg/apache/http/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# instance fields
.field private final defaults:Lorg/apache/http/protocol/HttpContext;

.field private final local:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "local"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "defaults"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    .line 55
    iput-object p2, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    .line 56
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getDefaults()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
