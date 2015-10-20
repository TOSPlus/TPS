.class public Lorg/apache/http/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/cookie/Cookie;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookieIdentityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 5
    .param p1, "c1"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "c2"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 52
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "res":I
    if-nez v2, :cond_2

    .line 55
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "d1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "d2":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 61
    const-string v1, ""

    .line 63
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 65
    .end local v0    # "d1":Ljava/lang/String;
    .end local v1    # "d2":Ljava/lang/String;
    :cond_2
    return v2
.end method
