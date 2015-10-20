.class public final enum Lcom/tencent/qrom/gif/GifError;
.super Ljava/lang/Enum;
.source "GifError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qrom/gif/GifError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qrom/gif/GifError;

.field public static final enum CLOSE_FAILED:Lcom/tencent/qrom/gif/GifError;

.field public static final enum DATA_TOO_BIG:Lcom/tencent/qrom/gif/GifError;

.field public static final enum EOF_TOO_SOON:Lcom/tencent/qrom/gif/GifError;

.field public static final enum IMAGE_DEFECT:Lcom/tencent/qrom/gif/GifError;

.field public static final enum IMG_NOT_CONFINED:Lcom/tencent/qrom/gif/GifError;

.field public static final enum INVALID_BYTE_BUFFER:Lcom/tencent/qrom/gif/GifError;

.field public static final enum INVALID_IMG_DIMS:Lcom/tencent/qrom/gif/GifError;

.field public static final enum INVALID_SCR_DIMS:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NOT_ENOUGH_MEM:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NOT_GIF_FILE:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NOT_READABLE:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NO_COLOR_MAP:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NO_ERROR:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NO_FRAMES:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NO_IMAG_DSCR:Lcom/tencent/qrom/gif/GifError;

.field public static final enum NO_SCRN_DSCR:Lcom/tencent/qrom/gif/GifError;

.field public static final enum OPEN_FAILED:Lcom/tencent/qrom/gif/GifError;

.field public static final enum READ_FAILED:Lcom/tencent/qrom/gif/GifError;

.field public static final enum REWIND_FAILED:Lcom/tencent/qrom/gif/GifError;

.field public static final enum UNKNOWN:Lcom/tencent/qrom/gif/GifError;

.field public static final enum WRONG_RECORD:Lcom/tencent/qrom/gif/GifError;


# instance fields
.field public final description:Ljava/lang/String;

.field errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NO_ERROR"

    const-string v2, "No error"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NO_ERROR:Lcom/tencent/qrom/gif/GifError;

    .line 21
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "OPEN_FAILED"

    const/16 v2, 0x65

    const-string v3, "Failed to open given input"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->OPEN_FAILED:Lcom/tencent/qrom/gif/GifError;

    .line 25
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "READ_FAILED"

    const/16 v2, 0x66

    const-string v3, "Failed to read from given input"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->READ_FAILED:Lcom/tencent/qrom/gif/GifError;

    .line 29
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NOT_GIF_FILE"

    const/16 v2, 0x67

    const-string v3, "Data is not in GIF format"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NOT_GIF_FILE:Lcom/tencent/qrom/gif/GifError;

    .line 33
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NO_SCRN_DSCR"

    const/16 v2, 0x68

    const-string v3, "No screen descriptor detected"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NO_SCRN_DSCR:Lcom/tencent/qrom/gif/GifError;

    .line 37
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NO_IMAG_DSCR"

    const/4 v2, 0x5

    const/16 v3, 0x69

    const-string v4, "No image descriptor detected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NO_IMAG_DSCR:Lcom/tencent/qrom/gif/GifError;

    .line 41
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NO_COLOR_MAP"

    const/4 v2, 0x6

    const/16 v3, 0x6a

    const-string v4, "Neither global nor local color map found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NO_COLOR_MAP:Lcom/tencent/qrom/gif/GifError;

    .line 45
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "WRONG_RECORD"

    const/4 v2, 0x7

    const/16 v3, 0x6b

    const-string v4, "Wrong record type detected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->WRONG_RECORD:Lcom/tencent/qrom/gif/GifError;

    .line 49
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "DATA_TOO_BIG"

    const/16 v2, 0x8

    const/16 v3, 0x6c

    const-string v4, "Number of pixels bigger than width * height"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->DATA_TOO_BIG:Lcom/tencent/qrom/gif/GifError;

    .line 53
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NOT_ENOUGH_MEM"

    const/16 v2, 0x9

    const/16 v3, 0x6d

    const-string v4, "Failed to allocate required memory"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NOT_ENOUGH_MEM:Lcom/tencent/qrom/gif/GifError;

    .line 57
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "CLOSE_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0x6e

    const-string v4, "Failed to close given input"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->CLOSE_FAILED:Lcom/tencent/qrom/gif/GifError;

    .line 61
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NOT_READABLE"

    const/16 v2, 0xb

    const/16 v3, 0x6f

    const-string v4, "Given file was not opened for read"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NOT_READABLE:Lcom/tencent/qrom/gif/GifError;

    .line 65
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "IMAGE_DEFECT"

    const/16 v2, 0xc

    const/16 v3, 0x70

    const-string v4, "Image is defective, decoding aborted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->IMAGE_DEFECT:Lcom/tencent/qrom/gif/GifError;

    .line 70
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "EOF_TOO_SOON"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const-string v4, "Image EOF detected before image complete"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->EOF_TOO_SOON:Lcom/tencent/qrom/gif/GifError;

    .line 74
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "NO_FRAMES"

    const/16 v2, 0xe

    const/16 v3, 0x3e8

    const-string v4, "No frames found, at least one frame required"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->NO_FRAMES:Lcom/tencent/qrom/gif/GifError;

    .line 78
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "INVALID_SCR_DIMS"

    const/16 v2, 0xf

    const/16 v3, 0x3e9

    const-string v4, "Invalid screen size, dimensions must be positive"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->INVALID_SCR_DIMS:Lcom/tencent/qrom/gif/GifError;

    .line 82
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "INVALID_IMG_DIMS"

    const/16 v2, 0x10

    const/16 v3, 0x3ea

    const-string v4, "Invalid image size, dimensions must be positive"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->INVALID_IMG_DIMS:Lcom/tencent/qrom/gif/GifError;

    .line 86
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "IMG_NOT_CONFINED"

    const/16 v2, 0x11

    const/16 v3, 0x3eb

    const-string v4, "Image size exceeds screen size"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->IMG_NOT_CONFINED:Lcom/tencent/qrom/gif/GifError;

    .line 90
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "REWIND_FAILED"

    const/16 v2, 0x12

    const/16 v3, 0x3ec

    const-string v4, "Input source rewind has failed, animation is stopped"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->REWIND_FAILED:Lcom/tencent/qrom/gif/GifError;

    .line 94
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "INVALID_BYTE_BUFFER"

    const/16 v2, 0x13

    const/16 v3, 0x3ed

    const-string v4, "Invalid and/or indirect byte buffer specified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->INVALID_BYTE_BUFFER:Lcom/tencent/qrom/gif/GifError;

    .line 98
    new-instance v0, Lcom/tencent/qrom/gif/GifError;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x14

    const/4 v3, -0x1

    const-string v4, "Unknown error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->UNKNOWN:Lcom/tencent/qrom/gif/GifError;

    .line 12
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/tencent/qrom/gif/GifError;

    sget-object v1, Lcom/tencent/qrom/gif/GifError;->NO_ERROR:Lcom/tencent/qrom/gif/GifError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qrom/gif/GifError;->OPEN_FAILED:Lcom/tencent/qrom/gif/GifError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qrom/gif/GifError;->READ_FAILED:Lcom/tencent/qrom/gif/GifError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qrom/gif/GifError;->NOT_GIF_FILE:Lcom/tencent/qrom/gif/GifError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/qrom/gif/GifError;->NO_SCRN_DSCR:Lcom/tencent/qrom/gif/GifError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->NO_IMAG_DSCR:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->NO_COLOR_MAP:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->WRONG_RECORD:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->DATA_TOO_BIG:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->NOT_ENOUGH_MEM:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->CLOSE_FAILED:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->NOT_READABLE:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->IMAGE_DEFECT:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->EOF_TOO_SOON:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->NO_FRAMES:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->INVALID_SCR_DIMS:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->INVALID_IMG_DIMS:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->IMG_NOT_CONFINED:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->REWIND_FAILED:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->INVALID_BYTE_BUFFER:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/qrom/gif/GifError;->UNKNOWN:Lcom/tencent/qrom/gif/GifError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/gif/GifError;->$VALUES:[Lcom/tencent/qrom/gif/GifError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    .line 108
    iput-object p4, p0, Lcom/tencent/qrom/gif/GifError;->description:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static fromCode(I)Lcom/tencent/qrom/gif/GifError;
    .locals 6
    .param p0, "code"    # I

    .prologue
    .line 112
    invoke-static {}, Lcom/tencent/qrom/gif/GifError;->values()[Lcom/tencent/qrom/gif/GifError;

    move-result-object v0

    .local v0, "arr$":[Lcom/tencent/qrom/gif/GifError;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 113
    .local v1, "err":Lcom/tencent/qrom/gif/GifError;
    iget v5, v1, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    if-ne v5, p0, :cond_0

    .line 118
    .end local v1    # "err":Lcom/tencent/qrom/gif/GifError;
    :goto_1
    return-object v1

    .line 112
    .restart local v1    # "err":Lcom/tencent/qrom/gif/GifError;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "err":Lcom/tencent/qrom/gif/GifError;
    :cond_1
    sget-object v4, Lcom/tencent/qrom/gif/GifError;->UNKNOWN:Lcom/tencent/qrom/gif/GifError;

    .line 117
    .local v4, "unk":Lcom/tencent/qrom/gif/GifError;
    iput p0, v4, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    move-object v1, v4

    .line 118
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qrom/gif/GifError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/tencent/qrom/gif/GifError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/gif/GifError;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qrom/gif/GifError;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/qrom/gif/GifError;->$VALUES:[Lcom/tencent/qrom/gif/GifError;

    invoke-virtual {v0}, [Lcom/tencent/qrom/gif/GifError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qrom/gif/GifError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    return v0
.end method

.method getFormattedDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "GifError %d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifError;->description:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
