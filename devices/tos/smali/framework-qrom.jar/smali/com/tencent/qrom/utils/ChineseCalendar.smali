.class public final Lcom/tencent/qrom/utils/ChineseCalendar;
.super Ljava/util/GregorianCalendar;
.source "ChineseCalendar.java"


# static fields
.field public static final CALENDAR_TYPE_GREGORIAN:I = 0x1

.field public static final CALENDAR_TYPE_LUNAR:I = 0x0

.field public static final CHINESE_DATE:I = 0x323

.field public static final CHINESE_EARTHLY_BRANCH:I = 0x327

.field public static final CHINESE_HEAVENLY_STEM:I = 0x326

.field public static final CHINESE_MONTH:I = 0x322

.field public static final CHINESE_PRINCIPLE_TERM:I = 0x325

.field public static final CHINESE_SECTIONAL_TERM:I = 0x324

.field public static final CHINESE_TERM_OR_DATE:I = 0x378

.field public static final CHINESE_YEAR:I = 0x321

.field public static final CHINESE_ZODIAC:I = 0x328

.field private static final baseChineseDate:I = 0xb

.field private static final baseChineseMonth:I = 0xb

.field private static final baseChineseYear:I = 0x76c

.field private static final baseDate:I = 0x1

.field private static final baseIndex:I = 0x0

.field private static final baseMonth:I = 0x1

.field private static final baseYear:I = 0x76d

.field private static final bigLeapMonthYears:[I

.field private static final chineseMonths:[C

.field private static final daysInGregorianMonth:[C

.field private static final principleTermMap:[[C

.field private static final principleTermYear:[[C

.field private static final sectionalTermMap:[[C

.field private static final sectionalTermYear:[[C

.field private static final serialVersionUID:J = 0x8L


# instance fields
.field public animalNames:[Ljava/lang/String;

.field private areChineseFieldsComputed:Z

.field private areSolarTermsComputed:Z

.field public branchNames:[Ljava/lang/String;

.field private chineseDate:I

.field public chineseDateNames:[Ljava/lang/String;

.field private chineseMonth:I

.field public chineseMonthNames:[Ljava/lang/String;

.field public chineseWeekNames:[Ljava/lang/String;

.field private chineseYear:I

.field private lastSetChinese:Z

.field private leapName:Ljava/lang/String;

.field private principleTerm:I

.field public principleTermNames:[Ljava/lang/String;

.field private sectionalTerm:I

.field public sectionalTermNames:[Ljava/lang/String;

.field public stemNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x7

    const/16 v5, 0x8

    const/16 v4, 0x9

    const/16 v3, 0x1d

    .line 693
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->bigLeapMonthYears:[I

    .line 695
    new-array v0, v7, [[C

    const/4 v1, 0x0

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x21

    new-array v2, v2, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v1, v1, [C

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermMap:[[C

    .line 710
    new-array v0, v7, [[C

    const/4 v1, 0x0

    new-array v2, v4, [C

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [C

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    new-array v1, v4, [C

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    new-array v1, v4, [C

    fill-array-data v1, :array_15

    aput-object v1, v0, v5

    new-array v1, v4, [C

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v2, v4, [C

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [C

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermYear:[[C

    .line 717
    new-array v0, v7, [[C

    const/4 v1, 0x0

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_20

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_21

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermMap:[[C

    .line 742
    new-array v0, v7, [[C

    const/4 v1, 0x0

    new-array v2, v6, [C

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v6, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [C

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [C

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [C

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    new-array v1, v5, [C

    fill-array-data v1, :array_2c

    aput-object v1, v0, v6

    new-array v1, v5, [C

    fill-array-data v1, :array_2d

    aput-object v1, v0, v5

    new-array v1, v5, [C

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermYear:[[C

    .line 750
    new-array v0, v7, [C

    fill-array-data v0, :array_31

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInGregorianMonth:[C

    .line 751
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_32

    sput-object v0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    return-void

    .line 693
    nop

    :array_0
    .array-data 4
        0x6
        0xe
        0x13
        0x19
        0x21
        0x24
        0x26
        0x29
        0x2c
        0x34
        0x37
        0x4f
        0x75
        0x88
        0x93
        0x96
        0x9b
        0x9e
        0xb9
        0xc1
    .end array-data

    .line 695
    :array_1
    .array-data 2
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
    .end array-data

    :array_2
    .array-data 2
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x3s
        0x4s
        0x4s
        0x4s
        0x3s
        0x3s
        0x4s
        0x4s
        0x3s
        0x3s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x5s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x9s
        0x9s
        0x9s
        0x9s
        0x8s
        0x9s
        0x9s
        0x9s
        0x8s
        0x8s
        0x9s
        0x9s
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x8s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    .line 710
    nop

    :array_d
    .array-data 2
        0xds
        0x31s
        0x55s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_e
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_f
    .array-data 2
        0xds
        0x30s
        0x54s
        0x70s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_10
    .array-data 2
        0xds
        0x2ds
        0x4cs
        0x6cs
        0x8cs
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_11
    .array-data 2
        0xds
        0x2cs
        0x48s
        0x68s
        0x84s
        0xa8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_12
    .array-data 2
        0x5s
        0x21s
        0x44s
        0x60s
        0x7cs
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_13
    .array-data 2
        0x1ds
        0x39s
        0x55s
        0x78s
        0x94s
        0xb0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_14
    .array-data 2
        0xds
        0x30s
        0x4cs
        0x68s
        0x84s
        0xa8s
        0xc4s
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_15
    .array-data 2
        0x19s
        0x3cs
        0x58s
        0x78s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_16
    .array-data 2
        0x10s
        0x2cs
        0x4cs
        0x6cs
        0x90s
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_17
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_18
    .array-data 2
        0x11s
        0x35s
        0x55s
        0x7cs
        0x9cs
        0xbcs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    .line 717
    nop

    :array_19
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
    .end array-data

    :array_1a
    .array-data 2
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x12s
        0x13s
        0x13s
        0x13s
        0x12s
        0x12s
        0x13s
        0x13s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
    .end array-data

    :array_1b
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1c
    .array-data 2
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1d
    .array-data 2
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x17s
    .end array-data

    nop

    :array_20
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_21
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_22
    .array-data 2
        0x18s
        0x18s
        0x18s
        0x18s
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x17s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x16s
    .end array-data

    nop

    :array_24
    .array-data 2
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x16s
    .end array-data

    .line 742
    nop

    :array_25
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x71s
        0x95s
        0xb9s
        0xc9s
    .end array-data

    nop

    :array_26
    .array-data 2
        0x15s
        0x39s
        0x5ds
        0x7ds
        0xa1s
        0xc1s
        0xc9s
    .end array-data

    nop

    :array_27
    .array-data 2
        0x15s
        0x38s
        0x58s
        0x78s
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_28
    .array-data 2
        0x15s
        0x31s
        0x51s
        0x74s
        0x90s
        0xb0s
        0xc8s
        0xc9s
    .end array-data

    :array_29
    .array-data 2
        0x11s
        0x31s
        0x4ds
        0x70s
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2a
    .array-data 2
        0x1cs
        0x3cs
        0x58s
        0x74s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2b
    .array-data 2
        0x19s
        0x35s
        0x54s
        0x70s
        0x90s
        0xacs
        0xc8s
        0xc9s
    .end array-data

    :array_2c
    .array-data 2
        0x1ds
        0x39s
        0x59s
        0x78s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2d
    .array-data 2
        0x11s
        0x2ds
        0x49s
        0x6cs
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2e
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
    .end array-data

    :array_2f
    .array-data 2
        0x10s
        0x2cs
        0x50s
        0x70s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_30
    .array-data 2
        0x11s
        0x35s
        0x58s
        0x78s
        0x9cs
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    .line 750
    :array_31
    .array-data 2
        0x1fs
        0x1cs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
    .end array-data

    .line 751
    :array_32
    .array-data 2
        0x0s
        0x4s
        0xads
        0x8s
        0x5as
        0x1s
        0xd5s
        0x54s
        0xb4s
        0x9s
        0x64s
        0x5s
        0x59s
        0x45s
        0x95s
        0xas
        0xa6s
        0x4s
        0x55s
        0x24s
        0xads
        0x8s
        0x5as
        0x62s
        0xdas
        0x4s
        0xb4s
        0x5s
        0xb4s
        0x55s
        0x52s
        0xds
        0x94s
        0xas
        0x4as
        0x2as
        0x56s
        0x2s
        0x6ds
        0x71s
        0x6ds
        0x1s
        0xdas
        0x2s
        0xd2s
        0x52s
        0xa9s
        0x5s
        0x49s
        0xds
        0x2as
        0x45s
        0x2bs
        0x9s
        0x56s
        0x1s
        0xb5s
        0x20s
        0x6ds
        0x1s
        0x59s
        0x69s
        0xd4s
        0xas
        0xa8s
        0x5s
        0xa9s
        0x56s
        0xa5s
        0x4s
        0x2bs
        0x9s
        0x9es
        0x38s
        0xb6s
        0x8s
        0xecs
        0x74s
        0x6cs
        0x5s
        0xd4s
        0xas
        0xe4s
        0x6as
        0x52s
        0x5s
        0x95s
        0xas
        0x5as
        0x42s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xb4s
        0x22s
        0x6as
        0x5s
        0x52s
        0x75s
        0xc9s
        0xas
        0x52s
        0x5s
        0x35s
        0x55s
        0x4ds
        0xas
        0x5as
        0x2s
        0x5ds
        0x31s
        0xb5s
        0x2s
        0x6as
        0x8as
        0x68s
        0x5s
        0xa9s
        0xas
        0x8as
        0x6as
        0x2as
        0x5s
        0x2ds
        0x9s
        0xaas
        0x48s
        0x5as
        0x1s
        0xb5s
        0x9s
        0xb0s
        0x39s
        0x64s
        0x5s
        0x25s
        0x75s
        0x95s
        0xas
        0x96s
        0x4s
        0x4ds
        0x54s
        0xads
        0x4s
        0xdas
        0x4s
        0xd4s
        0x44s
        0xb4s
        0x5s
        0x54s
        0x85s
        0x52s
        0xds
        0x92s
        0xas
        0x56s
        0x6as
        0x56s
        0x2s
        0x6ds
        0x2s
        0x6as
        0x41s
        0xdas
        0x2s
        0xb2s
        0xa1s
        0xa9s
        0x5s
        0x49s
        0xds
        0xas
        0x6ds
        0x2as
        0x9s
        0x56s
        0x1s
        0xads
        0x50s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xd1s
        0x3as
        0xa8s
        0x5s
        0x29s
        0x85s
        0xa5s
        0xcs
        0x2as
        0x9s
        0x96s
        0x54s
        0xb6s
        0x8s
        0x6cs
        0x9s
        0x64s
        0x45s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x51s
        0x25s
        0x95s
        0xas
        0x2as
        0x72s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xacs
        0x52s
        0x6as
        0x5s
        0xd2s
        0xas
        0xa2s
        0x4as
        0x4as
        0x5s
        0x55s
        0x94s
        0x2ds
        0xas
        0x5as
        0x2s
        0x75s
        0x61s
        0xb5s
        0x2s
        0x6as
        0x3s
        0x61s
        0x45s
        0xa9s
        0xas
        0x4as
        0x5s
        0x25s
        0x25s
        0x2ds
        0x9s
        0x9as
        0x68s
        0xdas
        0x8s
        0xb4s
        0x9s
        0xa8s
        0x59s
        0x54s
        0x3s
        0xa5s
        0xas
        0x91s
        0x3as
        0x96s
        0x4s
        0xads
        0xb0s
        0xads
        0x4s
        0xdas
        0x4s
        0xf4s
        0x62s
        0xb4s
        0x5s
        0x54s
        0xbs
        0x44s
        0x5ds
        0x52s
        0xas
        0x95s
        0x4s
        0x55s
        0x22s
        0x6ds
        0x2s
        0x5as
        0x71s
        0xdas
        0x2s
        0xaas
        0x5s
        0xb2s
        0x55s
        0x49s
        0xbs
        0x4as
        0xas
        0x2ds
        0x39s
        0x36s
        0x1s
        0x6ds
        0x80s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xe9s
        0x6as
        0xa8s
        0x5s
        0x29s
        0xbs
        0x9as
        0x4cs
        0xaas
        0x8s
        0xb6s
        0x8s
        0xb4s
        0x38s
        0x6cs
        0x9s
        0x54s
        0x75s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x45s
        0x55s
        0x95s
        0xas
        0x9as
        0x4s
        0x55s
        0x44s
        0xb5s
        0x4s
        0x6as
        0x82s
        0x6as
        0x5s
        0xd2s
        0xas
        0x92s
        0x6as
        0x4as
        0x5s
        0x55s
        0xas
        0x2as
        0x4as
        0x5as
        0x2s
        0xb5s
        0x2s
        0xb2s
        0x31s
        0x69s
        0x3s
        0x31s
        0x73s
        0xa9s
        0xas
        0x4as
        0x5s
        0x2ds
        0x55s
        0x2ds
        0x9s
        0x5as
        0x1s
        0xd5s
        0x48s
        0xb4s
        0x9s
        0x68s
        0x89s
        0x54s
        0xbs
        0xa4s
        0xas
        0xa5s
        0x6as
        0x95s
        0x4s
        0xads
        0x8s
        0x6as
        0x44s
        0xdas
        0x4s
        0x74s
        0x5s
        0xb0s
        0x25s
        0x54s
        0x3s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 683
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->initResources(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "y"    # I
    .param p3, "m"    # I
    .param p4, "d"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 683
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->initResources(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 683
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    .line 43
    invoke-super {p0, p2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->initResources(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChinese"    # Z
    .param p3, "y"    # I
    .param p4, "m"    # I
    .param p5, "d"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 683
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->initResources(Landroid/content/Context;)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    const/16 v0, 0x321

    invoke-virtual {p0, v0, p3}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    .line 60
    const/16 v0, 0x322

    invoke-virtual {p0, v0, p4}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    .line 61
    const/16 v0, 0x323

    invoke-virtual {p0, v0, p5}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    goto :goto_0
.end method

.method private computeChineseFields()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xb

    .line 465
    invoke-virtual {p0, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->internalGet(I)I

    move-result v3

    .line 466
    .local v3, "gregorianYear":I
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/utils/ChineseCalendar;->internalGet(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 467
    .local v2, "gregorianMonth":I
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/utils/ChineseCalendar;->internalGet(I)I

    move-result v1

    .line 469
    .local v1, "gregorianDate":I
    const/16 v9, 0x76d

    if-lt v3, v9, :cond_0

    const/16 v9, 0x834

    if-le v3, v9, :cond_1

    .line 518
    :cond_0
    return-void

    .line 474
    :cond_1
    const/16 v9, 0x7d0

    if-ge v3, v9, :cond_2

    .line 475
    const/16 v8, 0x76d

    .line 476
    .local v8, "startYear":I
    const/4 v7, 0x1

    .line 477
    .local v7, "startMonth":I
    const/4 v6, 0x1

    .line 478
    .local v6, "startDate":I
    const/16 v9, 0x76c

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 479
    iput v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 480
    iput v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 490
    :goto_0
    const/4 v0, 0x0

    .line 492
    .local v0, "daysDiff":I
    move v4, v8

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 493
    invoke-static {v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    add-int/lit16 v0, v0, 0x16e

    .line 492
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "daysDiff":I
    .end local v4    # "i":I
    .end local v6    # "startDate":I
    .end local v7    # "startMonth":I
    .end local v8    # "startYear":I
    :cond_2
    const/16 v8, 0x7d0

    .line 483
    .restart local v8    # "startYear":I
    const/4 v7, 0x1

    .line 484
    .restart local v7    # "startMonth":I
    const/4 v6, 0x1

    .line 485
    .restart local v6    # "startDate":I
    const/16 v9, 0x7cf

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 486
    iput v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 487
    const/16 v9, 0x19

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 496
    .restart local v0    # "daysDiff":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit16 v0, v0, 0x16d

    goto :goto_2

    .line 500
    :cond_4
    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_5

    .line 501
    add-int/lit8 v9, v4, -0x1

    invoke-static {v3, v9}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v9

    add-int/2addr v0, v9

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 504
    :cond_5
    add-int/lit8 v9, v1, -0x1

    add-int/2addr v0, v9

    .line 506
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 508
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    .line 509
    .local v5, "lastDate":I
    :goto_4
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    if-le v9, v5, :cond_0

    .line 510
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 511
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->nextChineseMonth(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 512
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    if-ne v9, v11, :cond_6

    .line 513
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 515
    :cond_6
    iget v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    goto :goto_4
.end method

.method private computeGregorianFields()V
    .locals 12

    .prologue
    const/16 v11, 0x834

    const/16 v10, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 401
    iget v5, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 402
    .local v5, "y":I
    iget v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 403
    .local v4, "m":I
    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 404
    .local v1, "d":I
    iput-boolean v8, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 405
    iput-boolean v8, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 406
    iput-boolean v9, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 408
    const/16 v6, 0x76c

    if-ge v5, v6, :cond_3

    .line 409
    const/16 v5, 0x76b

    .line 414
    :cond_0
    :goto_0
    const/16 v6, -0xc

    if-ge v4, v6, :cond_4

    .line 415
    const/16 v4, -0xc

    .line 421
    :cond_1
    :goto_1
    if-ge v1, v8, :cond_5

    .line 422
    const/4 v1, 0x1

    .line 427
    :cond_2
    :goto_2
    mul-int/lit16 v6, v5, 0x2710

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    add-int v2, v6, v1

    .line 428
    .local v2, "dateint":I
    const v6, 0x121ef17

    if-ge v2, v6, :cond_6

    .line 429
    const/16 v6, 0x76d

    invoke-virtual {p0, v6, v9, v8}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    .line 430
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 461
    :goto_3
    invoke-direct {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeChineseFields()V

    .line 462
    return-void

    .line 410
    .end local v2    # "dateint":I
    :cond_3
    if-le v5, v11, :cond_0

    .line 411
    const/16 v5, 0x835

    goto :goto_0

    .line 416
    :cond_4
    if-le v4, v10, :cond_1

    .line 417
    const/16 v4, 0xc

    goto :goto_1

    .line 423
    :cond_5
    const/16 v6, 0x1e

    if-le v1, v6, :cond_2

    .line 424
    const/16 v1, 0x1e

    goto :goto_2

    .line 431
    .restart local v2    # "dateint":I
    :cond_6
    const v6, 0x14073f1

    if-le v2, v6, :cond_7

    .line 432
    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-virtual {p0, v11, v6, v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    .line 433
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_3

    .line 435
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v10, :cond_8

    .line 436
    const/16 v4, 0xc

    .line 438
    :cond_8
    invoke-static {v5, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    .line 439
    .local v3, "days":I
    if-nez v3, :cond_9

    .line 440
    neg-int v4, v4

    .line 441
    invoke-static {v5, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    .line 443
    :cond_9
    if-le v1, v3, :cond_a

    .line 444
    move v1, v3

    .line 446
    :cond_a
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    .line 447
    invoke-direct {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeChineseFields()V

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "amount":I
    :cond_b
    :goto_4
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    if-ne v6, v5, :cond_c

    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    if-eq v6, v4, :cond_d

    .line 451
    :cond_c
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v7, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v6, v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v6

    add-int/2addr v0, v6

    .line 452
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v7, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v6, v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->nextChineseMonth(II)I

    move-result v6

    iput v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 453
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    if-ne v6, v8, :cond_b

    .line 454
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    goto :goto_4

    .line 457
    :cond_d
    iget v6, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    sub-int v6, v1, v6

    add-int/2addr v0, v6

    .line 459
    const/4 v6, 0x5

    invoke-super {p0, v6, v0}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_3
.end method

.method private computeIfNeed(I)V
    .locals 3
    .param p1, "field"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 377
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    if-nez v0, :cond_0

    .line 379
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 380
    invoke-direct {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeChineseFields()V

    .line 381
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 382
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 383
    iput-boolean v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseTermsField(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    if-nez v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeSolarTerms()V

    .line 387
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeGregorianFields()V

    .line 392
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 393
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 394
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 395
    iput-boolean v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0
.end method

.method private computeSolarTerms()V
    .locals 3

    .prologue
    .line 521
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->internalGet(I)I

    move-result v1

    .line 522
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->internalGet(I)I

    move-result v0

    .line 524
    .local v0, "gregorianMonth":I
    const/16 v2, 0x76d

    if-lt v1, v2, :cond_0

    const/16 v2, 0x834

    if-le v1, v2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-static {v1, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTerm(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTerm:I

    .line 528
    invoke-static {v1, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTerm(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTerm:I

    goto :goto_0
.end method

.method public static daysInChineseMonth(II)I
    .locals 8
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    const/4 v7, 0x1

    .line 597
    add-int/lit16 v5, p0, -0x76c

    add-int/lit8 v2, v5, 0x0

    .line 598
    .local v2, "index":I
    const/4 v4, 0x0

    .line 599
    .local v4, "v":I
    const/4 v3, 0x0

    .line 600
    .local v3, "l":I
    const/16 v0, 0x1e

    .line 601
    .local v0, "d":I
    if-gt v7, p1, :cond_1

    const/16 v5, 0x8

    if-gt p1, v5, :cond_1

    .line 602
    sget-object v5, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 603
    add-int/lit8 v3, p1, -0x1

    .line 604
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 605
    const/16 v0, 0x1d

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p1, :cond_2

    const/16 v5, 0xc

    if-gt p1, v5, :cond_2

    .line 608
    sget-object v5, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 609
    add-int/lit8 v3, p1, -0x9

    .line 610
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 611
    const/16 v0, 0x1d

    goto :goto_0

    .line 614
    :cond_2
    sget-object v5, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 615
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 616
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 617
    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :cond_3
    const/16 v0, 0x1d

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/tencent/qrom/utils/ChineseCalendar;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 621
    sget-object v5, Lcom/tencent/qrom/utils/ChineseCalendar;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 622
    const/16 v0, 0x1e

    .line 623
    goto :goto_0

    .line 620
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static daysInGregorianMonth(II)I
    .locals 2
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 546
    sget-object v1, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInGregorianMonth:[C

    aget-char v0, v1, p1

    .line 547
    .local v0, "d":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 550
    :cond_0
    return v0
.end method

.method public static getChineseLeapMonth(I)I
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 329
    add-int/lit16 v2, p0, -0x76c

    add-int/lit8 v0, v2, 0x0

    .line 330
    .local v0, "index":I
    sget-object v2, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v1, v2, v3

    .line 331
    .local v1, "v":I
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 332
    return v1
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 666
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 668
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0e01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    .line 673
    return-void
.end method

.method private isChineseField(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 349
    sparse-switch p1, :sswitch_data_0

    .line 361
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 359
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_0
        0x323 -> :sswitch_0
        0x324 -> :sswitch_0
        0x325 -> :sswitch_0
        0x326 -> :sswitch_0
        0x327 -> :sswitch_0
        0x328 -> :sswitch_0
        0x378 -> :sswitch_0
    .end sparse-switch
.end method

.method private isChineseTermsField(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 366
    sparse-switch p1, :sswitch_data_0

    .line 372
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 370
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x324 -> :sswitch_0
        0x325 -> :sswitch_0
        0x378 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isGregorianLeapYear(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "isLeap":Z
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 536
    :cond_0
    rem-int/lit8 v1, p0, 0x64

    if-nez v1, :cond_1

    .line 537
    const/4 v0, 0x0

    .line 539
    :cond_1
    rem-int/lit16 v1, p0, 0x190

    if-nez v1, :cond_2

    .line 540
    const/4 v0, 0x1

    .line 542
    :cond_2
    return v0
.end method

.method public static nextChineseMonth(II)I
    .locals 5
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 632
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 633
    .local v1, "n":I
    if-lez p1, :cond_0

    .line 634
    add-int/lit16 v3, p0, -0x76c

    add-int/lit8 v0, v3, 0x0

    .line 635
    .local v0, "index":I
    sget-object v3, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 636
    .local v2, "v":I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 637
    if-ne v2, p1, :cond_0

    .line 638
    neg-int v1, p1

    .line 641
    .end local v0    # "index":I
    .end local v2    # "v":I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 642
    const/4 v1, 0x1

    .line 644
    :cond_1
    return v1
.end method

.method public static previousChineseMonth(II)I
    .locals 3
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 648
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 649
    .local v1, "n":I
    if-gez p1, :cond_2

    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 657
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 658
    const/16 v1, 0xc

    .line 660
    :cond_1
    return v1

    .line 652
    :cond_2
    invoke-static {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChineseLeapMonth(I)I

    move-result v0

    .line 653
    .local v0, "leapMonth":I
    if-ne v0, v1, :cond_0

    .line 654
    neg-int v1, v0

    goto :goto_0
.end method

.method public static principleTerm(II)I
    .locals 6
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 577
    add-int/lit8 p1, p1, 0x1

    .line 578
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 579
    :cond_0
    const/4 v2, 0x0

    .line 593
    :cond_1
    :goto_0
    return v2

    .line 581
    :cond_2
    const/4 v0, 0x0

    .line 582
    .local v0, "index":I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .line 583
    .local v1, "ry":I
    :goto_1
    sget-object v3, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_3
    sget-object v3, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 587
    .local v2, "term":I
    const/16 v3, 0xab

    if-ne v1, v3, :cond_4

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 588
    const/16 v2, 0x15

    .line 590
    :cond_4
    const/16 v3, 0xb5

    if-ne v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 591
    const/16 v2, 0x15

    goto :goto_0
.end method

.method public static sectionalTerm(II)I
    .locals 7
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    const/4 v6, 0x4

    .line 554
    add-int/lit8 p1, p1, 0x1

    .line 555
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 556
    :cond_0
    const/4 v2, 0x0

    .line 573
    :cond_1
    :goto_0
    return v2

    .line 558
    :cond_2
    const/4 v0, 0x0

    .line 559
    .local v0, "index":I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .line 560
    .local v1, "ry":I
    :goto_1
    sget-object v3, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_3
    sget-object v3, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 564
    .local v2, "term":I
    const/16 v3, 0x79

    if-ne v1, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 565
    const/4 v2, 0x5

    .line 567
    :cond_4
    const/16 v3, 0x84

    if-ne v1, v3, :cond_5

    if-ne p1, v6, :cond_5

    .line 568
    const/4 v2, 0x5

    .line 570
    :cond_5
    const/16 v3, 0xc2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 571
    const/4 v2, 0x6

    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 137
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 139
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 140
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 141
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :pswitch_0
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 202
    :cond_2
    iput-boolean v5, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 203
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 204
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 205
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0

    .line 156
    :pswitch_1
    if-eqz p2, :cond_0

    .line 158
    if-gez p2, :cond_3

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 160
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->previousChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_2

    .line 164
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    .end local v0    # "i":I
    :pswitch_2
    if-eqz p2, :cond_0

    .line 172
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 184
    .local v1, "maxDate":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 185
    if-gez p2, :cond_5

    .line 186
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 187
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    if-gez v2, :cond_4

    .line 188
    iput v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 184
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_5
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 192
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    if-le v2, v1, :cond_4

    .line 193
    iput v5, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    goto :goto_4

    .line 145
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public get(I)I
    .locals 4
    .param p1, "field"    # I

    .prologue
    const/4 v3, 0x5

    .line 95
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 97
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 101
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :sswitch_0
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    goto :goto_0

    .line 105
    :sswitch_1
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    goto :goto_0

    .line 107
    :sswitch_2
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 109
    :sswitch_3
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTerm:I

    goto :goto_0

    .line 111
    :sswitch_4
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTerm:I

    goto :goto_0

    .line 113
    :sswitch_5
    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 116
    :sswitch_6
    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 119
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x324

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 120
    const/16 v0, 0x324

    .local v0, "option":I
    goto :goto_0

    .line 121
    .end local v0    # "option":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x325

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 122
    const/16 v0, 0x325

    .restart local v0    # "option":I
    goto :goto_0

    .line 123
    .end local v0    # "option":I
    :cond_2
    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 124
    const/16 v0, 0x322

    .restart local v0    # "option":I
    goto :goto_0

    .line 126
    .end local v0    # "option":I
    :cond_3
    const/16 v0, 0x323

    .restart local v0    # "option":I
    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_1
        0x323 -> :sswitch_2
        0x324 -> :sswitch_3
        0x325 -> :sswitch_4
        0x326 -> :sswitch_5
        0x327 -> :sswitch_6
        0x328 -> :sswitch_6
        0x378 -> :sswitch_7
    .end sparse-switch
.end method

.method public getActualMaximum(I)I
    .locals 4
    .param p1, "field"    # I

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 308
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 322
    :goto_0
    return v1

    .line 311
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :pswitch_0
    const/4 v1, 0x1

    invoke-super {p0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    .line 315
    :pswitch_1
    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    invoke-static {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChineseLeapMonth(I)I

    move-result v0

    .line 316
    .local v0, "leapMonth":I
    if-lez v0, :cond_1

    .line 317
    const/16 v1, 0xc

    goto :goto_0

    .line 319
    :cond_1
    const/16 v1, 0xb

    goto :goto_0

    .line 322
    .end local v0    # "leapMonth":I
    :pswitch_2
    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChinesMonths(I)[Ljava/lang/String;
    .locals 5
    .param p1, "year"    # I

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-static {p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChineseLeapMonth(I)I

    move-result v0

    .line 337
    .local v0, "leapMonth":I
    iget-object v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 338
    .local v1, "months":[Ljava/lang/String;
    if-lez v0, :cond_0

    .line 339
    iget-object v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 340
    iget-object v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 342
    iget-object v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    :cond_0
    return-object v1
.end method

.method public getChinese(I)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x2

    .line 247
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 249
    sparse-switch p1, :sswitch_data_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x326

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x327

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 253
    :sswitch_1
    iget v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->leapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 260
    :sswitch_3
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 262
    :sswitch_4
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 264
    :sswitch_5
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->stemNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 266
    :sswitch_6
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->branchNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 268
    :sswitch_7
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->animalNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 270
    :sswitch_8
    iget-object v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 272
    :sswitch_9
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_8
        0x321 -> :sswitch_0
        0x322 -> :sswitch_1
        0x323 -> :sswitch_2
        0x324 -> :sswitch_3
        0x325 -> :sswitch_4
        0x326 -> :sswitch_5
        0x327 -> :sswitch_6
        0x328 -> :sswitch_7
        0x378 -> :sswitch_9
    .end sparse-switch
.end method

.method public getChineseDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x322

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleChineseDateString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x322

    .line 284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimpleGregorianDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public roll(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 213
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 214
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 215
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    .line 244
    :goto_0
    return-void

    .line 219
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 237
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :pswitch_0
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 240
    :cond_2
    iput-boolean v5, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 241
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 242
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 243
    iput-boolean v4, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0

    .line 224
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 225
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    .end local v0    # "i":I
    :pswitch_2
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 230
    .local v1, "maxDate":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_1

    .line 231
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 232
    iget v2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    if-le v2, v1, :cond_3

    .line 233
    iput v5, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    .line 230
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public set(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->computeIfNeed(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/tencent/qrom/utils/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    iput p2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseYear:I

    .line 84
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    .line 89
    :goto_1
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areFieldsSet:Z

    .line 90
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 91
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->areSolarTermsComputed:Z

    .line 92
    return-void

    .line 76
    :pswitch_1
    iput p2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseMonth:I

    goto :goto_0

    .line 79
    :pswitch_2
    iput p2, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 87
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/ChineseCalendar;->lastSetChinese:Z

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x325

    const/16 v4, 0x324

    const/4 v3, 0x2

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getSimpleGregorianDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChineseDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x328

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
