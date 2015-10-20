.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final A_ADUP:I = 0x1

.field private static final A_ADUP_SAVE:I = 0x2

.field private static final A_ADUP_STAGC:I = 0x3

.field private static final A_ANAME:I = 0x4

.field private static final A_ANAME_ADUP:I = 0x5

.field private static final A_ANAME_ADUP_STAGC:I = 0x6

.field private static final A_AVAL:I = 0x7

.field private static final A_AVAL_STAGC:I = 0x8

.field private static final A_CDATA:I = 0x9

.field private static final A_CMNT:I = 0xa

.field private static final A_DECL:I = 0xb

.field private static final A_EMPTYTAG:I = 0xc

.field private static final A_ENTITY:I = 0xd

.field private static final A_ENTITY_START:I = 0xe

.field private static final A_ETAG:I = 0xf

.field private static final A_GI:I = 0x10

.field private static final A_GI_STAGC:I = 0x11

.field private static final A_LT:I = 0x12

.field private static final A_LT_PCDATA:I = 0x13

.field private static final A_MINUS:I = 0x14

.field private static final A_MINUS2:I = 0x15

.field private static final A_MINUS3:I = 0x16

.field private static final A_PCDATA:I = 0x17

.field private static final A_PI:I = 0x18

.field private static final A_PITARGET:I = 0x19

.field private static final A_PITARGET_PI:I = 0x1a

.field private static final A_SAVE:I = 0x1b

.field private static final A_SKIP:I = 0x1c

.field private static final A_SP:I = 0x1d

.field private static final A_STAGC:I = 0x1e

.field private static final A_UNGET:I = 0x1f

.field private static final A_UNSAVE_PCDATA:I = 0x20

.field private static final S_ANAME:I = 0x1

.field private static final S_APOS:I = 0x2

.field private static final S_AVAL:I = 0x3

.field private static final S_BB:I = 0x4

.field private static final S_BBC:I = 0x5

.field private static final S_BBCD:I = 0x6

.field private static final S_BBCDA:I = 0x7

.field private static final S_BBCDAT:I = 0x8

.field private static final S_BBCDATA:I = 0x9

.field private static final S_CDATA:I = 0xa

.field private static final S_CDATA2:I = 0xb

.field private static final S_CDSECT:I = 0xc

.field private static final S_CDSECT1:I = 0xd

.field private static final S_CDSECT2:I = 0xe

.field private static final S_COM:I = 0xf

.field private static final S_COM2:I = 0x10

.field private static final S_COM3:I = 0x11

.field private static final S_COM4:I = 0x12

.field private static final S_DECL:I = 0x13

.field private static final S_DECL2:I = 0x14

.field private static final S_DONE:I = 0x15

.field private static final S_EMPTYTAG:I = 0x16

.field private static final S_ENT:I = 0x17

.field private static final S_EQ:I = 0x18

.field private static final S_ETAG:I = 0x19

.field private static final S_GI:I = 0x1a

.field private static final S_NCR:I = 0x1b

.field private static final S_PCDATA:I = 0x1c

.field private static final S_PI:I = 0x1d

.field private static final S_PITARGET:I = 0x1e

.field private static final S_QUOT:I = 0x1f

.field private static final S_STAGC:I = 0x20

.field private static final S_TAG:I = 0x21

.field private static final S_TAGWS:I = 0x22

.field private static final S_XNCR:I = 0x23

.field private static final debug_actionnames:[Ljava/lang/String;

.field private static final debug_statenames:[Ljava/lang/String;

.field private static statetable:[I


# instance fields
.field private theCurrentColumn:I

.field private theCurrentLine:I

.field private theLastColumn:I

.field private theLastLine:I

.field theNextState:I

.field theOutputBuffer:[C

.field private thePublicid:Ljava/lang/String;

.field theSize:I

.field theState:I

.field private theSystemid:Ljava/lang/String;

.field theWinMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    .line 248
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "A_ADUP"

    aput-object v1, v0, v4

    const-string v1, "A_ADUP_SAVE"

    aput-object v1, v0, v5

    const-string v1, "A_ADUP_STAGC"

    aput-object v1, v0, v6

    const-string v1, "A_ANAME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "A_ANAME_ADUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "A_ANAME_ADUP_STAGC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A_AVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "A_AVAL_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "A_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A_CMNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "A_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "A_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "A_ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "A_ENTITY_START"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "A_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "A_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "A_GI_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "A_LT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "A_LT_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "A_MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "A_MINUS2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "A_MINUS3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "A_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "A_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "A_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "A_PITARGET_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "A_SAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "A_SKIP"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "A_SP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "A_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "A_UNGET"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "A_UNSAVE_PCDATA"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_actionnames:[Ljava/lang/String;

    .line 249
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "S_ANAME"

    aput-object v1, v0, v4

    const-string v1, "S_APOS"

    aput-object v1, v0, v5

    const-string v1, "S_AVAL"

    aput-object v1, v0, v6

    const-string v1, "S_BB"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "S_BBC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S_BBCD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "S_BBCDA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S_BBCDAT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "S_BBCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "S_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "S_CDATA2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S_CDSECT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S_CDSECT1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "S_CDSECT2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "S_COM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "S_COM2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "S_COM3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S_COM4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S_DECL2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "S_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "S_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "S_ENT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "S_EQ"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "S_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "S_NCR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "S_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "S_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "S_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "S_QUOT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "S_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "S_TAG"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "S_TAGWS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "S_XNCR"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_statenames:[Ljava/lang/String;

    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    .line 265
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    .line 634
    .local v2, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 635
    .local v1, "r":Ljava/io/Reader;
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 636
    .local v3, "w":Ljava/io/Writer;
    new-instance v0, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v0, v3}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    .line 637
    .local v0, "pw":Lorg/ccil/cowan/tagsoup/PYXWriter;
    invoke-interface {v2, v1, v0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 638
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 639
    return-void
.end method

.method private mark()V
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    .line 599
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 600
    return-void
.end method

.method private static nicechar(I)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # I

    .prologue
    .line 643
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string v0, "\\n"

    .line 645
    :goto_0
    return-object v0

    .line 644
    :cond_0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 611
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x14

    if-lt v1, v2, :cond_1

    .line 612
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 614
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v1, v3, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 615
    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 624
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 625
    return-void

    .line 619
    :cond_2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 620
    .local v0, "newOutputBuffer":[C
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    goto :goto_0
.end method

.method private unread(Ljava/io/PushbackReader;I)V
    .locals 1
    .param p1, "r"    # Ljava/io/PushbackReader;
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    return-object v0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 305
    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 10
    .param p1, "r0"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 314
    const/16 v7, 0x1c

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 316
    instance-of v7, p1, Ljava/io/PushbackReader;

    if-eqz v7, :cond_5

    move-object v6, p1

    .line 317
    check-cast v6, Ljava/io/PushbackReader;

    .line 326
    .local v6, "r":Ljava/io/PushbackReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v4

    .line 327
    .local v4, "firstChar":I
    const v7, 0xfeff

    if-eq v4, v7, :cond_0

    invoke-direct {p0, v6, v4}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 329
    :cond_0
    :goto_1
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_1b

    .line 330
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 333
    .local v1, "ch":I
    const/16 v7, 0x80

    if-lt v1, v7, :cond_1

    const/16 v7, 0x9f

    if-gt v1, v7, :cond_1

    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v8, v1, -0x80

    aget v1, v7, v8

    .line 335
    :cond_1
    const/16 v7, 0xd

    if-ne v1, v7, :cond_2

    .line 336
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 337
    const/16 v7, 0xa

    if-eq v1, v7, :cond_2

    .line 338
    invoke-direct {p0, v6, v1}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 339
    const/16 v1, 0xa

    .line 343
    :cond_2
    const/16 v7, 0xa

    if-ne v1, v7, :cond_7

    .line 344
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    .line 345
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 351
    :goto_2
    const/16 v7, 0x20

    if-ge v1, v7, :cond_3

    const/16 v7, 0xa

    if-eq v1, v7, :cond_3

    const/16 v7, 0x9

    if-eq v1, v7, :cond_3

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 354
    :cond_3
    const/4 v0, 0x0

    .line 355
    .local v0, "action":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 356
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v8, v8, v5

    if-eq v7, v8, :cond_8

    .line 357
    if-eqz v0, :cond_9

    .line 371
    :cond_4
    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 585
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t process state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 319
    .end local v0    # "action":I
    .end local v1    # "ch":I
    .end local v4    # "firstChar":I
    .end local v5    # "i":I
    .end local v6    # "r":Ljava/io/PushbackReader;
    :cond_5
    instance-of v7, p1, Ljava/io/BufferedReader;

    if-eqz v7, :cond_6

    .line 320
    new-instance v6, Ljava/io/PushbackReader;

    invoke-direct {v6, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    .line 323
    .end local v6    # "r":Ljava/io/PushbackReader;
    :cond_6
    new-instance v6, Ljava/io/PushbackReader;

    new-instance v7, Ljava/io/BufferedReader;

    const/16 v8, 0xc8

    invoke-direct {v7, p1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v6, v7}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    .line 348
    .restart local v1    # "ch":I
    .restart local v4    # "firstChar":I
    :cond_7
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_2

    .line 360
    .restart local v0    # "action":I
    .restart local v5    # "i":I
    :cond_8
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-nez v7, :cond_a

    .line 361
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x2

    aget v0, v7, v8

    .line 362
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 355
    :cond_9
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 364
    :cond_a
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-ne v7, v1, :cond_9

    .line 365
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x2

    aget v0, v7, v8

    .line 366
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    goto :goto_4

    .line 373
    :pswitch_0
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTMLScanner can\'t cope with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 377
    :pswitch_1
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 378
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 587
    :goto_5
    :pswitch_2
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    goto/16 :goto_1

    .line 381
    :pswitch_3
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 382
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 383
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_5

    .line 386
    :pswitch_4
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 387
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 388
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_5

    .line 391
    :pswitch_5
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 392
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_5

    .line 395
    :pswitch_6
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 396
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 397
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    goto :goto_5

    .line 400
    :pswitch_7
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 401
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 402
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 403
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_5

    .line 406
    :pswitch_8
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 407
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_5

    .line 410
    :pswitch_9
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 411
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 412
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_5

    .line 415
    :pswitch_a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 417
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_b

    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 418
    :cond_b
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 419
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 422
    :pswitch_b
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 423
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 424
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 427
    :pswitch_c
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 428
    int-to-char v2, v1

    .line 430
    .local v2, "ch1":C
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_c

    const/16 v7, 0x23

    if-ne v2, v7, :cond_c

    .line 431
    const/16 v7, 0x1b

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 432
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 435
    :cond_c
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_e

    const/16 v7, 0x78

    if-eq v2, v7, :cond_d

    const/16 v7, 0x58

    if-ne v2, v7, :cond_e

    .line 436
    :cond_d
    const/16 v7, 0x23

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 437
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 440
    :cond_e
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_f

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 441
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 444
    :cond_f
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_10

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 445
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 448
    :cond_10
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v8, 0x23

    if-ne v7, v8, :cond_12

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "abcdefABCDEF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    .line 449
    :cond_11
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 455
    :cond_12
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x1

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    .line 456
    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->getEntity()I

    move-result v3

    .line 458
    .local v3, "ent":I
    if-eqz v3, :cond_18

    .line 459
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 460
    const/16 v7, 0x80

    if-lt v3, v7, :cond_13

    const/16 v7, 0x9f

    if-gt v3, v7, :cond_13

    .line 461
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v8, v3, -0x80

    aget v3, v7, v8

    .line 463
    :cond_13
    const/16 v7, 0x20

    if-ge v3, v7, :cond_15

    .line 465
    const/16 v3, 0x20

    .line 481
    :goto_6
    const/16 v7, 0x3b

    if-eq v1, v7, :cond_14

    .line 482
    invoke-direct {p0, v6, v1}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 483
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 490
    :cond_14
    :goto_7
    const/16 v7, 0x1c

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    goto/16 :goto_5

    .line 467
    :cond_15
    const v7, 0xd800

    if-lt v3, v7, :cond_16

    const v7, 0xdfff

    if-gt v3, v7, :cond_16

    .line 469
    const/4 v3, 0x0

    goto :goto_6

    .line 471
    :cond_16
    const v7, 0xffff

    if-gt v3, v7, :cond_17

    .line 473
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_6

    .line 477
    :cond_17
    const/high16 v7, 0x10000

    sub-int/2addr v3, v7

    .line 478
    shr-int/lit8 v7, v3, 0xa

    const v8, 0xd800

    add-int/2addr v7, v8

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 479
    and-int/lit16 v7, v3, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_6

    .line 487
    :cond_18
    invoke-direct {p0, v6, v1}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 488
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_7

    .line 493
    .end local v2    # "ch1":C
    .end local v3    # "ent":I
    :pswitch_d
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    .line 494
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 497
    :pswitch_e
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->decl([CII)V

    .line 498
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 501
    :pswitch_f
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 502
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 505
    :pswitch_10
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 506
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 507
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_5

    .line 510
    :pswitch_11
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 511
    const/16 v7, 0x3c

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 512
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 515
    :pswitch_12
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 516
    const/16 v7, 0x3c

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 517
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 518
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 521
    :pswitch_13
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 522
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 523
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 526
    :pswitch_14
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 527
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->cmnt([CII)V

    .line 528
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 531
    :pswitch_15
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 532
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 535
    :pswitch_16
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 536
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 539
    :pswitch_17
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 540
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 543
    :pswitch_18
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 544
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 545
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 548
    :pswitch_19
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 549
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 552
    :pswitch_1a
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 553
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 554
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto/16 :goto_5

    .line 557
    :pswitch_1b
    invoke-direct {p0, v1, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 562
    :pswitch_1c
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_5

    .line 565
    :pswitch_1d
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 566
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 569
    :pswitch_1e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 571
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v7, :cond_19

    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 572
    :cond_19
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 573
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stage([CII)V

    goto/16 :goto_5

    .line 576
    :pswitch_1f
    invoke-direct {p0, v6, v1}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 577
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto/16 :goto_5

    .line 580
    :pswitch_20
    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v7, :cond_1a

    iget v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 581
    :cond_1a
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 582
    const/4 v7, 0x0

    iput v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_5

    .line 589
    .end local v0    # "action":I
    .end local v1    # "ch":I
    .end local v5    # "i":I
    :cond_1b
    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p2, v7, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    .line 590
    return-void

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_1e
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 1

    .prologue
    .line 608
    const/16 v0, 0xa

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    return-void
.end method
