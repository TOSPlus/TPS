.class public Lgov/nist/core/MultiValueMapImpl;
.super Ljava/lang/Object;
.source "MultiValueMapImpl.java"

# interfaces
.implements Lgov/nist/core/MultiValueMap;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgov/nist/core/MultiValueMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b55a57dcb730ffdL


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 72
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 73
    .local v2, "pairs":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 74
    .local v3, "pairsIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v0, v4

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 77
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 79
    .end local v0    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v1    # "list":Ljava/util/ArrayList;
    :cond_0
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 80
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    .line 101
    .local v0, "obj":Lgov/nist/core/MultiValueMapImpl;
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 102
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 110
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    const/4 v5, 0x0

    .line 56
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 58
    .local v2, "pairs":Ljava/util/Set;
    if-nez v2, :cond_0

    move v4, v5

    .line 68
    :goto_0
    return v4

    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    .local v3, "pairsIterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v0, v4

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 65
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v1    # "list":Ljava/util/ArrayList;
    :cond_2
    move v4, v5

    .line 68
    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .restart local v0    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p1, "mapToPut":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "k":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v3, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "item":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 127
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 130
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 8

    .prologue
    .line 83
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v5, "returnList":Ljava/util/ArrayList;
    iget-object v7, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 86
    .local v3, "pairs":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 87
    .local v4, "pairsIterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v1, v7

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v2, v7

    check-cast v2, Ljava/util/ArrayList;

    .line 91
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 92
    .local v6, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 93
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "ii":I
    .end local v1    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v6    # "values":[Ljava/lang/Object;
    :cond_1
    return-object v5
.end method
