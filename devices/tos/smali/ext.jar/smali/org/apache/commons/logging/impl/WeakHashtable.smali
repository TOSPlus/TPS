.class public final Lorg/apache/commons/logging/impl/WeakHashtable;
.super Ljava/util/Hashtable;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    }
.end annotation


# static fields
.field private static final MAX_CHANGES_BEFORE_PURGE:I = 0x64

.field private static final PARTIAL_PURGE_COUNT:I = 0xa


# instance fields
.field private changeCount:I

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 133
    return-void
.end method

.method private purge()V
    .locals 3

    .prologue
    .line 321
    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    .line 323
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .local v0, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v0, :cond_0

    .line 324
    # invokes: Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->access$400(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    .end local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    return-void
.end method

.method private purgeOne()V
    .locals 3

    .prologue
    .line 335
    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    .line 336
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .line 337
    .local v0, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v0, :cond_0

    .line 338
    # invokes: Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->access$400(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    monitor-exit v2

    .line 341
    return-void

    .line 340
    .end local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 142
    .local v0, "referenced":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 150
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 9

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 158
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 159
    .local v4, "referencedEntries":Ljava/util/Set;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v6, "unreferencedEntries":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 163
    .local v5, "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    # invokes: Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v3

    .line 164
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 165
    .local v7, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 166
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v7, v8}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 167
    .local v0, "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v0    # "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    return-object v6
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 178
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 179
    .local v0, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 288
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 6

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 205
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 206
    .local v3, "referencedKeys":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v4, "unreferencedKeys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 209
    .local v2, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    # invokes: Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "keyValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 211
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1    # "keyValue":Ljava/lang/Object;
    .end local v2    # "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    :cond_1
    return-object v4
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 187
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 188
    .local v0, "enumer":Ljava/util/Enumeration;
    new-instance v1, Lorg/apache/commons/logging/impl/WeakHashtable$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/logging/impl/WeakHashtable$1;-><init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null keys are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_0
    if-nez p2, :cond_1

    .line 226
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null values are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_1
    iget v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 233
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 240
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 241
    .local v1, "result":Ljava/lang/Object;
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 242
    .local v0, "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 236
    .end local v0    # "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    iget v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_2

    .line 237
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .param p1, "t"    # Ljava/util/Map;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 251
    .local v1, "entrySet":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/logging/impl/WeakHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "entrySet":Ljava/util/Set;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected rehash()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 313
    invoke-super {p0}, Ljava/util/Hashtable;->rehash()V

    .line 314
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 272
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 273
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 280
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 296
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 304
    invoke-super {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 263
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
