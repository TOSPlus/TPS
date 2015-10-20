.class public Lorg/apache/http/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    new-instance v1, Lorg/apache/http/impl/cookie/BestMatchSpec;

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const-string v2, "http.protocol.single-cookie-header"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    goto :goto_0
.end method
