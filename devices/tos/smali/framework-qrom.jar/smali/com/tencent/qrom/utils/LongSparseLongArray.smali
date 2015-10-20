.class public Lcom/tencent/qrom/utils/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/qrom/utils/LongSparseLongArray;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/tencent/qrom/utils/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 48
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    .line 49
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    .line 51
    return-void
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .param p1, "minNeededSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-static {p1}, Lcom/tencent/qrom/utils/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 217
    .local v0, "n":I
    new-array v1, v0, [J

    .line 218
    .local v1, "nkeys":[J
    new-array v2, v0, [J

    .line 220
    .local v2, "nvalues":[J
    iget-object v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    iget-object v4, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    iget-object v4, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    .line 224
    iput-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    .line 225
    return-void
.end method


# virtual methods
.method public append(JJ)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 199
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/utils/LongSparseLongArray;->put(JJ)V

    .line 212
    :goto_0
    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    .line 205
    .local v0, "pos":I
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 206
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/utils/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 210
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 211
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    .line 192
    return-void
.end method

.method public clone()Lcom/tencent/qrom/utils/LongSparseLongArray;
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "clone":Lcom/tencent/qrom/utils/LongSparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/qrom/utils/LongSparseLongArray;

    move-object v1, v0

    .line 58
    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    .line 59
    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tencent/qrom/utils/LongSparseLongArray;->clone()Lcom/tencent/qrom/utils/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 4
    .param p1, "key"    # J

    .prologue
    .line 92
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 94
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/utils/LongSparseLongArray;->removeAt(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qrom/utils/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .locals 4
    .param p1, "key"    # J
    .param p3, "valueIfKeyNotFound"    # J

    .prologue
    .line 79
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 81
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 84
    .end local p3    # "valueIfKeyNotFound":J
    :goto_0
    return-wide p3

    .restart local p3    # "valueIfKeyNotFound":J
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aget-wide p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 184
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 180
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .locals 5
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 114
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 116
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 121
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 122
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/utils/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 125
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 131
    iget-object v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 132
    iget v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    iget v3, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    .line 106
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public valueAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/qrom/utils/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
