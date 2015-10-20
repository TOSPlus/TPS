.class public Lgov/nist/core/DuplicateNameValueList;
.super Ljava/lang/Object;
.source "DuplicateNameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4ddf7598584c3ad8L


# instance fields
.field private nameValueMap:Lgov/nist/core/MultiValueMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgov/nist/core/MultiValueMapImpl",
            "<",
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    .line 54
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->clear()V

    .line 235
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 189
    new-instance v1, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v1}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    .line 190
    .local v1, "retval":Lgov/nist/core/DuplicateNameValueList;
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/core/DuplicateNameValueList;->setSeparator(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v2}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v1, v2}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0

    .line 195
    :cond_0
    return-object v1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 181
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 74
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v3}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v3}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 80
    check-cast v0, Lgov/nist/core/GenericObject;

    .line 81
    .local v0, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 85
    .end local v0    # "gobj":Lgov/nist/core/GenericObject;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 92
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v5

    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 129
    check-cast v4, Lgov/nist/core/DuplicateNameValueList;

    .line 131
    .local v4, "other":Lgov/nist/core/DuplicateNameValueList;
    iget-object v6, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v6}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v6

    iget-object v7, v4, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v7}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 134
    iget-object v6, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v6}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 139
    .local v2, "nv1":Ljava/util/Collection;
    iget-object v6, v4, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v6, v0}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "nv2":Ljava/util/Collection;
    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 145
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "nv1":Ljava/util/Collection;
    .end local v3    # "nv2":Ljava/util/Collection;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getNameValue(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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
    .line 213
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 229
    .end local v0    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 226
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_1

    .line 227
    check-cast v0, Lgov/nist/core/GenericObject;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
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
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 153
    .local v0, "nv":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .line 156
    .end local v0    # "nv":Ljava/util/Collection;
    :goto_0
    return-object v0

    .restart local v0    # "nv":Ljava/util/Collection;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNameValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

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
    .line 204
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lgov/nist/core/NameValue;

    .prologue
    .line 242
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 246
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .prologue
    .line 104
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 105
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 114
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

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
    .line 254
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
