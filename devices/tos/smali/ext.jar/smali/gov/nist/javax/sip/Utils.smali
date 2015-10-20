.class public Lgov/nist/javax/sip/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lgov/nist/javax/sip/UtilsExt;


# static fields
.field private static callIDCounter:I

.field private static counter:J

.field private static digester:Ljava/security/MessageDigest;

.field private static instance:Lgov/nist/javax/sip/Utils;

.field private static rand:Ljava/util/Random;

.field private static signature:Ljava/lang/String;

.field private static final toHex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-wide/16 v1, 0x0

    sput-wide v1, Lgov/nist/javax/sip/Utils;->counter:J

    .line 57
    new-instance v1, Lgov/nist/javax/sip/Utils;

    invoke-direct {v1}, Lgov/nist/javax/sip/Utils;-><init>()V

    sput-object v1, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    .line 63
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lgov/nist/javax/sip/Utils;->toHex:[C

    .line 68
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    .line 73
    sget-object v1, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    .line 74
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not intialize Digester "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lgov/nist/javax/sip/Utils;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    return-object v0
.end method

.method public static getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 193
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v2, "branchIds":Ljava/util/HashSet;
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    const v3, 0x186a0

    if-ge v0, v3, :cond_1

    .line 195
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "bid":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Duplicate Branch ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "bid":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Done!!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected static reduceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "newString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, "len":I
    const-string v3, ""

    .line 122
    .local v3, "retval":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 128
    :cond_2
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "pos":I
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 92
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 93
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 94
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method public declared-synchronized generateBranchId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    sget-object v3, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    sget-wide v5, Lgov/nist/javax/sip/Utils;->counter:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    sput-wide v7, Lgov/nist/javax/sip/Utils;->counter:J

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 175
    .local v1, "num":J
    sget-object v3, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 177
    .local v0, "bid":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "z9hG4bK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 173
    .end local v0    # "bid":[B
    .end local v1    # "num":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget v5, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lgov/nist/javax/sip/Utils;->callIDCounter:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget-object v5, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "date":Ljava/lang/String;
    sget-object v3, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 141
    .local v0, "cid":[B
    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "cidString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 137
    .end local v0    # "cid":[B
    .end local v1    # "cidString":Ljava/lang/String;
    .end local v2    # "date":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized generateTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    sget-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .locals 3
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;

    .prologue
    .line 183
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    .line 184
    .local v1, "topmostVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "branch":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
