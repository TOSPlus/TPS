.class public Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/utils/BitmapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconAnalyzedResult"
.end annotation


# instance fields
.field public isSquare:Z

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->rect:Landroid/graphics/Rect;

    .line 395
    iput-boolean v1, p0, Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;->isSquare:Z

    return-void
.end method
