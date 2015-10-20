.class public final Lorg/apache/http/params/BasicHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "BasicHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x6257f1e0a974410fL


# instance fields
.field private parameters:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/params/BasicHttpParams;

    .line 138
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    .line 139
    return-object v0
.end method

.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 132
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    .line 133
    return-object v0
.end method

.method protected copyParams(Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "target"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 149
    iget-object v2, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "me":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "param":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .end local v0    # "param":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/http/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method public setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 103
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
