.class public Lcom/tencent/qrom/widget/ListView;
.super Lcom/tencent/qrom/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;,
        Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;,
        Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;,
        Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;,
        Lcom/tencent/qrom/widget/ListView$FocusSelector;,
        Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xc8L

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_MARGIN:I = 0xc

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field public static final NO_DIVIDER:I = -0x2

.field static final NO_POSITION:I = -0x1

.field private static sPixelDensity:F


# instance fields
.field private blurInfo:Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

.field private bottomBitmap:Landroid/graphics/Bitmap;

.field private mActivatedBackgroundIndicator:I

.field private mActiveRemoveCount:I

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

.field private mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

.field private mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

.field private mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlurBottomHeight:I

.field private mBlurForBottomRect:Landroid/graphics/Rect;

.field private mBlurForTopRect:Landroid/graphics/Rect;

.field private mBlurPaint:Landroid/graphics/Paint;

.field private mBlurTopBgBitmap:Landroid/graphics/Bitmap;

.field private mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlurTopHeight:I

.field private mBottomBlurView:Landroid/view/View;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mEmptyListBackground:I

.field private mEmptyListIcon:I

.field private mEmptyListMarginBottom:I

.field private mEmptyListMarginLeft:I

.field private mEmptyListMarginRight:I

.field private mEmptyListMarginTop:I

.field private mEmptyListMaxHeight:I

.field private mEmptyListMinHeight:I

.field private mEmptyListMinMargin:I

.field private mEmptyListSecondText:I

.field private mEmptyListSecondTextAppearanceId:I

.field private mEmptyListText:I

.field private mEmptyListTextAppearanceId:I

.field private mFirstItemHigher:Z

.field private mFocusSelector:Lcom/tencent/qrom/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForBottomBitmap:Landroid/graphics/Bitmap;

.field private mForBottomCanvas:Landroid/graphics/Canvas;

.field private mForContentRect:Landroid/graphics/Rect;

.field private mForTopBitmap:Landroid/graphics/Bitmap;

.field private mForTopCanvas:Landroid/graphics/Canvas;

.field mHandler:Landroid/os/Handler;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field private mLastItemHigher:Z

.field private mOnItemRemoveListener:Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mRemovedPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedStateEnabled:Z

.field private mShowEmptyList:Z

.field private mTempFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopBlurView:Landroid/view/View;

.field private paddingView:Landroid/view/View;

.field private topBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tencent/qrom/widget/ListView;->sPixelDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    const v0, 0x7a01007e

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 140
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 141
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mTempFooterViewInfos:Ljava/util/ArrayList;

    .line 155
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mAreAllItemsSelectable:Z

    .line 157
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    .line 160
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 165
    new-instance v9, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;-><init>(Lcom/tencent/qrom/widget/ListView$1;)V

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    .line 173
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mShowEmptyList:Z

    .line 183
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListTextAppearanceId:I

    .line 185
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondTextAppearanceId:I

    .line 187
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginLeft:I

    .line 190
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I

    .line 192
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginRight:I

    .line 195
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginBottom:I

    .line 197
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I

    .line 199
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I

    .line 201
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    .line 206
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mActivatedBackgroundIndicator:I

    .line 208
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedStateEnabled:Z

    .line 231
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedViews:Ljava/util/Collection;

    .line 232
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    .line 4008
    new-instance v9, Lcom/tencent/qrom/widget/ListView$1;

    invoke-direct {v9, p0}, Lcom/tencent/qrom/widget/ListView$1;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    iput-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mHandler:Landroid/os/Handler;

    .line 247
    sget-object v9, Lcom/tencent/qrom/R$styleable;->ListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 250
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 251
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v10, 0x7a03006e

    invoke-direct {v9, p1, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :cond_1
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 263
    .local v6, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 264
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 269
    .local v5, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 270
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_3
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 276
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->setDividerHeight(I)V

    .line 280
    :cond_4
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderDividersEnabled:Z

    .line 281
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mFooterDividersEnabled:Z

    .line 282
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mFooterDividersEnabled:Z

    .line 285
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListBackground:I

    .line 286
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListIcon:I

    .line 287
    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListText:I

    .line 288
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondText:I

    .line 290
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListIcon:I

    if-nez v9, :cond_5

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListText:I

    if-nez v9, :cond_5

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondText:I

    if-nez v9, :cond_5

    .line 293
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mShowEmptyList:Z

    .line 311
    :goto_0
    const/16 v9, 0x12

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedStateEnabled:Z

    .line 313
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 320
    .local v7, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x7a010039

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 321
    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mActivatedBackgroundIndicator:I

    .line 323
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    .line 324
    const/4 v9, 0x0

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    .line 325
    return-void

    .line 295
    .end local v7    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 296
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 297
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 298
    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    sput v9, Lcom/tencent/qrom/widget/ListView;->sPixelDensity:F

    .line 299
    const/16 v9, 0xc

    invoke-static {v9}, Lcom/tencent/qrom/widget/ListView;->dpToPixel(I)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    .line 301
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListTextAppearanceId:I

    .line 302
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondTextAppearanceId:I

    .line 303
    const/16 v9, 0xd

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginLeft:I

    .line 304
    const/16 v9, 0xe

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I

    .line 305
    const/16 v9, 0xf

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginRight:I

    .line 306
    const/16 v9, 0x10

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginBottom:I

    .line 307
    const/16 v9, 0x11

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I

    goto/16 :goto_0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 106
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/widget/ListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 106
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 106
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 106
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/qrom/widget/ListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->finalizeRemove()V

    return-void
.end method

.method private addEmptyView()V
    .locals 14

    .prologue
    .line 3892
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 3894
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7a030027

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3899
    .local v3, "emptyView":Landroid/view/View;
    new-instance v6, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;-><init>(Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/widget/ListView$1;)V

    .line 3900
    .local v6, "listener":Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;
    invoke-virtual {v3, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3901
    const v10, 0x7a09012e

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3903
    const v10, 0x7a09012d

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3904
    .local v2, "emptyListHost":Landroid/view/View;
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListBackground:I

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3906
    const v10, 0x7a090126

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 3907
    .local v4, "icon":Landroid/widget/ImageView;
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListIcon:I

    if-eqz v10, :cond_4

    .line 3908
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListIcon:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3913
    :goto_0
    const v10, 0x7a090127

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3914
    .local v9, "text":Landroid/widget/TextView;
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListText:I

    if-eqz v10, :cond_5

    .line 3915
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListText:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3916
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListTextAppearanceId:I

    if-eqz v10, :cond_1

    .line 3917
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListTextAppearanceId:I

    sget-object v12, Lcom/tencent/qrom/R$styleable;->TextAppearance:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3919
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 3920
    .local v1, "color":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_0

    .line 3921
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3923
    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 3925
    .local v8, "size":F
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3926
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3932
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    .end local v8    # "size":F
    :cond_1
    :goto_1
    const v10, 0x7a090128

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "text":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 3933
    .restart local v9    # "text":Landroid/widget/TextView;
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondText:I

    if-eqz v10, :cond_6

    .line 3934
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondText:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3935
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondTextAppearanceId:I

    if-eqz v10, :cond_3

    .line 3936
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListSecondTextAppearanceId:I

    sget-object v12, Lcom/tencent/qrom/R$styleable;->TextAppearance:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3938
    .restart local v0    # "appearance":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 3939
    .restart local v1    # "color":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 3940
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3942
    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 3943
    .restart local v8    # "size":F
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3944
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3951
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    .end local v8    # "size":F
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3952
    .local v7, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginLeft:I

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I

    iget v12, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginRight:I

    iget v13, p0, Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginBottom:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3953
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3956
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3957
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3958
    return-void

    .line 3910
    .end local v7    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "text":Landroid/widget/TextView;
    :cond_4
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3929
    .restart local v9    # "text":Landroid/widget/TextView;
    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3947
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3152
    add-int/lit8 v2, p2, -0x1

    .line 3153
    .local v2, "abovePosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3154
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3155
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3157
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3161
    add-int/lit8 v2, p2, 0x1

    .line 3162
    .local v2, "belowPosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3163
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3164
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3166
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v1

    .line 343
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 346
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 349
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    sub-int v2, v3, v4

    .line 353
    .local v2, "delta":I
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 356
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 358
    :cond_0
    if-gez v2, :cond_1

    .line 360
    const/4 v2, 0x0

    .line 378
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListView;->mIsTouchOffsetFlag:Z

    if-nez v3, :cond_2

    .line 379
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 382
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 364
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 367
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 370
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 373
    :cond_4
    if-lez v2, :cond_1

    .line 374
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2768
    .local v4, "listBottom":I
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2770
    .local v5, "listTop":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    .line 2772
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2773
    add-int/lit8 v3, v7, -0x1

    .line 2774
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2775
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2778
    :cond_0
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2779
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2781
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2782
    .local v1, "goalBottom":I
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2783
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2786
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2788
    const/4 v10, 0x0

    .line 2834
    .end local v1    # "goalBottom":I
    :goto_0
    return v10

    .line 2791
    .restart local v1    # "goalBottom":I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2794
    const/4 v10, 0x0

    goto :goto_0

    .line 2797
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2799
    .local v0, "amountToScroll":I
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2801
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2802
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2805
    .end local v6    # "max":I
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2807
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2808
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2809
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2811
    :cond_6
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2812
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2813
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2814
    .local v2, "goalTop":I
    if-lez v8, :cond_7

    .line 2815
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2817
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2819
    const/4 v10, 0x0

    goto :goto_0

    .line 2822
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2825
    const/4 v10, 0x0

    goto :goto_0

    .line 2828
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2829
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2831
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2832
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2834
    .end local v6    # "max":I
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3026
    const/4 v0, 0x0

    .line 3027
    .local v0, "amountToScroll":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3028
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/tencent/qrom/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3029
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3030
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3031
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3032
    if-lez p3, :cond_0

    .line 3033
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3045
    :cond_0
    :goto_0
    return v0

    .line 3037
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3038
    .local v1, "listBottom":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3039
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3040
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3041
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2926
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2927
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2928
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2953
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2954
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/qrom/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2958
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2959
    invoke-direct/range {p0 .. p1}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2960
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2963
    :cond_1
    const/4 v14, 0x0

    .line 2985
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 2930
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2931
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2932
    .local v12, "topFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2934
    .local v5, "listTop":I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2938
    .local v13, "ySearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2950
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 2931
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2932
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5    # "listTop":I
    :cond_5
    move v13, v5

    .line 2934
    goto :goto_4

    .line 2940
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2942
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2944
    .local v4, "listBottom":I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2948
    .restart local v13    # "ySearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2940
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2942
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4    # "listBottom":I
    :cond_9
    move v13, v4

    .line 2944
    goto :goto_8

    .line 2967
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/tencent/qrom/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2969
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2970
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 2972
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2974
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2975
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/qrom/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2980
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/ListView;->mArrowScrollFocusResult:Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2985
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2550
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return v9

    .line 2554
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2555
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    .line 2557
    .local v5, "selectedPos":I
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2558
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Lcom/tencent/qrom/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2561
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;->arrowScrollFocused(I)Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2562
    .local v1, "focusResult":Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2563
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2564
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2567
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2568
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2569
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/tencent/qrom/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2570
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->setSelectedPositionInt(I)V

    .line 2571
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2572
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2573
    move v5, v4

    .line 2574
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2577
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2578
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2579
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2582
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2583
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->checkSelectionChanged()V

    .line 2586
    :cond_4
    if-lez v0, :cond_5

    .line 2587
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->scrollListItemsBy(I)V

    .line 2588
    const/4 v3, 0x1

    .line 2593
    :cond_5
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2595
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2596
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/tencent/qrom/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2597
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2602
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Lcom/tencent/qrom/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2604
    const/4 v6, 0x0

    .line 2605
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->hideSelector()V

    .line 2609
    iput v10, p0, Lcom/tencent/qrom/widget/ListView;->mResurrectToPosition:I

    .line 2612
    :cond_8
    if-eqz v3, :cond_0

    .line 2613
    if-eqz v6, :cond_9

    .line 2615
    invoke-virtual {p0, v5, v6}, Lcom/tencent/qrom/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2616
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedTop:I

    .line 2618
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2619
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 2621
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2622
    goto/16 :goto_0

    .line 2561
    .end local v1    # "focusResult":Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2567
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 2569
    goto :goto_3

    .line 2587
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private blurInit()V
    .locals 8

    .prologue
    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 4166
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v3, :cond_12

    .line 4167
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 4168
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    .line 4169
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4172
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 4173
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    .line 4175
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 4176
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 4177
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 4178
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 4180
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    if-nez v3, :cond_3

    .line 4181
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    .line 4183
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 4184
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 4185
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 4186
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 4188
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    if-nez v3, :cond_4

    .line 4189
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    .line 4191
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 4192
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 4193
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 4194
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 4196
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->blurRecycle()V

    .line 4198
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-lez v3, :cond_5

    .line 4199
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    .line 4200
    .local v1, "blurRectW":I
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    .line 4201
    .local v0, "blurRectH":I
    sget-boolean v3, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v3, :cond_a

    .line 4202
    if-lez v1, :cond_8

    .end local v1    # "blurRectW":I
    :goto_0
    if-lez v0, :cond_9

    .end local v0    # "blurRectH":I
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 4205
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 4216
    :cond_5
    :goto_2
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v3, :cond_6

    .line 4217
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    .line 4218
    .restart local v1    # "blurRectW":I
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    .line 4219
    .restart local v0    # "blurRectH":I
    sget-boolean v3, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v3, :cond_f

    .line 4220
    if-lez v1, :cond_d

    .end local v1    # "blurRectW":I
    :goto_3
    if-lez v0, :cond_e

    .end local v0    # "blurRectH":I
    :goto_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 4223
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 4234
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    if-nez v2, :cond_7

    .line 4235
    new-instance v2, Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    .line 4246
    :cond_7
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    invoke-direct {p0, v2, v3}, Lcom/tencent/qrom/widget/ListView;->qromSetParameters(II)V

    .line 4261
    :goto_6
    return-void

    .restart local v0    # "blurRectH":I
    .restart local v1    # "blurRectW":I
    :cond_8
    move v1, v2

    .line 4202
    goto :goto_0

    .end local v1    # "blurRectW":I
    :cond_9
    move v0, v2

    goto :goto_1

    .line 4208
    .restart local v1    # "blurRectW":I
    :cond_a
    div-int/lit8 v3, v1, 0xa

    if-lez v3, :cond_b

    div-int/lit8 v3, v1, 0xa

    :goto_7
    div-int/lit8 v4, v0, 0xa

    if-lez v4, :cond_c

    div-int/lit8 v4, v0, 0xa

    :goto_8
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    .line 4211
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    .line 4212
    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_b
    move v3, v2

    .line 4208
    goto :goto_7

    :cond_c
    move v4, v2

    goto :goto_8

    :cond_d
    move v1, v2

    .line 4220
    goto :goto_3

    .end local v1    # "blurRectW":I
    :cond_e
    move v0, v2

    goto :goto_4

    .line 4226
    .restart local v1    # "blurRectW":I
    :cond_f
    div-int/lit8 v3, v1, 0xa

    if-lez v3, :cond_11

    div-int/lit8 v3, v1, 0xa

    :goto_9
    div-int/lit8 v4, v0, 0xa

    if-lez v4, :cond_10

    div-int/lit8 v2, v0, 0xa

    :cond_10
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    .line 4229
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    .line 4230
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_5

    :cond_11
    move v3, v2

    .line 4226
    goto :goto_9

    .line 4258
    .end local v0    # "blurRectH":I
    .end local v1    # "blurRectW":I
    :cond_12
    invoke-direct {p0, v6, v6}, Lcom/tencent/qrom/widget/ListView;->qromSetParameters(II)V

    goto :goto_6
.end method

.method private blurScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const v0, 0x3e4ccccd    # 0.2f

    .line 4275
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4276
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4279
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

    .line 4132
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 4133
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    .line 4134
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    invoke-direct {v0, v3, v1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4135
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4136
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_3

    .line 4138
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4144
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4147
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v1, :cond_2

    .line 4148
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 4163
    :cond_2
    :goto_1
    return-void

    .line 4141
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4150
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    .line 4151
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    invoke-direct {v0, v3, v1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4152
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4153
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 4154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_6

    .line 4155
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4161
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v4}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 4158
    :cond_6
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 671
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 673
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 674
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 675
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 676
    .local v3, "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 677
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 673
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2242
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2389
    :cond_1
    :goto_0
    return v4

    .line 2246
    :cond_2
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2247
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->layoutChildren()V

    .line 2250
    :cond_3
    const/4 v2, 0x0

    .line 2251
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2253
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2254
    sparse-switch p1, :sswitch_data_0

    .line 2370
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2374
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2378
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2389
    goto :goto_0

    .line 2256
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2257
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2258
    if-nez v2, :cond_4

    move v1, p2

    .line 2259
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2260
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2261
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2267
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2268
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2273
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2274
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2275
    if-nez v2, :cond_4

    move v1, p2

    .line 2276
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2277
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2278
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2284
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2285
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2290
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2291
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/tencent/qrom/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2296
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2297
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/tencent/qrom/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2303
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2304
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2305
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2307
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->keyPressed()V

    .line 2308
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2314
    :sswitch_5
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2315
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2316
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2320
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2316
    goto :goto_6

    .line 2317
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2318
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2325
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2326
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2327
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2328
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2333
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2334
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2335
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2336
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2341
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2342
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2347
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2348
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2380
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2383
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2386
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2254
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    .line 1542
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1543
    .local v6, "lastPosition":I
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1546
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1549
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1552
    .local v4, "lastBottom":I
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1556
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1557
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1558
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1562
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1563
    :cond_0
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1565
    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1568
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1569
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1572
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1574
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1579
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1591
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1594
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1597
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1600
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1603
    .local v6, "start":I
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1607
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1608
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1609
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1610
    .local v3, "lastBottom":I
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1614
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1615
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1616
    :cond_0
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1618
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1621
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1622
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1625
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1627
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1634
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 1629
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1630
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3056
    const/4 v0, 0x0

    .line 3057
    .local v0, "distance":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3058
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/tencent/qrom/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3059
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3060
    .local v1, "listBottom":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3061
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3065
    :cond_0
    :goto_0
    return v0

    .line 3062
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3063
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private static dpToPixel(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 4015
    sget v0, Lcom/tencent/qrom/widget/ListView;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 947
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 948
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 949
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 950
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 951
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 957
    :goto_0
    return-void

    .line 953
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 954
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 955
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v3, 0x1

    .line 830
    const/4 v8, 0x0

    .line 832
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 833
    .local v7, "end":I
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 837
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 839
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 840
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 842
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 843
    if-eqz v5, :cond_1

    .line 844
    move-object v8, v6

    .line 846
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 847
    goto :goto_0

    .line 839
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 849
    :cond_3
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 915
    sub-int v6, p2, p1

    .line 917
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 919
    .local v1, "position":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 921
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 923
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 924
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 925
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 928
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/tencent/qrom/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 930
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->correctTooHigh(I)V

    .line 936
    :goto_0
    return-object v7

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 972
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    .line 976
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/tencent/qrom/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 978
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/tencent/qrom/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 981
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 985
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 988
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 992
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 993
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 996
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1012
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/tencent/qrom/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1014
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1015
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/ListView;->correctTooHigh(I)V

    .line 1020
    :goto_1
    return-object v10

    .line 997
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 1000
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 1004
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 1005
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1008
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1017
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .prologue
    .line 895
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 896
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 897
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 898
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 900
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1494
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1495
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1497
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 1502
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 1503
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1504
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1506
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1507
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1508
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v8

    .line 1509
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1510
    invoke-direct {p0, v8}, Lcom/tencent/qrom/widget/ListView;->correctTooHigh(I)V

    .line 1523
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1528
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1494
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1513
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1515
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1516
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1517
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v8

    .line 1518
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1519
    invoke-direct {p0, v8}, Lcom/tencent/qrom/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1525
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1526
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1528
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 863
    const/4 v8, 0x0

    .line 865
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 866
    .local v7, "end":I
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 870
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 872
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 873
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 874
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 875
    if-eqz v5, :cond_1

    .line 876
    move-object v8, v6

    .line 878
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 879
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 872
    goto :goto_1

    .line 881
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 883
    return-object v8
.end method

.method private finalizeRemove()V
    .locals 8

    .prologue
    .line 4476
    iget v6, p0, Lcom/tencent/qrom/widget/ListView;->mActiveRemoveCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/tencent/qrom/widget/ListView;->mActiveRemoveCount:I

    .line 4477
    iget v6, p0, Lcom/tencent/qrom/widget/ListView;->mActiveRemoveCount:I

    if-nez v6, :cond_3

    .line 4478
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedViews:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 4479
    .local v5, "view":Landroid/view/View;
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 4480
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 4481
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 4482
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4483
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4486
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4487
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4488
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 4489
    .local v0, "dismissPositions":[I
    const/4 v2, 0x0

    .line 4490
    .local v2, "i":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4491
    .local v1, "dismissedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v2

    .line 4492
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4495
    .end local v1    # "dismissedPosition":Ljava/lang/Integer;
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mOnItemRemoveListener:Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;

    if-eqz v6, :cond_2

    .line 4496
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mOnItemRemoveListener:Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;

    invoke-interface {v6, v0}, Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;->onItemRemove([I)V

    .line 4500
    .end local v0    # "dismissPositions":[I
    .end local v2    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedViews:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->clear()V

    .line 4501
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4503
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2751
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1033
    move v0, p1

    .line 1034
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1035
    sub-int/2addr v0, p2

    .line 1037
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1050
    move v0, p1

    .line 1051
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 1052
    add-int/2addr v0, p2

    .line 1054
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 2485
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2486
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2490
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v3

    .line 2491
    .local v3, "numChildren":I
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2492
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2493
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2496
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2497
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2499
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2501
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2502
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/qrom/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2503
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/tencent/qrom/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2504
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2505
    const/4 v5, 0x1

    .line 2519
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 2512
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2514
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2515
    invoke-direct {p0, v1, p0}, Lcom/tencent/qrom/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2519
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2643
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2644
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2654
    :cond_0
    const/4 v5, 0x0

    .line 2655
    .local v5, "topSelected":Z
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2656
    .local v4, "selectedIndex":I
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2657
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2658
    move v7, v2

    .line 2659
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2660
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2661
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2662
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2670
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v3

    .line 2673
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2674
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2675
    invoke-direct {p0, v6, v7, v3}, Lcom/tencent/qrom/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2679
    :cond_1
    if-eqz v0, :cond_2

    .line 2680
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2681
    invoke-direct {p0, v0, v1, v3}, Lcom/tencent/qrom/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2683
    :cond_2
    return-void

    .line 2664
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_3
    move v7, v4

    .line 2665
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2666
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2667
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 2674
    .restart local v3    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2680
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1903
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1904
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1905
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1906
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1917
    :goto_1
    return v5

    .line 1905
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1911
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1912
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1913
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1914
    goto :goto_1

    .line 1912
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1917
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3008
    if-ne p1, p2, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return v1

    .line 3012
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3013
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/tencent/qrom/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2871
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 2872
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2873
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2876
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2911
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 2873
    goto :goto_0

    .line 2879
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2880
    move v5, v1

    .line 2883
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2884
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2885
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2886
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2885
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2892
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2893
    .local v2, "last":I
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2896
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2897
    goto :goto_1

    .line 2893
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2899
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2900
    move v5, v2

    .line 2903
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2904
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2905
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2904
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 2911
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1941
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1949
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1961
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 1956
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1959
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1961
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2693
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2694
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2695
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2697
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2700
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2701
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2702
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2705
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2713
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2714
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2715
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2720
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2722
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2724
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 2725
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2729
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2730
    return-void

    .line 2727
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1337
    .local v3, "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1338
    new-instance v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .end local v3    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1340
    .restart local v3    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    .line 1343
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1345
    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1347
    .local v1, "childWidthSpec":I
    iget v2, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->height:I

    .line 1349
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1350
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1354
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1355
    return-void

    .line 1352
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1097
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    .line 1101
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/tencent/qrom/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1103
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/tencent/qrom/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1106
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1128
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1131
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 1134
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1138
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1141
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1144
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1147
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1148
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1149
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1152
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1154
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1158
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1161
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1242
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1163
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1164
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    .line 1165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1167
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1188
    if-eqz p2, :cond_4

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1200
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1202
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1205
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1208
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1209
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1210
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1213
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1217
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tencent/qrom/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1195
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1220
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1225
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1228
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1231
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1232
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1234
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1239
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tencent/qrom/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 2993
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v2

    .line 2994
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2995
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2996
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2997
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2994
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3000
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private qromInitQromScrollBarDrawable(Z)V
    .locals 12
    .param p1, "initialize"    # Z

    .prologue
    .line 4576
    :try_start_0
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 4579
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 4580
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4581
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4582
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 4584
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez v5, :cond_0

    .line 4585
    const-string v2, "initScrollCache"

    .line 4586
    .local v2, "methodName":Ljava/lang/String;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4587
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4588
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4590
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|initScrollCache"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4595
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 4596
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4597
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4598
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4599
    .local v3, "scrollBar":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 4600
    new-instance v9, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    invoke-direct {v9}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;-><init>()V

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4602
    const-string v9, "qrom.widget.ListView"

    const-string v10, "qromInitQromScrollBarDrawable|new QromScrollBarDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4608
    .end local v3    # "scrollBar":Ljava/lang/Object;
    .end local v4    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v5    # "scrollCache":Ljava/lang/Object;
    .end local v6    # "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "scrollCacheField":Ljava/lang/reflect/Field;
    .end local v8    # "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 4605
    :catch_0
    move-exception v0

    .line 4606
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
    .line 4628
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

    .line 4630
    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 4631
    .local v8, "viewClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 4632
    .local v7, "scrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4633
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4634
    .local v5, "scrollCache":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 4636
    .local v6, "scrollCacheClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 4637
    const-string v9, "scrollBar"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4638
    .local v4, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4639
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4640
    .local v3, "scrollBar":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 4641
    instance-of v9, v3, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    if-eqz v9, :cond_0

    .line 4642
    move-object v0, v3

    check-cast v0, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;

    move-object v1, v0

    .line 4643
    .local v1, "drawable":Lcom/tencent/qrom/drawable/QromScrollBarDrawable;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v9

    invoke-virtual {v1, v9, p1, p2}, Lcom/tencent/qrom/drawable/QromScrollBarDrawable;->qromSetParameters(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4650
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

    .line 4647
    :catch_0
    move-exception v2

    .line 4648
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

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2738
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2739
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2740
    .local v4, "h":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2741
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2742
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2743
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2744
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2745
    return-void
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
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 461
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 462
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    .line 463
    .local v1, "info":Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 464
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    .end local v1    # "info":Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 461
    .restart local v1    # "info":Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3076
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3078
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    sub-int v5, v9, v10

    .line 3079
    .local v5, "listBottom":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int v6, v9, v10

    .line 3080
    .local v6, "listTop":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    .line 3082
    .local v8, "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3086
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    .line 3087
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3088
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3089
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3090
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3091
    invoke-direct {p0, v1, v3}, Lcom/tencent/qrom/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3092
    add-int/lit8 v7, v7, 0x1

    .line 3096
    goto :goto_0

    .line 3101
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3102
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3106
    :cond_1
    invoke-virtual {p0, v11}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3107
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 3109
    .local v4, "layoutParams":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget v9, v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3110
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3111
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3115
    :goto_2
    invoke-virtual {p0, v11}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3116
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3113
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3120
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3123
    .restart local v0    # "first":Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3124
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/tencent/qrom/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3125
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 3130
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3131
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3134
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3135
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3138
    .restart local v1    # "last":Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3139
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 3140
    .restart local v4    # "layoutParams":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget v9, v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3141
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3142
    iget v9, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3146
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3147
    goto :goto_4

    .line 3144
    :cond_6
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3149
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1980
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1981
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1982
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qrom/widget/ListView;->mTouchMode:I

    .line 1983
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1985
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1986
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1990
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 1991
    .local v15, "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1992
    new-instance v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .end local v15    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1995
    .restart local v15    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    .line 1997
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1999
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/tencent/qrom/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2013
    :goto_6
    if-eqz v17, :cond_4

    .line 2014
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2017
    :cond_4
    if-eqz v16, :cond_5

    .line 2018
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2021
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2022
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v19, p1

    .line 2023
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2030
    :cond_6
    :goto_7
    if-eqz v14, :cond_15

    .line 2031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2033
    .local v8, "childWidthSpec":I
    iget v12, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->height:I

    .line 2035
    .local v12, "lpHeight":I
    if-lez v12, :cond_14

    .line 2036
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2040
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2045
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2046
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2047
    .local v9, "h":I
    if-eqz p4, :cond_16

    move/from16 v7, p3

    .line 2049
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_17

    .line 2050
    add-int v6, p5, v18

    .line 2051
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2052
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2058
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 2059
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2062
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2064
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2066
    :cond_8
    return-void

    .line 1980
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1981
    .restart local v11    # "isSelected":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1983
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1985
    .restart local v10    # "isPressed":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1986
    .restart local v16    # "updateChildPressed":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1999
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 2001
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2002
    iget v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2003
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2006
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedStateEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mActivatedBackgroundIndicator:I

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mActivatedBackgroundIndicator:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2010
    :cond_11
    if-eqz p4, :cond_12

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/tencent/qrom/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_12
    const/16 v19, 0x0

    goto :goto_c

    .line 2024
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2038
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_14
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    .line 2042
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/qrom/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2047
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_16
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 2054
    .restart local v7    # "childTop":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2055
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v1

    .line 696
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 697
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 699
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 701
    .local v3, "listBottom":I
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 687
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mScrollY:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 688
    .local v0, "listTop":I
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 530
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 490
    new-instance v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    .line 491
    .local v0, "info":Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 492
    iput-object p2, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 493
    iput-boolean p3, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 494
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 516
    :cond_0
    return-void

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 499
    iget-object v1, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 500
    iput-object v0, p0, Lcom/tencent/qrom/widget/ListView;->blurInfo:Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    .line 502
    :cond_2
    iget-object v1, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 503
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTempFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTempFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mTempFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->blurInfo:Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 430
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 399
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/tencent/qrom/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_0
    new-instance v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    .line 405
    .local v0, "info":Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 406
    iput-object p2, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 407
    iput-boolean p3, v0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 408
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 415
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2531
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mInLayout:Z

    .line 2532
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2533
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2534
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 4621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->qromInitQromScrollBarDrawable(Z)V

    .line 4623
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public blurRecycle()V
    .locals 1

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4266
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4269
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4270
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4272
    :cond_1
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2070
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeBottomBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4431
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 4432
    return-void
.end method

.method public changeTopBlurDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4427
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 4428
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mCachingStarted:Z

    move/from16 v41, v0

    if-eqz v41, :cond_0

    .line 3274
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/ListView;->mCachingActive:Z

    .line 3278
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 3279
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    .line 3280
    .local v36, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    .line 3281
    .local v35, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v36, :cond_e

    const/4 v13, 0x1

    .line 3282
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v35, :cond_f

    const/4 v12, 0x1

    .line 3283
    .local v12, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_10

    const/4 v11, 0x1

    .line 3285
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_17

    .line 3287
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3288
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mPaddingLeft:I

    move/from16 v41, v0

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mRight:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mLeft:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mPaddingRight:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3292
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getBottom()I

    move-result v30

    .line 3293
    .local v30, "mBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getTop()I

    move-result v32

    .line 3294
    .local v32, "mTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getScrollY()I

    move-result v31

    .line 3296
    .local v31, "mScrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v9

    .line 3297
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 3298
    .local v21, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    move/from16 v27, v0

    .line 3300
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    sub-int v20, v27, v41

    .line 3302
    .local v20, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v22, v0

    .line 3303
    .local v22, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v19, v0

    .line 3304
    .local v19, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3305
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/qrom/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3306
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3311
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->isOpaque()Z

    move-result v41

    if-eqz v41, :cond_11

    invoke-super/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isOpaque()Z

    move-result v41

    if-nez v41, :cond_11

    const/16 v16, 0x1

    .line 3313
    .local v16, "fillForMissingDividers":Z
    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v41, v0

    if-nez v41, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2

    .line 3314
    new-instance v41, Landroid/graphics/Paint;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getCacheColorHint()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Landroid/graphics/Paint;->setColor(I)V

    .line 3317
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    .line 3319
    .local v37, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3320
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3321
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mGroupFlags:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x22

    const/16 v42, 0x22

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3

    .line 3322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3326
    :cond_3
    sub-int v41, v30, v32

    sub-int v41, v41, v14

    add-int v29, v41, v31

    .line 3328
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    move/from16 v41, v0

    if-nez v41, :cond_18

    .line 3329
    const/4 v6, 0x0

    .line 3332
    .local v6, "bottom":I
    move/from16 v38, v31

    .line 3333
    .local v38, "scrollY":I
    if-lez v9, :cond_4

    .line 3334
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getTop()I

    move-result v18

    .line 3335
    .local v18, "firstTop":I
    if-lez v18, :cond_4

    .line 3336
    sub-int v41, v18, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3337
    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3338
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v7, v2}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3342
    .end local v18    # "firstTop":I
    :cond_4
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v9, :cond_16

    .line 3343
    add-int v28, v17, v23

    .line 3344
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    const/16 v25, 0x1

    .line 3345
    .local v25, "isHeader":Z
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    const/16 v24, 0x1

    .line 3346
    .local v24, "isFooter":Z
    :goto_6
    if-nez v22, :cond_5

    if-nez v25, :cond_d

    :cond_5
    if-nez v19, :cond_6

    if-nez v24, :cond_d

    .line 3347
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3348
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3349
    add-int/lit8 v41, v9, -0x1

    move/from16 v0, v23

    move/from16 v1, v41

    if-ne v0, v1, :cond_14

    const/16 v26, 0x1

    .line 3351
    .local v26, "isLastItem":Z
    :goto_7
    if-eqz v11, :cond_d

    move/from16 v0, v29

    if-ge v6, v0, :cond_d

    .line 3352
    add-int/lit8 v33, v28, 0x1

    .line 3355
    .local v33, "nextIndex":I
    if-nez v5, :cond_c

    move/from16 v0, v28

    if-ge v0, v9, :cond_7

    if-eqz v9, :cond_7

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v41

    if-nez v41, :cond_9

    :cond_7
    if-eqz v22, :cond_8

    if-nez v25, :cond_9

    :cond_8
    if-eqz v19, :cond_15

    if-eqz v24, :cond_15

    :cond_9
    if-nez v26, :cond_c

    move/from16 v0, v33

    if-ge v0, v9, :cond_a

    if-eqz v9, :cond_a

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v41

    if-nez v41, :cond_c

    :cond_a
    if-eqz v22, :cond_b

    move/from16 v0, v33

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    :cond_b
    if-eqz v19, :cond_15

    move/from16 v0, v33

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    .line 3360
    :cond_c
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3361
    add-int v41, v6, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3342
    .end local v8    # "child":Landroid/view/View;
    .end local v26    # "isLastItem":Z
    .end local v33    # "nextIndex":I
    :cond_d
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 3281
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v19    # "footerDividers":Z
    .end local v20    # "footerLimit":I
    .end local v21    # "headerCount":I
    .end local v22    # "headerDividers":Z
    .end local v23    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v30    # "mBottom":I
    .end local v31    # "mScrollY":I
    .end local v32    # "mTop":I
    .end local v37    # "paint":Landroid/graphics/Paint;
    .end local v38    # "scrollY":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3282
    .restart local v13    # "drawOverscrollHeader":Z
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3283
    .restart local v12    # "drawOverscrollFooter":Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3311
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v11    # "drawDividers":Z
    .restart local v17    # "first":I
    .restart local v19    # "footerDividers":Z
    .restart local v20    # "footerLimit":I
    .restart local v21    # "headerCount":I
    .restart local v22    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v30    # "mBottom":I
    .restart local v31    # "mScrollY":I
    .restart local v32    # "mTop":I
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3344
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v23    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v29    # "listBottom":I
    .restart local v37    # "paint":Landroid/graphics/Paint;
    .restart local v38    # "scrollY":I
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 3345
    .restart local v25    # "isHeader":Z
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 3349
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    :cond_14
    const/16 v26, 0x0

    goto :goto_7

    .line 3363
    .restart local v26    # "isLastItem":Z
    .restart local v33    # "nextIndex":I
    :cond_15
    if-eqz v16, :cond_d

    .line 3364
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3365
    add-int v41, v6, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3366
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 3373
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v33    # "nextIndex":I
    :cond_16
    add-int v34, v30, v31

    .line 3374
    .local v34, "overFooterBottom":I
    if-eqz v12, :cond_17

    add-int v41, v17, v9

    move/from16 v0, v41

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move/from16 v0, v34

    if-le v0, v6, :cond_17

    .line 3376
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3377
    move/from16 v0, v34

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v7}, Lcom/tencent/qrom/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3434
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v19    # "footerDividers":Z
    .end local v20    # "footerLimit":I
    .end local v21    # "headerCount":I
    .end local v22    # "headerDividers":Z
    .end local v23    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v30    # "mBottom":I
    .end local v31    # "mScrollY":I
    .end local v32    # "mTop":I
    .end local v34    # "overFooterBottom":I
    .end local v37    # "paint":Landroid/graphics/Paint;
    .end local v38    # "scrollY":I
    :cond_17
    :goto_9
    invoke-super/range {p0 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3435
    return-void

    .line 3383
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v19    # "footerDividers":Z
    .restart local v20    # "footerLimit":I
    .restart local v21    # "headerCount":I
    .restart local v22    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v30    # "mBottom":I
    .restart local v31    # "mScrollY":I
    .restart local v32    # "mTop":I
    .restart local v37    # "paint":Landroid/graphics/Paint;
    :cond_18
    move/from16 v38, v31

    .line 3385
    .restart local v38    # "scrollY":I
    if-lez v9, :cond_19

    if-eqz v13, :cond_19

    .line 3386
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3387
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getTop()I

    move-result v41

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v7}, Lcom/tencent/qrom/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3391
    :cond_19
    if-eqz v13, :cond_1e

    const/16 v39, 0x1

    .line 3392
    .local v39, "start":I
    :goto_a
    move/from16 v23, v39

    .restart local v23    # "i":I
    :goto_b
    move/from16 v0, v23

    if-ge v0, v9, :cond_20

    .line 3393
    if-nez v22, :cond_1a

    add-int v41, v17, v23

    move/from16 v0, v41

    move/from16 v1, v21

    if-lt v0, v1, :cond_1d

    :cond_1a
    if-nez v19, :cond_1b

    add-int v41, v17, v23

    move/from16 v0, v41

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    .line 3395
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3396
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v40

    .line 3398
    .local v40, "top":I
    move/from16 v0, v40

    if-le v0, v15, :cond_1d

    .line 3399
    if-nez v5, :cond_1c

    add-int v41, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->hasDivider(I)Z

    move-result v41

    if-eqz v41, :cond_1f

    add-int/lit8 v41, v9, -0x1

    move/from16 v0, v23

    move/from16 v1, v41

    if-eq v0, v1, :cond_1c

    add-int v41, v17, v23

    add-int/lit8 v41, v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->hasDivider(I)Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 3402
    :cond_1c
    sub-int v41, v40, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3403
    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3408
    add-int/lit8 v41, v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v7, v2}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3392
    .end local v8    # "child":Landroid/view/View;
    .end local v40    # "top":I
    :cond_1d
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 3391
    .end local v23    # "i":I
    .end local v39    # "start":I
    :cond_1e
    const/16 v39, 0x0

    goto :goto_a

    .line 3409
    .restart local v8    # "child":Landroid/view/View;
    .restart local v23    # "i":I
    .restart local v39    # "start":I
    .restart local v40    # "top":I
    :cond_1f
    if-eqz v16, :cond_1d

    .line 3410
    sub-int v41, v40, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3411
    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3412
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 3418
    .end local v8    # "child":Landroid/view/View;
    .end local v40    # "top":I
    :cond_20
    if-lez v9, :cond_17

    if-lez v38, :cond_17

    .line 3419
    if-eqz v12, :cond_21

    .line 3420
    move/from16 v3, v30

    .line 3421
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3422
    add-int v41, v3, v38

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v7}, Lcom/tencent/qrom/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_9

    .line 3424
    .end local v3    # "absListBottom":I
    :cond_21
    if-eqz v11, :cond_17

    .line 3425
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3426
    add-int v41, v29, v10

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3427
    const/16 v41, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v7, v2}, Lcom/tencent/qrom/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2213
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2214
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2217
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/tencent/qrom/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2223
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v6, 0x7a0b002a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4055
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v0, :cond_a

    .line 4057
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 4058
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 4059
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4060
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4061
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4066
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 4067
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 4070
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 4071
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 4072
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4073
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopBgBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4078
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 4079
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 4082
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4083
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 4084
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4086
    :cond_3
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 4087
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4089
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4090
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_8

    .line 4091
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListView;->bottomBitmap:Landroid/graphics/Bitmap;

    .line 4098
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4099
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->bottomBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForBottomRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4103
    :cond_4
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4104
    sget-boolean v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    if-eqz v0, :cond_9

    .line 4105
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListView;->topBitmap:Landroid/graphics/Bitmap;

    .line 4112
    :goto_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->topBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4113
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->topBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurForTopRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4120
    :cond_5
    :goto_4
    return-void

    .line 4063
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 4075
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mForTopCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 4094
    :cond_8
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mForBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListView;->bottomBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 4108
    :cond_9
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlur:Lcom/tencent/qrom/gaussblur/JNIBlur;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mForTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListView;->topBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 4118
    :cond_a
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3439
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3440
    .local v0, "more":Z
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mCachingActive:Z

    .line 3443
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3459
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3460
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3461
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3246
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3248
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3249
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3251
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3252
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3253
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3256
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3257
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3260
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3229
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3231
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3232
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3234
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3235
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3236
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3239
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3240
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3243
    return-void
.end method

.method public enableBottomBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4398
    if-eqz p1, :cond_4

    .line 4399
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 4400
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-lez v1, :cond_1

    .line 4401
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    .line 4402
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4403
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4404
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4405
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 4406
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4412
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4414
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurInit()V

    .line 4423
    :cond_2
    :goto_1
    return p1

    .line 4409
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4417
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 4418
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurInit()V

    .line 4419
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4420
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottomBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public enableTopBlur(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4369
    if-eqz p1, :cond_4

    .line 4370
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 4371
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    if-lez v1, :cond_1

    .line 4372
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    .line 4373
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4374
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4375
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 4377
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4383
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4385
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurInit()V

    .line 4394
    :cond_2
    :goto_1
    return p1

    .line 4380
    .restart local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4388
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 4389
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurInit()V

    .line 4390
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4391
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mTopBlurView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "down"    # Z

    .prologue
    const/16 v5, 0x22

    .line 790
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    .line 791
    .local v0, "count":I
    if-eqz p1, :cond_3

    .line 792
    const/4 v2, 0x0

    .line 793
    .local v2, "paddingTop":I
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 797
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 800
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/tencent/qrom/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 801
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->isNeedBounce()Z

    move-result v4

    if-nez v4, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/ListView;->correctTooHigh(I)V

    .line 816
    .end local v2    # "paddingTop":I
    :cond_1
    :goto_1
    return-void

    .line 797
    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_2
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTop:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int v3, v4, v5

    goto :goto_0

    .line 804
    .end local v2    # "paddingTop":I
    :cond_3
    const/4 v1, 0x0

    .line 805
    .local v1, "paddingBottom":I
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_4

    .line 806
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 809
    :cond_4
    if-lez v0, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 812
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 813
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->isNeedBounce()Z

    move-result v4

    if-nez v4, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 809
    .end local v3    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    sub-int v3, v4, v5

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    .line 1462
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1463
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1465
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1466
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1467
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1479
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1464
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1472
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1473
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1474
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1471
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1479
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3766
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3767
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3770
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3771
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3773
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3774
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3776
    if-eqz v2, :cond_0

    .line 3782
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3770
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3782
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3744
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3745
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3746
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/qrom/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3747
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3756
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3751
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/qrom/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3752
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3753
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3756
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3671
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3672
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3675
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3676
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3678
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3679
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3681
    if-eqz v2, :cond_0

    .line 3687
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3675
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3687
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3652
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3653
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3654
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/tencent/qrom/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3655
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3663
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3658
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/tencent/qrom/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3659
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3660
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3663
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3717
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3718
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3721
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3722
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3724
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3725
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3727
    if-eqz v2, :cond_0

    .line 3733
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3721
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3733
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3697
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3698
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3699
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/tencent/qrom/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3700
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3709
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3704
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/tencent/qrom/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3705
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3706
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3709
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    .line 2446
    const/4 v0, 0x0

    .line 2447
    .local v0, "moved":Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2448
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2449
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2450
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 2451
    iput v4, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2452
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->setSelectionInt(I)V

    .line 2453
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V

    .line 2455
    :cond_0
    const/4 v0, 0x1

    .line 2469
    .end local v1    # "position":I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2470
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->awakenScrollBars()Z

    .line 2471
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 2474
    :cond_2
    return v0

    .line 2457
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2458
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2459
    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2460
    .restart local v1    # "position":I
    if-ltz v1, :cond_4

    .line 2461
    const/4 v2, 0x3

    iput v2, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2462
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->setSelectionInt(I)V

    .line 2463
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V

    .line 2465
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getBlurBottomBgBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4554
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBlurBottomHeight()I
    .locals 1

    .prologue
    .line 4570
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    return v0
.end method

.method public getBlurTopBgBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopBgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBlurTopHeight()I
    .locals 1

    .prologue
    .line 4566
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    return v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3797
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3798
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3827
    :cond_0
    :goto_0
    return-object v5

    .line 3803
    :cond_1
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3804
    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3805
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3806
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3807
    .local v5, "ids":[J
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3809
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3810
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3811
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3812
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3810
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 3818
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3821
    new-array v6, v2, [J

    .line 3822
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3824
    goto :goto_0

    .line 3827
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3494
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3187
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 332
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedStateEnabled()Z
    .locals 1

    .prologue
    .line 4026
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedStateEnabled:Z

    return v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4030
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4032
    .local v0, "normalColor":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#64c5cb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4034
    .local v1, "pressedColor":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4035
    .local v2, "sld":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v6, [I

    const v4, -0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4036
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4037
    return-object v2
.end method

.method protected hasDivider(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3265
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 3266
    const/4 v1, 0x0

    .line 3268
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4612
    const-string v0, "qrom.widget.ListView"

    const-string v1, "initializeScrollbars"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->qromInitQromScrollBarDrawable(Z)V

    .line 4616
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 4617
    return-void
.end method

.method public isOpaque()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 3192
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3194
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3197
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int v3, v5, v7

    .line 3199
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3200
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3212
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3192
    goto :goto_0

    .line 3197
    .restart local v4    # "retValue":Z
    :cond_5
    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mPaddingTop:I

    goto :goto_1

    .line 3204
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    add-int/2addr v5, v8

    :goto_3
    sub-int v2, v7, v5

    .line 3207
    .local v2, "listBottom":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3208
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3209
    goto :goto_2

    .line 3204
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_8
    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 27

    .prologue
    .line 1638
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    .line 1639
    .local v8, "blockLayoutRequests":Z
    if-nez v8, :cond_0

    .line 1640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    .line 1646
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->resetList()V

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    if-nez v8, :cond_0

    .line 1892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    move/from16 v25, v0

    add-int v6, v2, v25

    .line 1658
    .local v6, "childrenTop":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mTop:I

    move/from16 v25, v0

    sub-int v2, v2, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v2, v2, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    move/from16 v25, v0

    sub-int v7, v2, v25

    .line 1661
    .local v7, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v10

    .line 1662
    .local v10, "childCount":I
    const/16 v20, 0x0

    .line 1663
    .local v20, "index":I
    const/4 v5, 0x0

    .line 1666
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1667
    .local v3, "oldSel":Landroid/view/View;
    const/16 v21, 0x0

    .line 1668
    .local v21, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1670
    .local v4, "newSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1673
    .local v15, "focusLayoutRestoreView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1688
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v20, v2, v25

    .line 1689
    if-ltz v20, :cond_2

    move/from16 v0, v20

    if-ge v0, v10, :cond_2

    .line 1690
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1694
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 1696
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1697
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    move/from16 v25, v0

    sub-int v5, v2, v25

    .line 1701
    :cond_3
    add-int v2, v20, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1705
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/tencent/qrom/widget/ListView;->mDataChanged:Z

    .line 1706
    .local v11, "dataChanged":Z
    if-eqz v11, :cond_5

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->handleDataChanged()V

    .line 1712
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->resetList()V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    if-nez v8, :cond_0

    .line 1892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1675
    .end local v11    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v20, v2, v25

    .line 1676
    if-ltz v20, :cond_4

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1677
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1716
    .restart local v11    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v0, v25

    if-eq v2, v0, :cond_8

    .line 1717
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") with Adapter("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1891
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenTop":I
    .end local v7    # "childrenBottom":I
    .end local v10    # "childCount":I
    .end local v11    # "dataChanged":Z
    .end local v15    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v20    # "index":I
    .end local v21    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_7

    .line 1892
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    :cond_7
    throw v2

    .line 1726
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenTop":I
    .restart local v7    # "childrenBottom":I
    .restart local v10    # "childCount":I
    .restart local v11    # "dataChanged":Z
    .restart local v15    # "focusLayoutRestoreView":Landroid/view/View;
    .restart local v20    # "index":I
    .restart local v21    # "oldFirst":Landroid/view/View;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->setSelectedPositionInt(I)V

    .line 1730
    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 1732
    .local v12, "firstPosition":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qrom/widget/ListView;->mFirstTop:I

    .line 1734
    .local v13, "firstTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v23, v0

    .line 1737
    .local v23, "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    const/4 v14, 0x0

    .line 1741
    .local v14, "focusLayoutRestoreDirectChild":Landroid/view/View;
    if-eqz v11, :cond_9

    .line 1742
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v10, :cond_a

    .line 1743
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v25, v12, v19

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1742
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1750
    .end local v19    # "i":I
    :cond_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v12}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1757
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1758
    .local v18, "focusedChild":Landroid/view/View;
    if-eqz v18, :cond_d

    .line 1763
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1764
    :cond_b
    move-object/from16 v14, v18

    .line 1766
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v15

    .line 1767
    if-eqz v15, :cond_c

    .line 1769
    invoke-virtual {v15}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1772
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->requestFocus()Z

    .line 1776
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->detachAllViewsFromParent()V

    .line 1778
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1805
    if-nez v10, :cond_16

    .line 1806
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_15

    .line 1807
    const/4 v2, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v22

    .line 1808
    .local v22, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->setSelectedPositionInt(I)V

    .line 1809
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/tencent/qrom/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1830
    .end local v6    # "childrenTop":I
    .end local v22    # "position":I
    .local v24, "sel":Landroid/view/View;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1832
    if-eqz v24, :cond_1e

    .line 1835
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1836
    move-object/from16 v0, v24

    if-ne v0, v14, :cond_e

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_f
    const/16 v16, 0x1

    .line 1838
    .local v16, "focusWasTaken":Z
    :goto_4
    if-nez v16, :cond_1c

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1843
    .local v17, "focused":Landroid/view/View;
    if-eqz v17, :cond_10

    .line 1844
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearFocus()V

    .line 1846
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1854
    .end local v16    # "focusWasTaken":Z
    .end local v17    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedTop:I

    .line 1873
    :cond_11
    :goto_6
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1875
    invoke-virtual {v15}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1878
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 1879
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mDataChanged:Z

    .line 1880
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mNeedSync:Z

    .line 1881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->updateScrollIndicators()V

    .line 1885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-lez v2, :cond_13

    .line 1886
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->checkSelectionChanged()V

    .line 1889
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1891
    if-nez v8, :cond_0

    .line 1892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1780
    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :pswitch_2
    if-eqz v4, :cond_14

    .line 1781
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/tencent/qrom/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1783
    .end local v24    # "sel":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/tencent/qrom/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .line 1785
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1787
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mSpecificTop:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1788
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1790
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v24

    .line 1791
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1794
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 1795
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/tencent/qrom/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1796
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1799
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mSpecificTop:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1800
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1802
    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .line 1803
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1811
    .end local v24    # "sel":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v22

    .line 1812
    .restart local v22    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->setSelectedPositionInt(I)V

    .line 1813
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/tencent/qrom/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v24

    .line 1814
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1816
    .end local v22    # "position":I
    .end local v24    # "sel":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v2, v0, :cond_18

    .line 1817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-nez v3, :cond_17

    .end local v6    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/tencent/qrom/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1819
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v2, v0, :cond_1a

    .line 1820
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    if-nez v21, :cond_19

    .end local v6    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/tencent/qrom/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_19
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1823
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/tencent/qrom/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1836
    .end local v6    # "childrenTop":I
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1848
    .restart local v16    # "focusWasTaken":Z
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1852
    .end local v16    # "focusWasTaken":Z
    :cond_1d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qrom/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1856
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mTouchMode:I

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mTouchMode:I

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v2, v0, :cond_20

    .line 1857
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v2, v2, v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1858
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/tencent/qrom/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1866
    .end local v9    # "child":Landroid/view/View;
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v15, :cond_11

    .line 1867
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1860
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectedTop:I

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    .line 1673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1778
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2159
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2160
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2186
    :cond_0
    :goto_0
    return v2

    .line 2164
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2165
    .local v1, "count":I
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2166
    if-eqz p2, :cond_2

    .line 2167
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2168
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2169
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2172
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2173
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2174
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2178
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2181
    goto :goto_0

    .line 2183
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2186
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1398
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1399
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    add-int v6, v10, v11

    .line 1456
    :cond_0
    :goto_0
    return v6

    .line 1405
    :cond_1
    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    add-int v9, v10, v11

    .line 1407
    .local v9, "returnedHeight":I
    iget v10, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 1410
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1415
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1416
    :cond_2
    iget-object v7, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    .line 1417
    .local v7, "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1418
    .local v8, "recyle":Z
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    .line 1420
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1421
    invoke-virtual {p0, v4, v5}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1423
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/tencent/qrom/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1425
    if-lez v4, :cond_3

    .line 1427
    add-int/2addr v9, v3

    .line 1431
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v10, v10, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1433
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1436
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1438
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1441
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1407
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1449
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1450
    move v6, v9

    .line 1420
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1456
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 3883
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->onAttachedToWindow()V

    .line 3885
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mShowEmptyList:Z

    if-eqz v0, :cond_0

    .line 3887
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->addEmptyView()V

    .line 3889
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4124
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->onDetachedFromWindow()V

    .line 4125
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurRecycleFlag:Z

    if-nez v0, :cond_0

    .line 4126
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->blurRecycle()V

    .line 4128
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3634
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->onFinishInflate()V

    .line 3636
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v0

    .line 3637
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3638
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3639
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3641
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->removeAllViews()V

    .line 3643
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3576
    invoke-super/range {p0 .. p3}, Lcom/tencent/qrom/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3578
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3579
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3580
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3581
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3582
    iget v12, p0, Lcom/tencent/qrom/widget/ListView;->mScrollX:I

    iget v13, p0, Lcom/tencent/qrom/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3586
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3587
    const/4 v12, 0x0

    iput v12, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 3588
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->layoutChildren()V

    .line 3593
    :cond_0
    iget-object v11, p0, Lcom/tencent/qrom/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3594
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3595
    .local v9, "minDistance":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v3

    .line 3596
    .local v3, "childCount":I
    iget v7, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    .line 3598
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3600
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3598
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3604
    :cond_2
    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3605
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3606
    invoke-virtual {p0, v10, v11}, Lcom/tencent/qrom/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3607
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/tencent/qrom/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3609
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3611
    move v9, v6

    .line 3612
    move v5, v8

    .line 3613
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3618
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3619
    iget v12, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Lcom/tencent/qrom/widget/ListView;->setSelectionFromTop(II)V

    .line 3623
    :goto_2
    return-void

    .line 3621
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2228
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2233
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2238
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1284
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->onMeasure(II)V

    .line 1286
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1287
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1288
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1289
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1291
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1292
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1293
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1295
    .local v8, "childState":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    .line 1296
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1300
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/tencent/qrom/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1302
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1303
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1304
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/tencent/qrom/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1306
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1312
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1313
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1320
    :goto_1
    if-nez v10, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mFirstTopOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mLastBottomOffset:I

    add-int v4, v0, v1

    .line 1326
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1328
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1331
    :cond_3
    invoke-virtual {p0, v12, v4}, Lcom/tencent/qrom/widget/ListView;->setMeasuredDimension(II)V

    .line 1332
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mWidthMeasureSpec:I

    .line 1333
    return-void

    .line 1295
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_0

    .line 1316
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1263
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1264
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1265
    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1266
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1267
    .local v0, "childBottom":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/qrom/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1268
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1269
    .local v4, "top":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mFocusSelector:Lcom/tencent/qrom/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1270
    new-instance v5, Lcom/tencent/qrom/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/tencent/qrom/widget/ListView$FocusSelector;-><init>(Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/widget/ListView$1;)V

    iput-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mFocusSelector:Lcom/tencent/qrom/widget/ListView$FocusSelector;

    .line 1272
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mFocusSelector:Lcom/tencent/qrom/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/tencent/qrom/widget/ListView$FocusSelector;->setup(II)Lcom/tencent/qrom/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1275
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1276
    if-ne p1, p3, :cond_2

    if-eq p2, p4, :cond_3

    .line 1277
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurInit()V

    .line 1279
    :cond_3
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2400
    const/4 v1, -0x1

    .line 2401
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2403
    .local v0, "down":Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2404
    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2410
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2411
    invoke-virtual {p0, v1, v0}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2412
    .local v2, "position":I
    if-ltz v2, :cond_5

    .line 2413
    const/4 v4, 0x4

    iput v4, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2414
    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/qrom/widget/ListView;->mSpecificTop:I

    .line 2416
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2417
    const/4 v4, 0x3

    iput v4, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2420
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2421
    iput v3, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2424
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/ListView;->setSelectionInt(I)V

    .line 2425
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invokeOnItemScrollListener()V

    .line 2426
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2427
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 2434
    .end local v2    # "position":I
    :cond_3
    :goto_1
    return v3

    .line 2405
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2406
    iget v5, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2407
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2434
    goto :goto_1
.end method

.method final qromMeasureHeightOfChildren(IIIII)I
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3834
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3835
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 3875
    :cond_0
    return v7

    .line 3839
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 3840
    .local v7, "returnedHeight":I
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget v2, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 3847
    .local v2, "dividerHeight":I
    :goto_0
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 3848
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    .line 3849
    .local v5, "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->recycleOnMeasure()Z

    move-result v6

    .line 3850
    .local v6, "recyle":Z
    iget-object v4, p0, Lcom/tencent/qrom/widget/ListView;->mIsScrap:[Z

    .line 3852
    .local v4, "isScrap":[Z
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-gt v3, p3, :cond_0

    .line 3853
    invoke-virtual {p0, v3, v4}, Lcom/tencent/qrom/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3855
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/tencent/qrom/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 3863
    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v8, v8, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v8}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3865
    const/4 v8, -0x1

    invoke-virtual {v5, v1, v8}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3868
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 3852
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3840
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "dividerHeight":I
    .end local v3    # "i":I
    .end local v4    # "isScrap":[Z
    .end local v5    # "recycleBin":Lcom/tencent/qrom/widget/AbsListView$RecycleBin;
    .end local v6    # "recyle":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public qromUpdateItemViewTranslation(IIFI)V
    .locals 10
    .param p1, "lastPosition"    # I
    .param p2, "position"    # I
    .param p3, "positionOffset"    # F
    .param p4, "index"    # I

    .prologue
    .line 4522
    if-le p1, p2, :cond_1

    move v0, p2

    .line 4524
    .local v0, "animationPosition":I
    :goto_0
    if-ne v0, p4, :cond_5

    .line 4525
    sub-int v8, v0, p2

    int-to-float v8, v8

    sub-float v3, v8, p3

    .line 4526
    .local v3, "fraction":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 4547
    .end local v3    # "fraction":F
    :cond_0
    return-void

    .line 4522
    .end local v0    # "animationPosition":I
    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 4530
    .restart local v0    # "animationPosition":I
    .restart local v3    # "fraction":F
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4532
    .local v6, "minChildCount":I
    iget v8, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    if-nez v8, :cond_3

    const/4 v1, 0x0

    .line 4533
    .local v1, "bottomCount":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 4534
    add-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v1

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v5, v8, v9

    .line 4535
    .local v5, "maxTranslationX":F
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4536
    .local v2, "child":Landroid/view/View;
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float v7, v5, v8

    .line 4537
    .local v7, "translationX":F
    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 4539
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_4

    .end local v7    # "translationX":F
    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 4533
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4532
    .end local v1    # "bottomCount":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "maxTranslationX":F
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 4539
    .restart local v1    # "bottomCount":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v5    # "maxTranslationX":F
    .restart local v7    # "translationX":F
    :cond_4
    neg-float v7, v7

    goto :goto_3

    .line 4542
    .end local v1    # "bottomCount":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "fraction":F
    .end local v4    # "i":I
    .end local v5    # "maxTranslationX":F
    .end local v6    # "minChildCount":I
    .end local v7    # "translationX":F
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 4543
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4544
    .restart local v2    # "child":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 4542
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1364
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 545
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/tencent/qrom/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tencent/qrom/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 556
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/tencent/qrom/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 451
    :cond_0
    const/4 v0, 0x1

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tencent/qrom/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 456
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewWithAnimator(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 4438
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4473
    :cond_0
    :goto_0
    return-void

    .line 4442
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedViews:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4443
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRemovedPositions:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4444
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mActiveRemoveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mActiveRemoveCount:I

    .line 4445
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    aput v3, v1, v2

    aput v4, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4446
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/tencent/qrom/widget/ListView$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qrom/widget/ListView$2;-><init>(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4454
    new-instance v1, Lcom/tencent/qrom/widget/ListView$3;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/ListView$3;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4472
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 709
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 712
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 715
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getHeight()I

    move-result v6

    .line 716
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getScrollY()I

    move-result v8

    .line 717
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 718
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 720
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 722
    iget v13, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 723
    :cond_0
    add-int/2addr v8, v5

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->getChildCount()I

    move-result v2

    .line 728
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 730
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 732
    iget v13, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 734
    :cond_2
    sub-int/2addr v7, v5

    .line 738
    :cond_3
    const/4 v11, 0x0

    .line 740
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 747
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 754
    :goto_0
    sub-int v4, v1, v7

    .line 755
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 775
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 776
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 777
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/tencent/qrom/widget/ListView;->scrollListItemsBy(I)V

    .line 778
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/tencent/qrom/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedTop:I

    .line 780
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 782
    :cond_5
    return v10

    .line 750
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 756
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 763
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 770
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/tencent/qrom/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 771
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 772
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 766
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 775
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 662
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 664
    invoke-super {p0}, Lcom/tencent/qrom/widget/AbsListView;->resetList()V

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 667
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 105
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView;->blurSetup()V

    .line 604
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->resetList()V

    .line 605
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->clear()V

    .line 607
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 608
    :cond_1
    new-instance v1, Lcom/tencent/qrom/widget/HeaderViewListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/tencent/qrom/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 613
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mOldSelectedPosition:I

    .line 614
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/tencent/qrom/widget/ListView;->mOldSelectedRowId:J

    .line 617
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 620
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mAreAllItemsSelectable:Z

    .line 621
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mOldItemCount:I

    .line 622
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    .line 623
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->checkFocus()V

    .line 625
    new-instance v1, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    .line 626
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 628
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 631
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 632
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 636
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setSelectedPositionInt(I)V

    .line 637
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 639
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 641
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->checkSelectionChanged()V

    .line 650
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->requestLayout()V

    .line 651
    return-void

    .line 610
    :cond_3
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 634
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 644
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/ListView;->mAreAllItemsSelectable:Z

    .line 645
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->checkFocus()V

    .line 647
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setBlurBottomBgBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4550
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomBgBitmap:Landroid/graphics/Bitmap;

    .line 4551
    return-void
.end method

.method public setBlurTopBgBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4558
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopBgBitmap:Landroid/graphics/Bitmap;

    .line 4559
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3217
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3218
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3219
    if-eqz v0, :cond_1

    .line 3220
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3221
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3225
    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setCacheColorHint(I)V

    .line 3226
    return-void

    .line 3217
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3479
    if-eqz p1, :cond_2

    .line 3480
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 3484
    :goto_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mDividerIsOpaque:Z

    .line 3486
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->requestLayout()V

    .line 3487
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3488
    return-void

    .line 3482
    :cond_2
    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3504
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mDividerHeight:I

    .line 3505
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->requestLayout()V

    .line 3506
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3507
    return-void
.end method

.method public setFirstItemHigher(Z)Z
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4329
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mFirstItemHigher:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v1

    .line 4345
    .end local p1    # "flag":Z
    :cond_0
    :goto_0
    return p1

    .line 4332
    .restart local p1    # "flag":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 4333
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    .line 4334
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4335
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4336
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mFirstItemHigher:Z

    .line 4337
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 4340
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4341
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mFirstItemHigher:Z

    .line 4342
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public setFooterBlank(Z)Z
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 4283
    if-eqz p1, :cond_0

    .line 4284
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    .line 4287
    :goto_0
    return p1

    .line 4286
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    goto :goto_0
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3531
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListView;->mFooterDividersEnabled:Z

    .line 3532
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3533
    return-void
.end method

.method public setHeaderBlank(Z)Z
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 4292
    if-eqz p1, :cond_0

    .line 4293
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    .line 4296
    :goto_0
    return p1

    .line 4295
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderBlankWithStatusbar(Z)Z
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 4301
    if-eqz p1, :cond_0

    .line 4302
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    .line 4306
    :goto_0
    return p1

    .line 4305
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderBlankWithStatusbar(ZI)Z
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "height"    # I

    .prologue
    .line 4310
    if-eqz p1, :cond_0

    .line 4311
    iput p2, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    .line 4322
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mBlurBottomHeight:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/ListView;->qromSetParameters(II)V

    .line 4324
    return p1

    .line 4313
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mBlurTopHeight:I

    goto :goto_0
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3518
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3519
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3520
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3176
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListView;->mItemsCanFocus:Z

    .line 3177
    if-nez p1, :cond_0

    .line 3178
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setDescendantFocusability(I)V

    .line 3180
    :cond_0
    return-void
.end method

.method public setLastItemHigher(Z)Z
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4349
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mLastItemHigher:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v1

    .line 4365
    .end local p1    # "flag":Z
    :cond_0
    :goto_0
    return p1

    .line 4352
    .restart local p1    # "flag":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 4353
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    .line 4354
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tencent/qrom/widget/ListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4355
    .local v0, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListView;->mLastItemHigher:Z

    .line 4357
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/qrom/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 4360
    .end local v0    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4361
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/ListView;->mLastItemHigher:Z

    .line 4362
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->paddingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public setOnItemRemoveListener(Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;)V
    .locals 0
    .param p1, "onItemRemoveListener"    # Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mOnItemRemoveListener:Lcom/tencent/qrom/widget/ListView$QromOnItemRemoveListener;

    .line 4507
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3563
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3564
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3565
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3543
    iget v0, p0, Lcom/tencent/qrom/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3544
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->invalidate()V

    .line 3546
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method public setSelectedStateEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4022
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedStateEnabled:Z

    .line 4023
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2082
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/ListView;->setSelectionFromTop(II)V

    .line 2083
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2195
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2196
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2197
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    .line 2208
    :goto_0
    return-void

    .line 2201
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2202
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2204
    :cond_1
    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mNextSelectedPosition:I

    .line 2205
    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2101
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2102
    if-ltz p1, :cond_2

    .line 2103
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2109
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2110
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mLayoutMode:I

    .line 2111
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qrom/widget/ListView;->mSpecificTop:I

    .line 2113
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2114
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mSyncPosition:I

    .line 2115
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/widget/ListView;->mSyncRowId:J

    .line 2118
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 2106
    :cond_4
    iput p1, p0, Lcom/tencent/qrom/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2130
    const/4 v0, 0x0

    .line 2132
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Lcom/tencent/qrom/widget/ListView;->mSelectedPosition:I

    .line 2134
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2135
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2136
    const/4 v0, 0x1

    .line 2142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->layoutChildren()V

    .line 2144
    if-eqz v0, :cond_1

    .line 2145
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListView;->awakenScrollBars()Z

    .line 2147
    :cond_1
    return-void

    .line 2137
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1074
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1075
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1064
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1065
    return-void
.end method
