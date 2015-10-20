.class public Lorg/apache/http/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lorg/apache/http/client/CredentialsProvider;


# instance fields
.field private final credMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private static matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 7
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;",
            "Lorg/apache/http/auth/AuthScope;",
            ")",
            "Lorg/apache/http/auth/Credentials;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/auth/Credentials;

    .line 97
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_2

    .line 100
    const/4 v1, -0x1

    .line 101
    .local v1, "bestMatchFactor":I
    const/4 v0, 0x0

    .line 102
    .local v0, "bestMatch":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/auth/AuthScope;

    .line 103
    .local v3, "current":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p1, v3}, Lorg/apache/http/auth/AuthScope;->match(Lorg/apache/http/auth/AuthScope;)I

    move-result v4

    .line 104
    .local v4, "factor":I
    if-le v4, v1, :cond_0

    .line 105
    move v1, v4

    .line 106
    move-object v0, v3

    goto :goto_0

    .line 109
    .end local v3    # "current":Lorg/apache/http/auth/AuthScope;
    .end local v4    # "factor":I
    :cond_1
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    check-cast v2, Lorg/apache/http/auth/Credentials;

    .line 113
    .end local v0    # "bestMatch":Lorg/apache/http/auth/AuthScope;
    .end local v1    # "bestMatchFactor":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 125
    monitor-enter p0

    if-nez p1, :cond_0

    .line 126
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/http/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 78
    monitor-enter p0

    if-nez p1, :cond_0

    .line 79
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
