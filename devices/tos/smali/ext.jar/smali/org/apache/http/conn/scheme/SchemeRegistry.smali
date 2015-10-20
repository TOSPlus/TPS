.class public final Lorg/apache/http/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"


# instance fields
.field private final registeredSchemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/scheme/Scheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    if-nez p1, :cond_0

    .line 116
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .local v0, "found":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 79
    .local v0, "found":Lorg/apache/http/conn/scheme/Scheme;
    if-nez v0, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0    # "found":Lorg/apache/http/conn/scheme/Scheme;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 83
    .restart local v0    # "found":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 99
    monitor-enter p0

    if-nez p1, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized getSchemeNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 3
    .param p1, "sch"    # Lorg/apache/http/conn/scheme/Scheme;

    .prologue
    .line 136
    monitor-enter p0

    if-nez p1, :cond_0

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scheme must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 139
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .local v0, "old":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setItems(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/scheme/Scheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/conn/scheme/Scheme;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    if-nez p1, :cond_0

    .line 154
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 158
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .local v0, "gone":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0
.end method
