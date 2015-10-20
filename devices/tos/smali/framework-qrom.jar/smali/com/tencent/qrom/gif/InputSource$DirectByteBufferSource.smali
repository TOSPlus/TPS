.class public final Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectByteBufferSource"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    return-void
.end method


# virtual methods
.method open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
