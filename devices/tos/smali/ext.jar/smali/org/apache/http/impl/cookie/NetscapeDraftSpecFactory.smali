.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

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
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_0
.end method
