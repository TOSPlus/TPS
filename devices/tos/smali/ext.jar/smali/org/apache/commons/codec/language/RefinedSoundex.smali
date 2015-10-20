.class public Lorg/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

.field public static final US_ENGLISH_MAPPING:[C


# instance fields
.field private soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

    .line 43
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>([C)V

    .line 58
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0
    .param p1, "mapping"    # [C

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 71
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingCode(C)C
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v4, 0x0

    .line 184
    :goto_0
    return-object v4

    .line 160
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p1

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v3, "sBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    const/16 v2, 0x2a

    .line 171
    .local v2, "last":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    move-result v0

    .line 174
    .local v0, "current":C
    if-ne v0, v2, :cond_2

    .line 171
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_2
    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    :cond_3
    move v2, v0

    goto :goto_2

    .line 184
    .end local v0    # "current":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
