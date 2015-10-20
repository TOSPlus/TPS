.class public Lorg/apache/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-gez p2, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol major version number must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    if-gez p3, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 92
    iput p2, p0, Lorg/apache/http/ProtocolVersion;->major:I

    .line 93
    iput p3, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    .line 94
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lorg/apache/http/ProtocolVersion;)I
    .locals 4
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Protocol version must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Versions for different protocols cannot be compared. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    sub-int v0, v1, v2

    .line 231
    .local v0, "delta":I
    if-nez v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    .line 234
    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    if-ne p0, p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    instance-of v3, p1, Lorg/apache/http/ProtocolVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 178
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 180
    check-cast v0, Lorg/apache/http/ProtocolVersion;

    .line 182
    .local v0, "that":Lorg/apache/http/ProtocolVersion;
    iget-object v3, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/http/ProtocolVersion;->major:I

    iget v4, v0, Lorg/apache/http/ProtocolVersion;->major:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    iget v4, v0, Lorg/apache/http/ProtocolVersion;->minor:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_0

    .line 146
    .end local p0    # "this":Lorg/apache/http/ProtocolVersion;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/http/ProtocolVersion;
    :cond_0
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final getMajor()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lorg/apache/http/ProtocolVersion;)Z
    .locals 2
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lessEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 275
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 276
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 277
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 278
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 279
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
