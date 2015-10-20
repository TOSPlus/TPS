.class public Lorg/apache/http/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderIterator;


# instance fields
.field protected final allHeaders:Ljava/util/List;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "headers"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header list must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 95
    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 96
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "from"    # I

    .prologue
    const/4 v2, -0x1

    .line 109
    if-ge p1, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    iget-object v3, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 113
    .local v1, "to":I
    const/4 v0, 0x0

    .line 114
    .local v0, "found":Z
    :goto_1
    if-nez v0, :cond_2

    if-ge p1, v1, :cond_2

    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicListHeaderIterator;->filterHeader(I)Z

    move-result v0

    goto :goto_1

    .line 118
    :cond_2
    if-eqz v0, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/apache/http/message/BasicListHeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lorg/apache/http/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 158
    .local v0, "current":I
    if-gez v0, :cond_0

    .line 159
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 163
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 165
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    if-gez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No header to remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    iget v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 194
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 195
    return-void
.end method
