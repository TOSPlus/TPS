.class public Lorg/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private stringEncoder:Lorg/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/StringEncoder;)V
    .locals 0
    .param p1, "stringEncoder"    # Lorg/apache/commons/codec/StringEncoder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    .line 53
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "compareCode":I
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v4, p1}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 74
    .local v2, "s1":Ljava/lang/Comparable;
    iget-object v4, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v4, p2}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 75
    .local v3, "s2":Ljava/lang/Comparable;
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    .end local v2    # "s1":Ljava/lang/Comparable;
    .end local v3    # "s2":Ljava/lang/Comparable;
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "ee":Lorg/apache/commons/codec/EncoderException;
    const/4 v0, 0x0

    goto :goto_0
.end method
