.class public Lorg/apache/http/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# instance fields
.field private final cookieComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lorg/apache/http/cookie/CookieIdentityComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookieIdentityComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    .line 73
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 86
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .param p1, "cookies"    # [Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 112
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/cookie/Cookie;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 113
    .local v1, "cooky":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "arr$":[Lorg/apache/http/cookie/Cookie;
    .end local v1    # "cooky":Lorg/apache/http/cookie/Cookie;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    .restart local v0    # "arr$":[Lorg/apache/http/cookie/Cookie;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 137
    monitor-enter p0

    if-nez p1, :cond_1

    .line 138
    const/4 v1, 0x0

    .line 147
    :cond_0
    monitor-exit p0

    return v1

    .line 140
    :cond_1
    const/4 v1, 0x0

    .line 141
    .local v1, "removed":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
