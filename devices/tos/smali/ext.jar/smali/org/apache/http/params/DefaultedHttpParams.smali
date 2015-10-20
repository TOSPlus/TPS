.class public final Lorg/apache/http/params/DefaultedHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final defaults:Lorg/apache/http/params/HttpParams;

.field private final local:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "local"    # Lorg/apache/http/params/HttpParams;
    .param p2, "defaults"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    .line 57
    iput-object p2, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    .line 58
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 65
    .local v0, "clone":Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public getDefaults()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
