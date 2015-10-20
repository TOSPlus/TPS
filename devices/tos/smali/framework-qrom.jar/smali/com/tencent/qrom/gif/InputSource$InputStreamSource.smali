.class public final Lcom/tencent/qrom/gif/InputSource$InputStreamSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamSource"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$InputStreamSource;->inputStream:Ljava/io/InputStream;

    .line 204
    return-void
.end method


# virtual methods
.method open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$InputStreamSource;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
