.class public final Lcom/tencent/qrom/gif/InputSource$ByteArraySource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArraySource"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$ByteArraySource;->bytes:[B

    .line 84
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
    .line 88
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$ByteArraySource;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openByteArray([BZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
