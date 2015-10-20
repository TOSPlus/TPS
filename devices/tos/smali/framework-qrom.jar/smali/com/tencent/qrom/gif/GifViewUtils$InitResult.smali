.class Lcom/tencent/qrom/gif/GifViewUtils$InitResult;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitResult"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mCachePercent:I

.field final mFreezesAnimation:Z

.field final mSourceResId:I


# direct methods
.method constructor <init>(IIZI)V
    .locals 0
    .param p1, "sourceResId"    # I
    .param p2, "backgroundResId"    # I
    .param p3, "freezesAnimation"    # Z
    .param p4, "cachePercent"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mSourceResId:I

    .line 115
    iput p2, p0, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mBackgroundResId:I

    .line 116
    iput-boolean p3, p0, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mFreezesAnimation:Z

    .line 117
    iput p4, p0, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;->mCachePercent:I

    .line 118
    return-void
.end method
