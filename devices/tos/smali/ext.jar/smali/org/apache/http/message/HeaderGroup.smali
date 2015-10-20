.class public Lorg/apache/http/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/HeaderGroup;

    .line 291
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    .line 292
    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 244
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 245
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 250
    .end local v0    # "header":Lorg/apache/http/Header;
    :goto_1
    return v2

    .line 243
    .restart local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public copy()Lorg/apache/http/message/HeaderGroup;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 285
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    iget-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-object v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 147
    .local v0, "headers":[Lorg/apache/http/Header;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 148
    const/4 v3, 0x0

    .line 159
    :goto_0
    return-object v3

    .line 149
    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 150
    aget-object v3, v0, v5

    goto :goto_0

    .line 152
    :cond_1
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 153
    .local v2, "valueBuffer":Lorg/apache/http/util/CharArrayBuffer;
    aget-object v3, v0, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 155
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 156
    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 197
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    .end local v0    # "header":Lorg/apache/http/Header;
    :goto_1
    return-object v0

    .line 195
    .restart local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "headersFound":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 177
    iget-object v3, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 178
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/http/Header;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/http/Header;

    check-cast v3, [Lorg/apache/http/Header;

    return-object v3
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 215
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 216
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    .end local v0    # "header":Lorg/apache/http/Header;
    :goto_1
    return-object v0

    .line 214
    .restart local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 221
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public iterator()Lorg/apache/http/HeaderIterator;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 125
    if-nez p1, :cond_1

    .line 131
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateHeader(Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 107
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 108
    .local v0, "current":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "current":Lorg/apache/http/Header;
    :cond_2
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
