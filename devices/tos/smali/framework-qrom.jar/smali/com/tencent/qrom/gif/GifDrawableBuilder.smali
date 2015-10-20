.class public Lcom/tencent/qrom/gif/GifDrawableBuilder;
.super Ljava/lang/Object;
.source "GifDrawableBuilder.java"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mInputSource:Lcom/tencent/qrom/gif/InputSource;

.field private mIsRenderingTriggeredOnDraw:Z

.field private mOldDrawable:Lcom/tencent/qrom/gif/GifDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/qrom/gif/GifDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source is not set"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mOldDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/gif/InputSource;->build(Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)Lcom/tencent/qrom/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$UriSource;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qrom/gif/InputSource$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 155
    return-object p0
.end method

.method public from(Landroid/content/res/AssetFileDescriptor;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 119
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 120
    return-object p0
.end method

.method public from(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetName"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$AssetSource;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qrom/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 143
    return-object p0
.end method

.method public from(Landroid/content/res/Resources;I)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    .line 210
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 211
    return-object p0
.end method

.method public from(Ljava/io/File;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 165
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$FileSource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 166
    return-object p0
.end method

.method public from(Ljava/io/FileDescriptor;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 130
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 131
    return-object p0
.end method

.method public from(Ljava/io/InputStream;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 108
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$InputStreamSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$InputStreamSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 109
    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$FileSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 177
    return-object p0
.end method

.method public from(Ljava/nio/ByteBuffer;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 198
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 199
    return-object p0
.end method

.method public from([B)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 187
    new-instance v0, Lcom/tencent/qrom/gif/InputSource$ByteArraySource;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/gif/InputSource$ByteArraySource;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 188
    return-object p0
.end method

.method public setRenderingTriggeredOnDraw(Z)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 0
    .param p1, "isRenderingTriggeredOnDraw"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    .line 98
    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 80
    return-object p0
.end method

.method public threadPoolSize(I)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 68
    return-object p0
.end method

.method public with(Lcom/tencent/qrom/gif/GifDrawable;)Lcom/tencent/qrom/gif/GifDrawableBuilder;
    .locals 0
    .param p1, "drawable"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawableBuilder;->mOldDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    .line 55
    return-object p0
.end method
