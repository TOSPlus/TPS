.class public final Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorSource"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    .line 183
    return-void
.end method


# virtual methods
.method open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
