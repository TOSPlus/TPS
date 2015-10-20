.class public Lcom/tencent/qrom/widget/GridView;
.super Landroid/widget/GridView;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/GridView$1;,
        Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;,
        Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;,
        Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    }
.end annotation


# instance fields
.field private bottomBitmap:Landroid/graphics/Bitmap;

.field private mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

.field private mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlurBottomHeight:I

.field private mBlurForBottomRect:Landroid/graphics/Rect;

.field private mBlurForTopRect:Landroid/graphics/Rect;

.field private mBlurPaint:Landroid/graphics/Paint;

.field private mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlurTopHeight:I

.field private mBottomBlurView:Landroid/view/View;

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForBottomBitmap:Landroid/graphics/Bitmap;

.field private mForBottomCanvas:Landroid/graphics/Canvas;

.field private mForContentRect:Landroid/graphics/Rect;

.field private mForTopBitmap:Landroid/graphics/Bitmap;

.field private mForTopCanvas:Landroid/graphics/Canvas;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumColmuns:I

.field private mRequestedNumColumns:I

.field private mTopBlurView:Landroid/view/View;

.field private topBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    .line 83
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->initHeaderGridView()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    .line 88
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->initHeaderGridView()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    .line 93
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->initHeaderGridView()V

    .line 94
    return-void
.end method

.method private blurInit()V
    .locals 5

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    .line 775
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v0, :cond_a

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 778
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurPaint:Landroid/graphics/Paint;

    .line 779
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 783
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 786
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 787
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 788
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 790
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 794
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 795
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 796
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 798
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 799
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 802
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 803
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 804
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 806
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurRecycle()V

    .line 808
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-lez v0, :cond_5

    .line 809
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_8

    .line 810
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 812
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 822
    :cond_5
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v0, :cond_6

    .line 823
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_9

    .line 824
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 826
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 836
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    if-nez v0, :cond_7

    .line 837
    new-instance v0, Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    .line 847
    :cond_7
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/GridView;->qromSetParameters(II)V

    .line 859
    :goto_2
    return-void

    .line 815
    :cond_8
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    div-int/lit8 v1, v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 817
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 818
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 829
    :cond_9
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    div-int/lit8 v1, v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 831
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 832
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 857
    :cond_a
    invoke-direct {p0, v3, v3}, Lcom/tencent/qrom/widget/GridView;->qromSetParameters(II)V

    goto :goto_2
.end method

.method private blurRecycle()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 870
    :cond_1
    return-void
.end method

.method private blurScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const v0, 0x3e99999a    # 0.3f

    .line 873
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 874
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 875
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 876
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private blurSetup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 743
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 744
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    .line 745
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    invoke-direct {v0, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 746
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 748
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_4

    .line 749
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 755
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/GridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 758
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v1, :cond_3

    .line 759
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    .line 760
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    invoke-direct {v0, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 761
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 763
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_5

    .line 764
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/GridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 772
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    return-void

    .line 752
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 767
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 79
    return-void
.end method

.method private qromInitQromScrollBarDrawable(Z)V
    .locals 12
    .param p1, "initialize"    # Z

    .prologue
    .line 971
    :try_start_0
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 974
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 975
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 976
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 977
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 979
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez v5, :cond_0

    .line 980
    const-string v2, "initScrollCache"

    .line 981
    .local v2, "methodName":Ljava/lang/String;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 982
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 983
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|initScrollCache"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 990
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 991
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 992
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 993
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 994
    .local v3, "scrollBar":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 995
    new-instance v9, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    invoke-direct {v9}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;-><init>()V

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 997
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|new QromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    .end local v3    # "scrollBar":Ljava/lang/Object;
    .end local v4    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v5    # "scrollCache":Ljava/lang/Object;
    .end local v6    # "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "scrollCacheField":Ljava/lang/reflect/Field;
    .end local v8    # "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "qrom.widget.ListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qromInitQromScrollBarDrawable|exp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private qromSetParameters(II)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1023
    :try_start_0
    const-string v9, "qrom.widget.ListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qromSetParameters|start="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",end="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1026
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1027
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1028
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1029
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1031
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 1032
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1033
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1034
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1035
    .local v3, "scrollBar":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 1036
    instance-of v9, v3, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    if-eqz v9, :cond_0

    .line 1037
    move-object v0, v3

    check-cast v0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    move-object v1, v0

    .line 1038
    .local v1, "drawable":Lcom/tencent/qrom/drawable/QromScrollBarDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getHeight()I

    move-result v9

    invoke-virtual {v1, v9, p1, p2}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromSetParameters(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v1    # "drawable":Lcom/tencent/qrom/drawable/QromScrollBarDrawable;
    .end local v3    # "scrollBar":Ljava/lang/Object;
    .end local v4    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v5    # "scrollCache":Ljava/lang/Object;
    .end local v6    # "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "scrollCacheField":Ljava/lang/reflect/Field;
    .end local v8    # "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v2

    .line 1043
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "qrom.widget.ListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qromSetParameters exp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/GridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/GridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 267
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    .line 268
    .local v1, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    iget-object v3, v1, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 269
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    .end local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_0
    return-void

    .line 266
    .restart local v1    # "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/GridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 216
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 183
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    if-nez v3, :cond_0

    .line 184
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add footer view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    new-instance v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;-><init>(Lcom/tencent/qrom/widget/GridView$1;)V

    .line 189
    .local v2, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    new-instance v1, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;-><init>(Lcom/tencent/qrom/widget/GridView;Landroid/content/Context;)V

    .line 190
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    iput-object p1, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->view:Landroid/view/View;

    .line 192
    iput-object v1, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 193
    iput-object p2, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 194
    iput-boolean p3, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->isSelectable:Z

    .line 195
    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    if-eqz v0, :cond_1

    .line 200
    check-cast v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 202
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/GridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 166
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 133
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    if-nez v3, :cond_0

    .line 134
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_0
    new-instance v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;-><init>(Lcom/tencent/qrom/widget/GridView$1;)V

    .line 139
    .local v2, "info":Lcom/tencent/qrom/widget/GridView$FixedViewInfo;
    new-instance v1, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;-><init>(Lcom/tencent/qrom/widget/GridView;Landroid/content/Context;)V

    .line 140
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    iput-object p1, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->view:Landroid/view/View;

    .line 142
    iput-object v1, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 143
    iput-object p2, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 144
    iput-boolean p3, v2, Lcom/tencent/qrom/widget/GridView$FixedViewInfo;->isSelectable:Z

    .line 145
    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    if-eqz v0, :cond_1

    .line 150
    check-cast v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 152
    :cond_1
    return-void
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 1016
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/GridView;->qromInitQromScrollBarDrawable(Z)V

    .line 1018
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public changeBottomBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 966
    return-void
.end method

.method public changeTopBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 962
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7a0b002a

    const/4 v3, 0x1

    .line 686
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v0, :cond_8

    .line 687
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 689
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 690
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 691
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 692
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 695
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 697
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 698
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 699
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 702
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 706
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 710
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_6

    .line 711
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->bottomBitmap:Landroid/graphics/Bitmap;

    .line 716
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->bottomBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 719
    :cond_4
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 720
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_7

    .line 721
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->topBitmap:Landroid/graphics/Bitmap;

    .line 726
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->topBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 727
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->topBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 733
    :cond_5
    :goto_2
    return-void

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->bottomBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 724
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/GridView;->topBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 731
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public enableBottomBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 931
    if-eqz p1, :cond_4

    .line 932
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/GridView;->setFooterBlank(Z)V

    .line 933
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 934
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    .line 935
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 936
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 938
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 939
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 946
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/GridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 948
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurInit()V

    .line 957
    :cond_2
    :goto_1
    return p1

    .line 942
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 951
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/GridView;->setFooterBlank(Z)V

    .line 952
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurInit()V

    .line 953
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/GridView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public enableTopBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 902
    if-eqz p1, :cond_4

    .line 903
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/GridView;->setHeaderBlankWithStatusbar(Z)V

    .line 904
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    if-lez v1, :cond_1

    .line 905
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    .line 906
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 907
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 909
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 910
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/GridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 918
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurInit()V

    .line 927
    :cond_2
    :goto_1
    return p1

    .line 913
    .restart local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 921
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/GridView;->setHeaderBlankWithStatusbar(Z)V

    .line 922
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurInit()V

    .line 923
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 924
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/GridView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public getFooterViewCount()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumColumns()I
    .locals 2

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 326
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    goto :goto_0
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1007
    const-string v0, "qrom.widget.ListView"

    const-string v1, "initializeScrollbars"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/GridView;->qromInitQromScrollBarDrawable(Z)V

    .line 1011
    invoke-super {p0, p1}, Landroid/widget/GridView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1012
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 738
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurRecycle()V

    .line 739
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 100
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mRequestedNumColumns:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 101
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mRequestedNumColumns:I

    iput v1, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    .line 103
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    if-gtz v1, :cond_1

    .line 104
    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/widget/GridView;->mNumColmuns:I

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 108
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    if-eqz v1, :cond_2

    .line 109
    check-cast v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->setNumColumns(I)V

    .line 111
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onSizeChanged(IIII)V

    .line 295
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurInit()V

    .line 298
    :cond_1
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 255
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const/4 v1, 0x1

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/tencent/qrom/widget/GridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 261
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 236
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const/4 v1, 0x1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/tencent/qrom/widget/GridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 242
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/tencent/qrom/widget/GridView;->blurSetup()V

    .line 280
    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 281
    :cond_0
    new-instance v0, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/qrom/widget/GridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, p1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 282
    .local v0, "hadapter":Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getNumColumns()I

    move-result v1

    .line 283
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 284
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;->setNumColumns(I)V

    .line 286
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    .end local v0    # "hadapter":Lcom/tencent/qrom/widget/GridView$HeaderFooterViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 288
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public setFooterBlank(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 880
    if-eqz p1, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurBottomHeight:I

    goto :goto_0
.end method

.method public setHeaderBlank(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 888
    if-eqz p1, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    .line 892
    :goto_0
    return-void

    .line 891
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderBlankWithStatusbar(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 895
    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/GridView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 320
    iput p1, p0, Lcom/tencent/qrom/widget/GridView;->mRequestedNumColumns:I

    .line 321
    return-void
.end method
