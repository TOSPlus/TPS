.class public Lcom/tencent/qrom/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field public final reason:Lcom/tencent/qrom/gif/GifError;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 26
    invoke-static {p1}, Lcom/tencent/qrom/gif/GifError;->fromCode(I)Lcom/tencent/qrom/gif/GifError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifIOException;-><init>(Lcom/tencent/qrom/gif/GifError;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/tencent/qrom/gif/GifError;)V
    .locals 1
    .param p1, "reason"    # Lcom/tencent/qrom/gif/GifError;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/tencent/qrom/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifIOException;->reason:Lcom/tencent/qrom/gif/GifError;

    .line 22
    return-void
.end method

.method static fromCode(I)Lcom/tencent/qrom/gif/GifIOException;
    .locals 1
    .param p0, "nativeErrorCode"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/tencent/qrom/gif/GifError;->NO_ERROR:Lcom/tencent/qrom/gif/GifError;

    iget v0, v0, Lcom/tencent/qrom/gif/GifError;->errorCode:I

    if-ne p0, v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/qrom/gif/GifIOException;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/gif/GifIOException;-><init>(I)V

    goto :goto_0
.end method
