.class public final Lorg/apache/http/auth/params/AuthParams;
.super Ljava/lang/Object;
.source "AuthParams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    const-string v1, "http.auth.credential-charset"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 75
    const-string v0, "US-ASCII"

    .line 77
    :cond_1
    return-object v0
.end method

.method public static setCredentialCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    const-string v0, "http.auth.credential-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    return-void
.end method
