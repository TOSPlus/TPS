.class public Lcom/tencent/qrom/widget/QromGridView;
.super Lcom/tencent/qrom/widget/AbsListView;
.source "QromGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/QromGridView$1;,
        Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;,
        Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;,
        Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field private static isFooterflag:Z


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

.field private mColumnWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForBottomBitmap:Landroid/graphics/Bitmap;

.field private mForBottomCanvas:Landroid/graphics/Canvas;

.field private mForContentRect:Landroid/graphics/Rect;

.field private mForTopBitmap:Landroid/graphics/Bitmap;

.field private mForTopCanvas:Landroid/graphics/Canvas;

.field private mGravity:I

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopBlurView:Landroid/view/View;

.field private mVerticalSpacing:I

.field private topBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3037
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/widget/QromGridView;->isFooterflag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/QromGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/QromGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 117
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    .line 119
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 120
    iput v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    .line 125
    iput-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 126
    iput-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 128
    const v6, 0x800003

    iput v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mGravity:I

    .line 130
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mTempRect:Landroid/graphics/Rect;

    .line 2380
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2382
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 143
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 148
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setHorizontalSpacing(I)V

    .line 150
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 152
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->setVerticalSpacing(I)V

    .line 154
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 155
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 156
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->setStretchMode(I)V

    .line 159
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 160
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    .line 161
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setColumnWidth(I)V

    .line 164
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 165
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/QromGridView;->setNumColumns(I)V

    .line 167
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 168
    if-ltz v3, :cond_2

    .line 169
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->setGravity(I)V

    .line 172
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->initHeaderGridView()V

    .line 175
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/tencent/qrom/widget/QromGridView;->isFooterflag:Z

    return v0
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 882
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 883
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 886
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 888
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 909
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 910
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 913
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 915
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v1

    .line 2256
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 2260
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2263
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2264
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2265
    .local v2, "delta":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2268
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2270
    :cond_0
    if-gez v2, :cond_1

    .line 2272
    const/4 v2, 0x0

    .line 2291
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2292
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 2295
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 2276
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2277
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2279
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2282
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2285
    :cond_4
    if-lez v2, :cond_1

    .line 2287
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private blurInit()V
    .locals 5

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    .line 2933
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v0, :cond_a

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 2936
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurPaint:Landroid/graphics/Paint;

    .line 2937
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2941
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    .line 2943
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2944
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2945
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2946
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2948
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 2949
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    .line 2951
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2952
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2953
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2954
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2956
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 2957
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    .line 2959
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2960
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2961
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2962
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2964
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurRecycle()V

    .line 2966
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-lez v0, :cond_5

    .line 2967
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_8

    .line 2968
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 2970
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 2980
    :cond_5
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v0, :cond_6

    .line 2981
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_9

    .line 2982
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 2984
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 2994
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    if-nez v0, :cond_7

    .line 2995
    new-instance v0, Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    .line 3005
    :cond_7
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->qromSetParameters(II)V

    .line 3017
    :goto_2
    return-void

    .line 2973
    :cond_8
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    div-int/lit8 v1, v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 2975
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 2976
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 2987
    :cond_9
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    div-int/lit8 v1, v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 2989
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 2990
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 3015
    :cond_a
    invoke-direct {p0, v3, v3}, Lcom/tencent/qrom/widget/QromGridView;->qromSetParameters(II)V

    goto :goto_2
.end method

.method private blurRecycle()V
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3026
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3028
    :cond_1
    return-void
.end method

.method private blurScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const v0, 0x3e99999a    # 0.3f

    .line 3031
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3032
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3033
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3034
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

    .line 2901
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 2902
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    .line 2903
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    invoke-direct {v0, v3, v1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2904
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2905
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2906
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_4

    .line 2907
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2913
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/QromGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2916
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v1, :cond_3

    .line 2917
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    .line 2918
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    invoke-direct {v0, v3, v1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2919
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2920
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 2921
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_5

    .line 2922
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2928
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/QromGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2930
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    return-void

    .line 2910
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2925
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1644
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1771
    :goto_0
    return v2

    .line 1648
    :cond_0
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1649
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->layoutChildren()V

    .line 1652
    :cond_1
    const/4 v1, 0x0

    .line 1653
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1655
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    .line 1656
    sparse-switch p1, :sswitch_data_0

    .line 1755
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1756
    goto :goto_0

    .line 1658
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1659
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/QromGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1664
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1665
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/QromGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1670
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1671
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1672
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1673
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1678
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1679
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1680
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1687
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1688
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1689
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->keyPressed()V

    .line 1692
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1698
    :sswitch_5
    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1699
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1700
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1701
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1702
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1708
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1709
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1710
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1711
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1716
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1717
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1718
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1724
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1725
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1730
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1731
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1759
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/QromGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1760
    goto/16 :goto_0

    .line 1763
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1765
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1767
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1769
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1656
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 687
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 688
    .local v6, "lastPosition":I
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 690
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 693
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 695
    .local v4, "lastBottom":I
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottom:I

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 699
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 701
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 702
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 706
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 707
    :cond_0
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 709
    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 712
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 713
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 716
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 719
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 723
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 726
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 728
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 731
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 734
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 737
    .local v6, "start":I
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottom:I

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 741
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 742
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 743
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 744
    .local v3, "lastBottom":I
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 748
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 749
    :cond_0
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 751
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 755
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 756
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 759
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 762
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 766
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 1035
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedHorizontalSpacing:I

    .line 1036
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    .line 1037
    .local v4, "stretchMode":I
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedColumnWidth:I

    .line 1038
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 1040
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1041
    if-lez v1, :cond_2

    .line 1043
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1054
    :goto_0
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 1055
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1058
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 1066
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 1069
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    .line 1070
    const/4 v0, 0x1

    .line 1073
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1105
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    .line 1047
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    goto :goto_0

    .line 1051
    :cond_3
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    goto :goto_0

    .line 1061
    :pswitch_0
    iput v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    .line 1062
    iput v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1076
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    .line 1077
    iput v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1082
    :pswitch_2
    iput v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    .line 1083
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 1084
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1087
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1093
    :pswitch_3
    iput v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    .line 1094
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1095
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1098
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1073
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottom:I

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mTop:I

    sub-int v0, v3, v4

    .line 371
    .local v0, "end":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 372
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 375
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 376
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 377
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 378
    move-object v1, v2

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 385
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 386
    goto :goto_0

    .line 388
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/tencent/qrom/widget/QromGridView;->setVisibleRangeHint(II)V

    .line 389
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 514
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 515
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 517
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 518
    .local v0, "invertedPosition":I
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 780
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    .line 781
    .local v9, "selectedPosition":I
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 782
    .local v4, "numColumns":I
    iget v11, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 785
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 787
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 788
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 799
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/tencent/qrom/widget/QromGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 800
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/tencent/qrom/widget/QromGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 803
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 805
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 807
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 808
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/tencent/qrom/widget/QromGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 809
    invoke-direct {p0, v5, v10, v1}, Lcom/tencent/qrom/widget/QromGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 811
    iget-boolean v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 812
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 813
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 814
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 822
    :goto_2
    return-object v8

    .line 790
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 792
    .local v3, "invertedSelection":I
    iget v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 793
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    .line 803
    goto :goto_1

    .line 816
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 817
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 818
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    .line 504
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 505
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 506
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 509
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 510
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 525
    .local v10, "selectedPosition":I
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 526
    .local v4, "numColumns":I
    iget v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 529
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 531
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 532
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 540
    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 541
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/tencent/qrom/widget/QromGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 543
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 544
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 546
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 548
    .local v6, "referenceView":Landroid/view/View;
    iget-boolean v13, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 549
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 550
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->pinToBottom(I)V

    .line 551
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 552
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 564
    :goto_2
    return-object v9

    .line 534
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 536
    .local v3, "invertedSelection":I
    iget v13, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 537
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    .line 543
    goto :goto_1

    .line 554
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/tencent/qrom/widget/QromGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 556
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 557
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 558
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 559
    invoke-direct/range {p0 .. p1}, Lcom/tencent/qrom/widget/QromGridView;->pinToTop(I)V

    .line 560
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 561
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 622
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 625
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 627
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 628
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 636
    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 639
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 641
    iget-object v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 643
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 644
    const/4 v8, 0x0

    .line 681
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 630
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 632
    .local v3, "invertedSelection":I
    iget v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 633
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 636
    goto :goto_1

    .line 647
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 652
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 653
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 655
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v2

    .line 658
    .local v2, "childCount":I
    if-lez v2, :cond_4

    .line 659
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isNeedBounce()Z

    move-result v10

    if-nez v10, :cond_4

    .line 660
    invoke-direct {p0, v6, v9, v2}, Lcom/tencent/qrom/widget/QromGridView;->correctTooHigh(III)V

    .line 676
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 678
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 679
    goto :goto_2

    .line 664
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 665
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 666
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 668
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v2

    .line 669
    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isNeedBounce()Z

    move-result v10

    if-nez v10, :cond_4

    .line 671
    invoke-direct {p0, v6, v9, v2}, Lcom/tencent/qrom/widget/QromGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 681
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 469
    .local v0, "end":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 470
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 473
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 475
    invoke-direct {p0, p1, p2, v5}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 477
    move-object v1, v2

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 482
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 484
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 485
    goto :goto_0

    .line 487
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 488
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 491
    :cond_3
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/tencent/qrom/widget/QromGridView;->setVisibleRangeHint(II)V

    .line 492
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 837
    move v0, p1

    .line 838
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 839
    sub-int/2addr v0, p2

    .line 841
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 854
    move v0, p1

    .line 855
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 856
    add-int/2addr v0, p2

    .line 858
    :cond_0
    return v0
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 2394
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setClipChildren(Z)V

    .line 2395
    return-void
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2002
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v0

    .line 2003
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2008
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2009
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2010
    .local v3, "rowStart":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2016
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2037
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2012
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2013
    .restart local v2    # "rowEnd":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 2020
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2035
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2020
    goto :goto_1

    .line 2023
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2026
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2029
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2032
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2035
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1439
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1442
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1454
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1449
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/QromGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1452
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1454
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 18
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    .line 394
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    .line 396
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->isLayoutRtl()Z

    move-result v14

    .line 401
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v12

    :goto_0
    sub-int v5, v3, v1

    .line 409
    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    .line 410
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 421
    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v17, 0x0

    .line 423
    .local v17, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->shouldShowSelector()Z

    move-result v11

    .line 424
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 425
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 427
    .local v16, "selectedPosition":I
    const/4 v8, 0x0

    .line 428
    .local v8, "child":Landroid/view/View;
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_3
    if-ge v2, v15, :cond_c

    .line 430
    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    const/4 v6, 0x1

    .line 433
    .local v6, "selected":Z
    :goto_4
    if-eqz p3, :cond_a

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_5
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 434
    invoke-direct/range {v1 .. v7}, Lcom/tencent/qrom/widget/QromGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 436
    if-eqz v14, :cond_b

    const/4 v1, -0x1

    :goto_6
    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    .line 437
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    .line 438
    add-int/2addr v5, v12

    .line 441
    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v13, :cond_3

    .line 442
    :cond_2
    move-object/from16 v17, v8

    .line 428
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 402
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "selectedPosition":I
    .end local v17    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 405
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v12

    :goto_7
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_1

    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 412
    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    .line 413
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 415
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 417
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    const/4 v1, -0x1

    :goto_8
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_8

    .line 430
    .end local v10    # "deltaLeft":I
    .restart local v2    # "pos":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v16    # "selectedPosition":I
    .restart local v17    # "selectedView":Landroid/view/View;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 433
    .restart local v6    # "selected":Z
    :cond_a
    sub-int v7, v2, p1

    goto :goto_5

    .line 436
    .restart local v7    # "where":I
    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    .line 446
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 448
    if-eqz v17, :cond_d

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 452
    :cond_d
    return-object v17
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 952
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 953
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 954
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 958
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 960
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 961
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 963
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 975
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 977
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/tencent/qrom/widget/QromGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 978
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/tencent/qrom/widget/QromGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 982
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 987
    if-lez v12, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 995
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 996
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 998
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/tencent/qrom/widget/QromGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1021
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 1022
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 1023
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 1024
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 1031
    :goto_4
    return-object v15

    .line 965
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 967
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 968
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 970
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 972
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 992
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    .line 995
    goto/16 :goto_2

    .line 999
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 1006
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1007
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .line 1009
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/tencent/qrom/widget/QromGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 1003
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    .line 1006
    goto :goto_6

    .line 1014
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 1017
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/tencent/qrom/widget/QromGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1018
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 1014
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    .line 1017
    goto :goto_8

    .line 1026
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 1027
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    .line 1028
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v1

    .line 579
    .local v1, "count":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 580
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 581
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 582
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 583
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 586
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    .line 568
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 569
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 570
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 571
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 572
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->offsetChildrenTopAndBottom(I)V

    .line 575
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private qromInitQromScrollBarDrawable(Z)V
    .locals 12
    .param p1, "initialize"    # Z

    .prologue
    .line 3173
    :try_start_0
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3176
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3177
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3178
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3179
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 3181
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez v5, :cond_0

    .line 3182
    const-string v2, "initScrollCache"

    .line 3183
    .local v2, "methodName":Ljava/lang/String;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3184
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3185
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|initScrollCache"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3192
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 3193
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3194
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3195
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3196
    .local v3, "scrollBar":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 3197
    new-instance v9, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    invoke-direct {v9}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;-><init>()V

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3199
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|new QromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    .end local v3    # "scrollBar":Ljava/lang/Object;
    .end local v4    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v5    # "scrollCache":Ljava/lang/Object;
    .end local v6    # "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "scrollCacheField":Ljava/lang/reflect/Field;
    .end local v8    # "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 3202
    :catch_0
    move-exception v0

    .line 3203
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
    .line 3225
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

    .line 3227
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3228
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3229
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3230
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3231
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 3233
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 3234
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3235
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3236
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3237
    .local v3, "scrollBar":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 3238
    instance-of v9, v3, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    if-eqz v9, :cond_0

    .line 3239
    move-object v0, v3

    check-cast v0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    move-object v1, v0

    .line 3240
    .local v1, "drawable":Lcom/tencent/qrom/drawable/QromScrollBarDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v9

    invoke-virtual {v1, v9, p1, p2}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromSetParameters(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
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

    .line 3244
    :catch_0
    move-exception v2

    .line 3245
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
            "Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2484
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2485
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2486
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    .line 2487
    .local v1, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2488
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2492
    .end local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_0
    return-void

    .line 2485
    .restart local v1    # "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1475
    const-wide/16 v22, 0x8

    const-string v24, "setupGridItem"

    invoke-static/range {v22 .. v24}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1477
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1478
    .local v14, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1479
    .local v20, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mTouchMode:I

    move/from16 v16, v0

    .line 1480
    .local v16, "mode":I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1482
    .local v13, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1484
    .local v19, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1488
    .local v17, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1489
    .local v18, "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    check-cast v18, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1492
    .restart local v18    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    .line 1494
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/QromGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    :goto_5
    if-eqz v20, :cond_2

    .line 1502
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1503
    if-eqz v14, :cond_2

    .line 1504
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->requestFocus()Z

    .line 1508
    :cond_2
    if-eqz v19, :cond_3

    .line 1509
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1512
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1513
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1514
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1521
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1522
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1525
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1527
    .local v11, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1532
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1533
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1536
    .local v12, "h":I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1538
    .local v10, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getLayoutDirection()I

    move-result v15

    .line 1539
    .local v15, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1540
    .local v5, "absoluteGravity":I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1551
    :pswitch_0
    move/from16 v8, p5

    .line 1555
    .local v8, "childLeft":I
    :goto_9
    if-eqz v17, :cond_10

    .line 1556
    add-int v9, v8, v21

    .line 1557
    .local v9, "childRight":I
    add-int v6, v10, v12

    .line 1558
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1564
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1565
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1568
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1570
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1573
    :cond_6
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1574
    return-void

    .line 1477
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v15    # "layoutDirection":I
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1478
    .restart local v14    # "isSelected":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1480
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1482
    .restart local v13    # "isPressed":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1484
    .restart local v19    # "updateChildPressed":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1497
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1498
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/widget/QromGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1515
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1529
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/qrom/widget/QromGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1536
    .restart local v12    # "h":I
    .restart local v21    # "w":I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1542
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v15    # "layoutDirection":I
    :pswitch_1
    move/from16 v8, p5

    .line 1543
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1545
    .end local v8    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1546
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1548
    .end local v8    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1549
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1560
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1561
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2446
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2447
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2426
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    if-nez v3, :cond_0

    .line 2427
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add footer view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2431
    :cond_0
    new-instance v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;-><init>(Lcom/tencent/qrom/widget/QromGridView$1;)V

    .line 2432
    .local v2, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    new-instance v1, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;-><init>(Lcom/tencent/qrom/widget/QromGridView;Landroid/content/Context;)V

    .line 2433
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2434
    iput-object p1, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->view:Landroid/view/View;

    .line 2435
    iput-object v1, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 2436
    iput-object p2, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->data:Ljava/lang/Object;

    .line 2437
    iput-boolean p3, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->isSelectable:Z

    .line 2438
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    if-eqz v0, :cond_1

    .line 2441
    check-cast v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 2443
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2420
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2421
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2400
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    if-nez v3, :cond_0

    .line 2401
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2405
    :cond_0
    new-instance v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;-><init>(Lcom/tencent/qrom/widget/QromGridView$1;)V

    .line 2406
    .local v2, "info":Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
    new-instance v1, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;-><init>(Lcom/tencent/qrom/widget/QromGridView;Landroid/content/Context;)V

    .line 2407
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2408
    iput-object p1, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->view:Landroid/view/View;

    .line 2409
    iput-object v1, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 2410
    iput-object p2, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->data:Ljava/lang/Object;

    .line 2411
    iput-boolean p3, v2, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;->isSelectable:Z

    .line 2412
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    if-eqz v0, :cond_1

    .line 2415
    check-cast v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->notifyDataSetChanged()V

    .line 2417
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1837
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    .line 1838
    .local v4, "selectedPosition":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1843
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 1845
    .local v2, "moved":Z
    iget-boolean v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1846
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1847
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1854
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1885
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1886
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->playSoundEffect(I)V

    .line 1887
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V

    .line 1890
    :cond_1
    if-eqz v2, :cond_2

    .line 1891
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->awakenScrollBars()Z

    .line 1894
    :cond_2
    return v2

    .line 1849
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_3
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1850
    .local v1, "invertedSelection":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1851
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_0

    .line 1856
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1857
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1858
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1859
    const/4 v2, 0x1

    goto :goto_1

    .line 1863
    :sswitch_1
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1864
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1865
    add-int v6, v4, v3

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1866
    const/4 v2, 0x1

    goto :goto_1

    .line 1870
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1871
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1872
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1873
    const/4 v2, 0x1

    goto :goto_1

    .line 1877
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1878
    iput v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1879
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1880
    const/4 v2, 0x1

    goto :goto_1

    .line 1854
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1211
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1214
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1215
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1216
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1219
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1220
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1221
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1222
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1224
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1225
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1226
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1233
    :goto_0
    return-void

    .line 1228
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1230
    .local v1, "invertedIndex":I
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1231
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 3218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->qromInitQromScrollBarDrawable(Z)V

    .line 3220
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public changeBottomBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3144
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 3145
    return-void
.end method

.method public changeTopBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 3141
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2299
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v1

    .line 2300
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2301
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 2302
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2304
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2306
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2307
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2308
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2309
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2310
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2313
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2314
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2315
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2316
    if-lez v3, :cond_1

    .line 2317
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2322
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2327
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2328
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2329
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2330
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2331
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 2332
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 2333
    .local v1, "numColumns":I
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2337
    .local v3, "rowCount":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2339
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2340
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2344
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    .line 2337
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2350
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 2351
    .local v0, "numColumns":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2352
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2353
    .local v1, "result":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2355
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2357
    :cond_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7a0b002a

    const/4 v3, 0x1

    .line 2844
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v0, :cond_8

    .line 2845
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2847
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2848
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2849
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 2850
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2853
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 2854
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2855
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2856
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 2857
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2860
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2861
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 2862
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2864
    :cond_3
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 2865
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2867
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2868
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_6

    .line 2869
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->bottomBitmap:Landroid/graphics/Bitmap;

    .line 2874
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2875
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->bottomBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2877
    :cond_4
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 2878
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_7

    .line 2879
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->topBitmap:Landroid/graphics/Bitmap;

    .line 2884
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->topBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2885
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->topBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2891
    :cond_5
    :goto_2
    return-void

    .line 2872
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->bottomBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2882
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->topBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 2889
    :cond_8
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public enableBottomBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3110
    if-eqz p1, :cond_4

    .line 3111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setFooterBlank(Z)V

    .line 3112
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 3113
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    .line 3114
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3115
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3116
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 3118
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/QromGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3126
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurInit()V

    .line 3135
    :cond_2
    :goto_1
    sput-boolean p1, Lcom/tencent/qrom/widget/QromGridView;->isFooterflag:Z

    .line 3136
    return p1

    .line 3121
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3129
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->setFooterBlank(Z)V

    .line 3130
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurInit()V

    .line 3131
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3132
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public enableTopBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3081
    if-eqz p1, :cond_4

    .line 3082
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setHeaderBlankWithStatusbar(Z)V

    .line 3083
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    if-lez v1, :cond_1

    .line 3084
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    .line 3085
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3086
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3087
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3088
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 3089
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3095
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/QromGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3097
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurInit()V

    .line 3106
    :cond_2
    :goto_1
    return p1

    .line 3092
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3100
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->setHeaderBlankWithStatusbar(Z)V

    .line 3101
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurInit()V

    .line 3102
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3103
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method fillGap(Z)V
    .locals 9
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 316
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 317
    .local v1, "numColumns":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 319
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v0

    .line 321
    .local v0, "count":I
    if-eqz p1, :cond_4

    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "paddingTop":I
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getListPaddingTop()I

    move-result v3

    .line 326
    :cond_0
    if-lez v0, :cond_3

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 328
    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 329
    .local v4, "position":I
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 330
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 332
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/tencent/qrom/widget/QromGridView;->fillDown(II)Landroid/view/View;

    .line 333
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isNeedBounce()Z

    move-result v7

    if-nez v7, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/tencent/qrom/widget/QromGridView;->correctTooHigh(III)V

    .line 354
    .end local v3    # "paddingTop":I
    :cond_2
    :goto_1
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_3
    move v5, v3

    .line 326
    goto :goto_0

    .line 337
    .end local v3    # "paddingTop":I
    :cond_4
    const/4 v2, 0x0

    .line 338
    .local v2, "paddingBottom":I
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getListPaddingBottom()I

    move-result v2

    .line 341
    :cond_5
    if-lez v0, :cond_6

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 343
    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 344
    .restart local v4    # "position":I
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v7, :cond_7

    .line 345
    sub-int/2addr v4, v1

    .line 349
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    .line 350
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isNeedBounce()Z

    move-result v7

    if-nez v7, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/tencent/qrom/widget/QromGridView;->correctTooLow(III)V

    goto :goto_1

    .line 341
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 347
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v0

    .line 591
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 593
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 594
    .local v2, "numColumns":I
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 596
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 597
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 608
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 595
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 601
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 602
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 603
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 601
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 608
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1810
    iput v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1811
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1812
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V

    .line 1813
    const/4 v0, 0x1

    .line 1821
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1822
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->awakenScrollBars()Z

    .line 1825
    :cond_1
    return v0

    .line 1814
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1815
    iput v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1816
    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1817
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V

    .line 1818
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2201
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    return v0
.end method

.method protected getDisplayItemTotalHeight(I)I
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 3149
    const/4 v5, 0x0

    .line 3150
    .local v5, "totalHeight":I
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    if-lez v7, :cond_3

    .line 3151
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getHeaderViewCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    mul-int v1, v7, v8

    .line 3152
    .local v1, "headerViewCount":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getFooterViewCount()I

    move-result v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    mul-int v0, v7, v8

    .line 3153
    .local v0, "footerViewCount":I
    sub-int v7, p1, v1

    sub-int v4, v7, v0

    .line 3155
    .local v4, "totalCount":I
    int-to-double v7, v4

    iget v9, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 3156
    .local v2, "horizontalCount":I
    const/4 v6, 0x0

    .line 3157
    .local v6, "verSpaceCount":I
    const/4 v7, 0x1

    if-le v2, v7, :cond_0

    .line 3158
    add-int/lit8 v6, v2, -0x1

    .line 3160
    :cond_0
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 3161
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    rem-int v7, v3, v7

    if-nez v7, :cond_1

    .line 3162
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    .line 3160
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3165
    :cond_2
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    mul-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 3167
    .end local v0    # "footerViewCount":I
    .end local v1    # "headerViewCount":I
    .end local v2    # "horizontalCount":I
    .end local v3    # "i":I
    .end local v4    # "totalCount":I
    .end local v6    # "verSpaceCount":I
    :cond_3
    return v5
.end method

.method public getFooterViewCount()I
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2066
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mGravity:I

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2246
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2218
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2121
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2171
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 3209
    const-string v0, "qrom.widget.ListView"

    const-string v1, "initializeScrollbars"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->qromInitQromScrollBarDrawable(Z)V

    .line 3213
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 3214
    return-void
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    .line 1238
    .local v3, "blockLayoutRequests":Z
    if-nez v3, :cond_0

    .line 1239
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    .line 1243
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->invalidate()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->resetList()V

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    if-nez v3, :cond_1

    .line 1412
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    .line 1415
    :cond_1
    :goto_0
    return-void

    .line 1253
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1254
    .local v7, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1256
    .local v6, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v5

    .line 1258
    .local v5, "childCount":I
    const/4 v9, 0x0

    .line 1261
    .local v9, "delta":I
    const/16 v16, 0x0

    .line 1262
    .local v16, "oldSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1263
    .local v15, "oldFirst":Landroid/view/View;
    const/4 v14, 0x0

    .line 1266
    .local v14, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1286
    .local v12, "index":I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1287
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1291
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1294
    .end local v12    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    .line 1295
    .local v8, "dataChanged":Z
    if-eqz v8, :cond_5

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->handleDataChanged()V

    .line 1301
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->resetList()V

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    if-nez v3, :cond_1

    .line 1412
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1268
    .end local v8    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1269
    .restart local v12    # "index":I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1279
    .end local v12    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1307
    .restart local v8    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setSelectedPositionInt(I)V

    .line 1311
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 1312
    .local v10, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1314
    .local v17, "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1315
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1316
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1315
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1319
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1324
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->detachAllViewsFromParent()V

    .line 1327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1355
    if-nez v5, :cond_13

    .line 1356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setSelectedPositionInt(I)V

    .line 1359
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/qrom/widget/QromGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1381
    .end local v7    # "childrenTop":I
    .local v18, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1383
    if-eqz v18, :cond_18

    .line 1384
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->positionSelector(ILandroid/view/View;)V

    .line 1385
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mSelectedTop:I

    .line 1394
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1395
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->post(Ljava/lang/Runnable;)Z

    .line 1398
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1400
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mNeedSync:Z

    .line 1401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setNextSelectedPositionInt(I)V

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->updateScrollIndicators()V

    .line 1405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_c

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->checkSelectionChanged()V

    .line 1409
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1411
    if-nez v3, :cond_1

    .line 1412
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1329
    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :pswitch_3
    if-eqz v14, :cond_d

    .line 1330
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/tencent/qrom/widget/QromGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1332
    .end local v18    # "sel":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/tencent/qrom/widget/QromGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1334
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1336
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    .line 1337
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/qrom/widget/QromGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1338
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1411
    .end local v5    # "childCount":I
    .end local v6    # "childrenBottom":I
    .end local v7    # "childrenTop":I
    .end local v8    # "dataChanged":Z
    .end local v9    # "delta":I
    .end local v10    # "firstPosition":I
    .end local v14    # "newSel":Landroid/view/View;
    .end local v15    # "oldFirst":Landroid/view/View;
    .end local v16    # "oldSel":Landroid/view/View;
    .end local v17    # "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    .end local v18    # "sel":Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_e

    .line 1412
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mBlockLayoutRequests:Z

    :cond_e
    throw v19

    .line 1341
    .restart local v5    # "childCount":I
    .restart local v6    # "childrenBottom":I
    .restart local v7    # "childrenTop":I
    .restart local v8    # "dataChanged":Z
    .restart local v9    # "delta":I
    .restart local v10    # "firstPosition":I
    .restart local v14    # "newSel":Landroid/view/View;
    .restart local v15    # "oldFirst":Landroid/view/View;
    .restart local v16    # "oldSel":Landroid/view/View;
    .restart local v17    # "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/tencent/qrom/widget/QromGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1342
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1345
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1346
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1348
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1349
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1352
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/tencent/qrom/widget/QromGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1353
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1357
    .end local v18    # "sel":Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1361
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1362
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setSelectedPositionInt(I)V

    .line 1364
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/tencent/qrom/widget/QromGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1365
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1362
    goto :goto_6

    .line 1367
    .end local v13    # "last":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/tencent/qrom/widget/QromGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1370
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/tencent/qrom/widget/QromGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1374
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/tencent/qrom/widget/QromGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1386
    .end local v7    # "childrenTop":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1388
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/tencent/qrom/widget/QromGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1390
    .end local v4    # "child":Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mSelectedTop:I

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1327
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 300
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 301
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 308
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 305
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 306
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2895
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->onDetachedFromWindow()V

    .line 2896
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurRecycle()V

    .line 2897
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1957
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1959
    const/4 v1, -0x1

    .line 1960
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1961
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mScrollX:I

    iget v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1965
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1966
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1967
    .local v4, "minDistance":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v0

    .line 1968
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1970
    invoke-direct {p0, v3, p2}, Lcom/tencent/qrom/widget/QromGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1968
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1974
    :cond_1
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/QromGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1975
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1976
    invoke-virtual {p0, v5, v6}, Lcom/tencent/qrom/widget/QromGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1977
    invoke-static {p3, v6, p2}, Lcom/tencent/qrom/widget/QromGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1979
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 1980
    move v4, v2

    .line 1981
    move v1, v3

    goto :goto_1

    .line 1986
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1987
    iget v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/QromGridView;->setSelection(I)V

    .line 1991
    :goto_2
    return-void

    .line 1989
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2362
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2363
    const-class v0, Lcom/tencent/qrom/widget/QromGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2364
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2368
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2369
    const-class v0, Lcom/tencent/qrom/widget/QromGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2370
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1630
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/QromGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1635
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/QromGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1640
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/QromGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1111
    invoke-super/range {p0 .. p2}, Lcom/tencent/qrom/widget/AbsListView;->onMeasure(II)V

    .line 1113
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1114
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1115
    .local v12, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1116
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1118
    .local v13, "heightSize":I
    if-nez v18, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_c

    .line 1120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1124
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1127
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1128
    .local v8, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/qrom/widget/QromGridView;->determineColumns(I)Z

    move-result v11

    .line 1130
    .local v11, "didNotInitiallyFit":Z
    const/4 v5, 0x0

    .line 1131
    .local v5, "childHeight":I
    const/4 v7, 0x0

    .line 1133
    .local v7, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    .line 1134
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    .line 1135
    .local v10, "count":I
    if-lez v10, :cond_2

    .line 1136
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/QromGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1138
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1139
    .local v17, "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    check-cast v17, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1141
    .restart local v17    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    .line 1144
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1146
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/tencent/qrom/widget/QromGridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1148
    .local v6, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/tencent/qrom/widget/QromGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1150
    .local v9, "childWidthSpec":I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1152
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1153
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/tencent/qrom/widget/QromGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1160
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    .end local v17    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1165
    :cond_3
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1168
    .local v16, "ourSize":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1169
    .local v15, "numColumns":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_5

    .line 1170
    add-int v16, v16, v5

    .line 1171
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1174
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_e

    .line 1175
    move/from16 v16, v13

    .line 1179
    :cond_5
    move/from16 v13, v16

    .line 1182
    .end local v14    # "i":I
    .end local v15    # "numColumns":I
    .end local v16    # "ourSize":I
    :cond_6
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1186
    .restart local v16    # "ourSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    .line 1187
    :cond_7
    const/high16 v20, 0x1000000

    or-int v19, v19, v20

    .line 1191
    .end local v16    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/tencent/qrom/widget/QromGridView;->setMeasuredDimension(II)V

    .line 1192
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mWidthMeasureSpec:I

    .line 1194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1197
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    move/from16 v20, v0

    if-gtz v20, :cond_a

    .line 1198
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1201
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1202
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-eqz v3, :cond_b

    instance-of v0, v3, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1203
    check-cast v3, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/QromGridView;->getNumColumns()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->setNumColumns(I)V

    .line 1205
    :cond_b
    return-void

    .line 1122
    .end local v5    # "childHeight":I
    .end local v7    # "childState":I
    .end local v8    # "childWidth":I
    .end local v10    # "count":I
    .end local v11    # "didNotInitiallyFit":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1133
    .restart local v5    # "childHeight":I
    .restart local v7    # "childState":I
    .restart local v8    # "childWidth":I
    .restart local v11    # "didNotInitiallyFit":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1169
    .restart local v10    # "count":I
    .restart local v14    # "i":I
    .restart local v15    # "numColumns":I
    .restart local v16    # "ourSize":I
    :cond_e
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2496
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AbsListView;->onSizeChanged(IIII)V

    .line 2497
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2498
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurInit()V

    .line 2500
    :cond_1
    return-void
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1782
    const/4 v0, -0x1

    .line 1784
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1785
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1790
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1791
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1792
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V

    .line 1793
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->awakenScrollBars()Z

    .line 1794
    const/4 v1, 0x1

    .line 1797
    :cond_1
    return v1

    .line 1786
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1787
    iget v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2471
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2472
    const/4 v1, 0x0

    .line 2473
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2474
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2475
    const/4 v1, 0x1

    .line 2477
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/tencent/qrom/widget/QromGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 2480
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
    .line 2458
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2459
    const/4 v1, 0x0

    .line 2460
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2461
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2462
    const/4 v1, 0x1

    .line 2464
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/tencent/qrom/widget/QromGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 2467
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1902
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mSelectedPosition:I

    .line 1903
    .local v5, "selectedPosition":I
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    .line 1904
    .local v4, "numColumns":I
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    .line 1908
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1909
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1910
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1917
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .line 1918
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1919
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    .line 1943
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1944
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/QromGridView;->playSoundEffect(I)V

    .line 1945
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->invokeOnItemScrollListener()V

    .line 1948
    :cond_1
    if-eqz v6, :cond_2

    .line 1949
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->awakenScrollBars()Z

    .line 1952
    :cond_2
    return v3

    .line 1912
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1913
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1914
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .line 1921
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1923
    iput v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1924
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1925
    const/4 v3, 0x1

    .line 1927
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1932
    :pswitch_1
    if-lez v5, :cond_0

    .line 1934
    iput v12, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1935
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/tencent/qrom/widget/QromGridView;->setSelectionInt(I)V

    .line 1936
    const/4 v3, 0x1

    .line 1938
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 81
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/QromGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 200
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView;->blurSetup()V

    .line 202
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 203
    :cond_0
    new-instance v0, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, p1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 204
    .local v0, "hadapter":Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getNumColumns()I

    move-result v1

    .line 205
    .local v1, "numColumns":I
    if-le v1, v5, :cond_1

    .line 206
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;->setNumColumns(I)V

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resetList()V

    .line 213
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->clear()V

    .line 214
    iput-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 216
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldSelectedPosition:I

    .line 217
    iput-wide v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldSelectedRowId:J

    .line 220
    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    .line 223
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    iput v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldItemCount:I

    .line 224
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    .line 225
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    .line 226
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkFocus()V

    .line 228
    new-instance v3, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    .line 229
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 234
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 235
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v6}, Lcom/tencent/qrom/widget/QromGridView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 239
    .local v2, "position":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setSelectedPositionInt(I)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setNextSelectedPositionInt(I)V

    .line 241
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkSelectionChanged()V

    .line 248
    .end local v2    # "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayout()V

    .line 296
    .end local v0    # "hadapter":Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_2
    return-void

    .line 237
    .restart local v0    # "hadapter":Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;
    .restart local v1    # "numColumns":I
    :cond_3
    invoke-virtual {p0, v6, v5}, Lcom/tencent/qrom/widget/QromGridView;->lookForSelectablePosition(IZ)I

    move-result v2

    .restart local v2    # "position":I
    goto :goto_0

    .line 243
    .end local v2    # "position":I
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkFocus()V

    .line 245
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkSelectionChanged()V

    goto :goto_1

    .line 254
    .end local v0    # "hadapter":Lcom/tencent/qrom/widget/QromGridView$HeaderFooterViewGridAdapter;
    .end local v1    # "numColumns":I
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v3, :cond_6

    .line 255
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 258
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->resetList()V

    .line 259
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->clear()V

    .line 260
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 262
    iput v7, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldSelectedPosition:I

    .line 263
    iput-wide v8, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldSelectedRowId:J

    .line 266
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_8

    .line 269
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    iput v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mOldItemCount:I

    .line 270
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    .line 271
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataChanged:Z

    .line 272
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkFocus()V

    .line 274
    new-instance v3, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    .line 275
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 280
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_7

    .line 281
    iget v3, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v6}, Lcom/tencent/qrom/widget/QromGridView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 285
    .restart local v2    # "position":I
    :goto_3
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setSelectedPositionInt(I)V

    .line 286
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setNextSelectedPositionInt(I)V

    .line 287
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkSelectionChanged()V

    .line 294
    .end local v2    # "position":I
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayout()V

    goto :goto_2

    .line 283
    :cond_7
    invoke-virtual {p0, v6, v5}, Lcom/tencent/qrom/widget/QromGridView;->lookForSelectablePosition(IZ)I

    move-result v2

    .restart local v2    # "position":I
    goto :goto_3

    .line 289
    .end local v2    # "position":I
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkFocus()V

    .line 291
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->checkSelectionChanged()V

    goto :goto_4
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 2182
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2183
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedColumnWidth:I

    .line 2184
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2186
    :cond_0
    return-void
.end method

.method public setFooterBlank(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 3040
    if-eqz p1, :cond_0

    .line 3041
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    .line 3044
    :goto_0
    sput-boolean p1, Lcom/tencent/qrom/widget/QromGridView;->isFooterflag:Z

    .line 3046
    return-void

    .line 3043
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 2052
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2053
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mGravity:I

    .line 2054
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2056
    :cond_0
    return-void
.end method

.method public setHeaderBlank(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 3049
    if-eqz p1, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    .line 3053
    :goto_0
    return-void

    .line 3052
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderBlankWithStatusbar(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 3056
    if-eqz p1, :cond_0

    .line 3057
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    .line 3060
    :goto_0
    return-void

    .line 3059
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderBlankWithStatusbar(ZI)Z
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "height"    # I

    .prologue
    .line 3063
    if-eqz p1, :cond_0

    .line 3064
    iput p2, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    .line 3075
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    iget v1, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurBottomHeight:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->qromSetParameters(II)V

    .line 3077
    return p1

    .line 3066
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2079
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2080
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedHorizontalSpacing:I

    .line 2081
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2083
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 2229
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2230
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    .line 2231
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2233
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mRequestedNumColumns:I

    .line 2234
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1587
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/QromGridView;->setNextSelectedPositionInt(I)V

    .line 1591
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mLayoutMode:I

    .line 1592
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayout()V

    .line 1596
    return-void

    .line 1589
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1605
    iget v4, p0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    .line 1607
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_0

    .line 1608
    iget-object v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 1611
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/QromGridView;->setNextSelectedPositionInt(I)V

    .line 1612
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->layoutChildren()V

    .line 1614
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1616
    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1619
    .local v2, "previous":I
    :goto_1
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1620
    .local v1, "nextRow":I
    iget v5, p0, Lcom/tencent/qrom/widget/QromGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1622
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->awakenScrollBars()Z

    .line 1626
    :cond_1
    return-void

    .line 1614
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_3
    move v2, v4

    .line 1616
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 2164
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2165
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mStretchMode:I

    .line 2166
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2168
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2136
    iget v0, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2137
    iput p1, p0, Lcom/tencent/qrom/widget/QromGridView;->mVerticalSpacing:I

    .line 2138
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromGridView;->requestLayoutIfNecessary()V

    .line 2140
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 934
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 935
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 924
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 925
    return-void
.end method
