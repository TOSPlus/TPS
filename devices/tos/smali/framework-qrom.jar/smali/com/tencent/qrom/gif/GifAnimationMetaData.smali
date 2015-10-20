.class public Lcom/tencent/qrom/gif/GifAnimationMetaData;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/gif/GifAnimationMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4eff56d4f010140dL


# instance fields
.field private final mDuration:I

.field private final mHeight:I

.field private final mImageCount:I

.field private final mLoopCount:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/tencent/qrom/gif/GifAnimationMetaData$1;

    invoke-direct {v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mHeight:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mWidth:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/qrom/gif/GifAnimationMetaData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/qrom/gif/GifAnimationMetaData$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V
    .locals 1
    .param p1, "gifInfoHandle"    # Lcom/tencent/qrom/gif/GifInfoHandle;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    .line 157
    invoke-virtual {p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    .line 158
    invoke-virtual {p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->recycle()V

    .line 159
    iget v0, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mWidth:I

    .line 160
    iget v0, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mHeight:I

    .line 161
    iget v0, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    iput v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 140
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openByteArray([BZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 128
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mHeight:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mWidth:I

    return v0
.end method

.method public isAnimated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget v1, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 216
    iget v2, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    if-nez v2, :cond_1

    const-string v0, "Infinity"

    .line 217
    .local v0, "loopCount":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifAnimationMetaData;->isAnimated()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "suffix":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 216
    .end local v0    # "loopCount":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 228
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mLoopCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/tencent/qrom/gif/GifAnimationMetaData;->mImageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void
.end method
