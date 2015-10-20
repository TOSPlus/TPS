.class public Lgov/nist/core/NameValueList;
.super Ljava/lang/Object;
.source "NameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lgov/nist/core/NameValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x611edb317cd0ac13L


# instance fields
.field private hmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 280
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 216
    new-instance v1, Lgov/nist/core/NameValueList;

    invoke-direct {v1}, Lgov/nist/core/NameValueList;-><init>()V

    .line 217
    .local v1, "retval":Lgov/nist/core/NameValueList;
    iget-object v2, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0

    .line 222
    :cond_0
    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 287
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 295
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 94
    iget-object v3, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    iget-object v3, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 100
    check-cast v0, Lgov/nist/core/GenericObject;

    .line 101
    .local v0, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 105
    .end local v0    # "gobj":Lgov/nist/core/GenericObject;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 112
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v5

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 150
    check-cast v4, Lgov/nist/core/NameValueList;

    .line 152
    .local v4, "other":Lgov/nist/core/NameValueList;
    iget-object v6, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, v4, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 155
    iget-object v6, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v2

    .line 160
    .local v2, "nv1":Lgov/nist/core/NameValue;
    iget-object v6, v4, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/NameValue;

    .line 161
    .local v3, "nv2":Lgov/nist/core/NameValue;
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v3, v2}, Lgov/nist/core/NameValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 166
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "nv1":Lgov/nist/core/NameValue;
    .end local v3    # "nv2":Lgov/nist/core/NameValue;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 311
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->get(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 270
    .end local v0    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 267
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_1

    .line 268
    check-cast v0, Lgov/nist/core/GenericObject;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 174
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNameValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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
    .line 319
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameValue"    # Lgov/nist/core/NameValue;

    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lgov/nist/core/NameValue;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/NameValueList;->put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Lgov/nist/core/NameValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lgov/nist/core/NameValue;>;"
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 332
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 339
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .prologue
    .line 124
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 131
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
