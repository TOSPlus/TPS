.class Lcom/tencent/qrom/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static final ATTRS:[I

.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Lcom/tencent/qrom/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qrom/widget/FastScroller;->ATTRS:[I

    .line 113
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/tencent/qrom/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1479
    new-instance v0, Lcom/tencent/qrom/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1495
    new-instance v0, Lcom/tencent/qrom/widget/FastScroller$5;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1511
    new-instance v0, Lcom/tencent/qrom/widget/FastScroller$6;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1527
    new-instance v0, Lcom/tencent/qrom/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qrom/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 87
    :array_0
    .array-data 4
        0x1010359
        0x1010336
        0x1010339
        0x1010337
        0x1010338
        0x101033a
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 17
    .param p1, "listView"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 117
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 131
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewResId:[I

    .line 164
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mCurrentSection:I

    .line 167
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mScrollbarPosition:I

    .line 221
    new-instance v13, Lcom/tencent/qrom/widget/FastScroller$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/FastScroller$1;-><init>(Lcom/tencent/qrom/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 240
    new-instance v13, Lcom/tencent/qrom/widget/FastScroller$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/FastScroller$2;-><init>(Lcom/tencent/qrom/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 250
    new-instance v13, Lcom/tencent/qrom/widget/FastScroller$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/FastScroller$3;-><init>(Lcom/tencent/qrom/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 258
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOldItemCount:I

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOldChildCount:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 264
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mScaledTouchSlop:I

    .line 266
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 267
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget-object v14, Lcom/tencent/qrom/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 269
    .local v6, "ta":Landroid/content/res/TypedArray;
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v11, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 272
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOldChildCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/FastScroller;->mOldItemCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/tencent/qrom/widget/FastScroller;->updateLongList(II)V

    .line 273
    const/4 v12, 0x0

    .line 276
    .local v12, "width":I
    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 277
    .local v10, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    .line 278
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mHasTrackImage:Z

    .line 279
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xf

    if-le v13, v14, :cond_3

    .line 280
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 286
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 291
    :goto_1
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v9, "thumbImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 295
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 296
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    .line 297
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v13, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 299
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 303
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-gtz v13, :cond_2

    .line 304
    :cond_1
    const v13, 0x7a0d001a

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 305
    .local v3, "minWidth":I
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 306
    const v13, 0x7a0d001b    # 1.83029E35f

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 308
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 311
    .end local v3    # "minWidth":I
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/tencent/qrom/widget/FastScroller;->mWidth:I

    .line 313
    const v13, 0x7a0d0017

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 314
    .local v4, "previewSize":I
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 320
    const v13, 0x7a0d0019

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewPadding:I

    .line 322
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewPadding:I

    sub-int v14, v4, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 323
    .local v7, "textMinSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/tencent/qrom/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/tencent/qrom/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewResId:[I

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v13, v14

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewResId:[I

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v13, v14

    .line 334
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlayPosition:I

    .line 335
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getScrollBarStyle()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mScrollBarStyle:I

    .line 338
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mScrollCompleted:Z

    .line 339
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    .line 340
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mMatchDragPosition:Z

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/FastScroller;->getSectionsFromIndexer()V

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/FastScroller;->refreshDrawablePressedState()V

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/tencent/qrom/widget/FastScroller;->updateLongList(II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v13}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/FastScroller;->setScrollbarPosition(I)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/FastScroller;->postAutoHide()V

    .line 348
    return-void

    .line 283
    .end local v4    # "previewSize":I
    .end local v7    # "textMinSize":I
    .end local v8    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbImage":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 288
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mHasTrackImage:Z

    goto/16 :goto_1

    .line 340
    .restart local v4    # "previewSize":I
    .restart local v7    # "textMinSize":I
    .restart local v8    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "thumbImage":Landroid/widget/ImageView;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/FastScroller;)Lcom/tencent/qrom/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->beginDrag()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/FastScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/FastScroller;F)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/FastScroller;F)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/FastScroller;->scrollTo(F)V

    return-void
.end method

.method static synthetic access$502(Lcom/tencent/qrom/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/qrom/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1472
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1543
    sget-object v4, Lcom/tencent/qrom/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1544
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/tencent/qrom/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1545
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/tencent/qrom/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1546
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/tencent/qrom/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1547
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1465
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 557
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 558
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 559
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1264
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 1266
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1267
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1272
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1275
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelFling()V

    .line 1276
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1238
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1240
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1241
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1242
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z

    .line 1252
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 493
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 495
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 496
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x7a0d0017

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 497
    .local v0, "minSize":I
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 498
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    const v6, 0x7a0d0018

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 499
    .local v4, "textSize":F
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 502
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 504
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 505
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 506
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 509
    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/AbsListView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 511
    return-object v5
.end method

.method private getPosFromItemCount(III)F
    .locals 15
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1166
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 1167
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1170
    :cond_1
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v13

    if-lez v13, :cond_4

    const/4 v2, 0x1

    .line 1172
    .local v2, "hasSections":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_5

    .line 1173
    :cond_2
    move/from16 v0, p1

    int-to-float v13, v0

    sub-int v14, p3, p2

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 1230
    :cond_3
    :goto_1
    return v9

    .line 1170
    .end local v2    # "hasSections":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1177
    .restart local v2    # "hasSections":Z
    :cond_5
    iget v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    sub-int p1, p1, v13

    .line 1178
    if-gez p1, :cond_6

    .line 1179
    const/4 v9, 0x0

    goto :goto_1

    .line 1181
    :cond_6
    iget v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    sub-int p3, p3, v13

    .line 1184
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1186
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-nez v13, :cond_8

    .line 1187
    :cond_7
    const/4 v3, 0x0

    .line 1193
    .local v3, "incrementalPos":F
    :goto_2
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v10

    .line 1194
    .local v10, "section":I
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 1195
    .local v12, "sectionPos":I
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v11, v13

    .line 1197
    .local v11, "sectionCount":I
    add-int/lit8 v13, v11, -0x1

    if-ge v10, v13, :cond_a

    .line 1199
    add-int/lit8 v13, v10, 0x1

    if-ge v13, v11, :cond_9

    .line 1200
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 1204
    .local v6, "nextSectionPos":I
    :goto_3
    sub-int v8, v6, v12

    .line 1211
    .end local v6    # "nextSectionPos":I
    .local v8, "positionsInSection":I
    :goto_4
    if-nez v8, :cond_b

    .line 1212
    const/4 v7, 0x0

    .line 1218
    .local v7, "posWithinSection":F
    :goto_5
    int-to-float v13, v10

    add-float/2addr v13, v7

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 1223
    .local v9, "result":F
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 1224
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1225
    .local v4, "lastChild":Landroid/view/View;
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v13}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v13

    iget-object v14, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v14}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 1227
    .local v5, "lastItemVisible":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v9

    mul-float/2addr v13, v5

    add-float/2addr v9, v13

    goto :goto_1

    .line 1189
    .end local v3    # "incrementalPos":F
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastItemVisible":F
    .end local v7    # "posWithinSection":F
    .end local v8    # "positionsInSection":I
    .end local v9    # "result":F
    .end local v10    # "section":I
    .end local v11    # "sectionCount":I
    .end local v12    # "sectionPos":I
    :cond_8
    iget-object v13, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v13}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v3, v13, v14

    .restart local v3    # "incrementalPos":F
    goto :goto_2

    .line 1202
    .restart local v10    # "section":I
    .restart local v11    # "sectionCount":I
    .restart local v12    # "sectionPos":I
    :cond_9
    add-int/lit8 v6, p3, -0x1

    .restart local v6    # "nextSectionPos":I
    goto :goto_3

    .line 1206
    .end local v6    # "nextSectionPos":I
    :cond_a
    sub-int v8, p3, v12

    .restart local v8    # "positionsInSection":I
    goto :goto_4

    .line 1214
    :cond_b
    move/from16 v0, p1

    int-to-float v13, v0

    add-float/2addr v13, v3

    int-to-float v14, v12

    sub-float/2addr v13, v14

    int-to-float v14, v8

    div-float v7, v13, v14

    .restart local v7    # "posWithinSection":F
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 11
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 1145
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1146
    .local v1, "container":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 1147
    .local v6, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1149
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1150
    .local v7, "trackImage":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    int-to-float v3, v9

    .line 1151
    .local v3, "min":F
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    int-to-float v2, v9

    .line 1152
    .local v2, "max":F
    move v4, v3

    .line 1153
    .local v4, "offset":F
    sub-float v5, v2, v3

    .line 1157
    .local v5, "range":F
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_0

    .line 1161
    :goto_0
    return v8

    :cond_0
    sub-float v9, p1, v4

    div-float/2addr v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v8, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 874
    iput-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 876
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 877
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 878
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    .line 879
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 882
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Lcom/tencent/qrom/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 883
    check-cast v2, Lcom/tencent/qrom/widget/ExpandableListConnector;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ExpandableListConnector;->getAdapter()Lcom/tencent/qrom/widget/ExpandableListAdapter;

    move-result-object v1

    .line 885
    .local v1, "expAdapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 886
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Lcom/tencent/qrom/widget/ExpandableListAdapter;
    iput-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 887
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 888
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 898
    :cond_1
    :goto_0
    return-void

    .line 890
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 891
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 892
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 893
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 895
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 896
    iput-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1446
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1447
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1449
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1450
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1451
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1452
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1449
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1454
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1458
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1416
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasTrackImage:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1420
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1421
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1421
    goto :goto_0

    .line 1423
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1428
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1429
    .local v1, "offset":F
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1430
    .local v2, "top":F
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1431
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 712
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/tencent/qrom/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 713
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 714
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 721
    iget-object v9, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 722
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 723
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 724
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 725
    .local v2, "containerWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 726
    .local v11, "widthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 727
    .local v3, "heightMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 729
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 730
    .local v10, "trackWidth":I
    if-nez v6, :cond_0

    .line 731
    .local v7, "thumbHalfHeight":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    .line 732
    .local v4, "left":I
    add-int v5, v4, v10

    .line 733
    .local v5, "right":I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .line 734
    .local v8, "top":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .line 735
    .local v0, "bottom":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 736
    return-void

    .line 730
    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v7    # "thumbHalfHeight":I
    .end local v8    # "top":I
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 647
    if-nez p2, :cond_0

    .line 648
    const/4 v8, 0x0

    .line 649
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 650
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 657
    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 658
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 659
    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 660
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 661
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 662
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 665
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 666
    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 667
    .local v13, "width":I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 668
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 669
    .local v2, "bottom":I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 670
    .local v7, "left":I
    add-int v11, v7, v13

    .line 671
    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 672
    return-void

    .line 652
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 653
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 654
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 572
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 573
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 574
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 575
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 577
    iget v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 578
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/tencent/qrom/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 599
    if-nez p3, :cond_0

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "marginLeft":I
    const/4 v9, 0x0

    .line 602
    .local v9, "marginTop":I
    const/4 v8, 0x0

    .line 609
    .local v8, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 610
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 612
    .local v4, "containerWidth":I
    if-nez p2, :cond_1

    .line 613
    move v10, v4

    .line 620
    .local v10, "maxWidth":I
    :goto_1
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .line 621
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 622
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 623
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 629
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 630
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v8

    .line 631
    .local v11, "right":I
    sub-int v6, v11, v13

    .line 638
    .local v6, "left":I
    :goto_3
    move v12, v9

    .line 639
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 640
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 641
    return-void

    .line 604
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 605
    .restart local v7    # "marginLeft":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 606
    .restart local v9    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8    # "marginRight":I
    goto :goto_0

    .line 614
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_2

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 617
    .end local v10    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 630
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    .line 633
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v6, v15, v7

    .line 634
    .restart local v6    # "left":I
    add-int v11, v6, v13

    .restart local v11    # "right":I
    goto :goto_3

    .line 633
    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 412
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->resolvePadding()V

    .line 413
    return-void

    .line 405
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 846
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 771
    iget v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 772
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 773
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 774
    return-void

    .line 771
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 24
    .param p1, "position"    # F

    .prologue
    .line 909
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/FastScroller;->mScrollCompleted:Z

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v3

    .line 912
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 913
    .local v17, "sections":[Ljava/lang/Object;
    if-nez v17, :cond_3

    const/4 v15, 0x0

    .line 915
    .local v15, "sectionCount":I
    :goto_0
    if-eqz v17, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_b

    .line 916
    int-to-float v0, v15

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v15, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 918
    .local v4, "exactSection":I
    move/from16 v20, v4

    .line 919
    .local v20, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    .line 920
    .local v19, "targetIndex":I
    move/from16 v16, v20

    .line 928
    .local v16, "sectionIndex":I
    move v8, v3

    .line 929
    .local v8, "nextIndex":I
    move/from16 v12, v19

    .line 930
    .local v12, "prevIndex":I
    move/from16 v14, v20

    .line 931
    .local v14, "prevSection":I
    add-int/lit8 v11, v20, 0x1

    .line 934
    .local v11, "nextSection":I
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v20, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 939
    :cond_0
    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    .line 941
    :cond_1
    if-lez v20, :cond_2

    .line 942
    add-int/lit8 v20, v20, -0x1

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 944
    move/from16 v0, v19

    if-eq v12, v0, :cond_4

    .line 945
    move/from16 v14, v20

    .line 946
    move/from16 v16, v20

    .line 962
    :cond_2
    :goto_1
    add-int/lit8 v9, v11, 0x1

    .line 964
    .local v9, "nextNextSection":I
    :goto_2
    if-ge v9, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v8, :cond_5

    .line 965
    add-int/lit8 v9, v9, 0x1

    .line 966
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 913
    .end local v4    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "sectionCount":I
    .end local v16    # "sectionIndex":I
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_3
    move-object/from16 v0, v17

    array-length v15, v0

    goto/16 :goto_0

    .line 948
    .restart local v4    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v14    # "prevSection":I
    .restart local v15    # "sectionCount":I
    .restart local v16    # "sectionIndex":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_4
    if-nez v20, :cond_1

    .line 951
    const/16 v16, 0x0

    .line 952
    goto :goto_1

    .line 973
    .restart local v9    # "nextNextSection":I
    :cond_5
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 974
    .local v13, "prevPosition":F
    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 975
    .local v10, "nextPosition":F
    if-nez v3, :cond_7

    const v18, 0x7f7fffff    # Float.MAX_VALUE

    .line 976
    .local v18, "snapThreshold":F
    :goto_3
    if-ne v14, v4, :cond_8

    sub-float v21, p1, v13

    cmpg-float v21, v21, v18

    if-gez v21, :cond_8

    .line 977
    move/from16 v19, v12

    .line 984
    :goto_4
    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v19

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 987
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    check-cast v5, Lcom/tencent/qrom/widget/ExpandableListView;

    .line 988
    .local v5, "expList":Lcom/tencent/qrom/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v19

    invoke-static/range {v21 .. v21}, Lcom/tencent/qrom/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1012
    .end local v4    # "exactSection":I
    .end local v5    # "expList":Lcom/tencent/qrom/widget/ExpandableListView;
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mCurrentSection:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 1013
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/FastScroller;->mCurrentSection:I

    .line 1015
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v6

    .line 1016
    .local v6, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    if-eqz v6, :cond_e

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToDragging()V

    .line 1022
    .end local v6    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 975
    .restart local v4    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v9    # "nextNextSection":I
    .restart local v10    # "nextPosition":F
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v13    # "prevPosition":F
    .restart local v14    # "prevSection":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_7
    const/high16 v21, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v22, v0

    div-float v18, v21, v22

    goto :goto_3

    .line 979
    .restart local v18    # "snapThreshold":F
    :cond_8
    sub-int v21, v8, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, p1, v13

    mul-float v21, v21, v22

    sub-float v22, v10, v13

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v19, v12, v21

    goto/16 :goto_4

    .line 991
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/tencent/qrom/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/tencent/qrom/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 994
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Lcom/tencent/qrom/widget/AbsListView;->setSelection(I)V

    goto :goto_5

    .line 997
    .end local v4    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v16    # "sectionIndex":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_b
    int-to-float v0, v3

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v3, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 999
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/tencent/qrom/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    check-cast v5, Lcom/tencent/qrom/widget/ExpandableListView;

    .line 1001
    .restart local v5    # "expList":Lcom/tencent/qrom/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v7

    invoke-static/range {v21 .. v21}, Lcom/tencent/qrom/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qrom/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1009
    .end local v5    # "expList":Lcom/tencent/qrom/widget/ExpandableListView;
    :goto_7
    const/16 v16, -0x1

    .restart local v16    # "sectionIndex":I
    goto/16 :goto_5

    .line 1003
    .end local v16    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/tencent/qrom/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/tencent/qrom/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1006
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    invoke-virtual/range {v21 .. v22}, Lcom/tencent/qrom/widget/AbsListView;->setSelection(I)V

    goto :goto_7

    .line 1018
    .end local v7    # "index":I
    .restart local v6    # "hasPreview":Z
    .restart local v16    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-nez v6, :cond_6

    .line 1019
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 739
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 741
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 742
    const/4 p1, 0x1

    .line 745
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 768
    :goto_0
    return-void

    .line 749
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 765
    :goto_1
    iput p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    .line 767
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 751
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToHidden()V

    goto :goto_1

    .line 754
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 757
    :pswitch_2
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToDragging()V

    goto :goto_1

    .line 760
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .param p1, "position"    # F

    .prologue
    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1117
    .local v3, "container":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 1118
    .local v17, "top":I
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1120
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1121
    .local v18, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1122
    .local v15, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    .line 1123
    .local v6, "min":F
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 1124
    .local v4, "max":F
    move v8, v6

    .line 1125
    .local v8, "offset":F
    sub-float v14, v4, v6

    .line 1126
    .local v14, "range":F
    mul-float v19, p1, v14

    add-float v16, v19, v8

    .line 1127
    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mOverlayPosition:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v12, v16

    .line 1132
    .local v12, "previewPos":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1133
    .local v10, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v19, v20

    .line 1134
    .local v9, "previewHalfHeight":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v19, v9

    .line 1135
    .local v7, "minP":F
    int-to-float v0, v2

    move/from16 v19, v0

    sub-float v5, v19, v9

    .line 1136
    .local v5, "maxP":F
    invoke-static {v12, v7, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1137
    .local v11, "previewMiddle":F
    sub-float v13, v11, v9

    .line 1138
    .local v13, "previewTop":F
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1142
    return-void

    .line 1129
    .end local v5    # "maxP":F
    .end local v7    # "minP":F
    .end local v9    # "previewHalfHeight":F
    .end local v10    # "previewImage":Landroid/widget/ImageView;
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    .end local v13    # "previewTop":F
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z

    .line 1260
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Lcom/tencent/qrom/widget/FastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 21
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1033
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/qrom/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1034
    .local v11, "sections":[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1035
    .local v17, "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1036
    aget-object v10, v11, p1

    .line 1037
    .local v10, "section":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 1038
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1042
    .end local v10    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1043
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1046
    .local v5, "preview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPrimary:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1048
    .local v13, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1055
    .local v15, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/tencent/qrom/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1057
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/tencent/qrom/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1064
    :cond_1
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/tencent/qrom/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v12

    .line 1065
    .local v12, "showTarget":Landroid/animation/Animator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Lcom/tencent/qrom/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 1066
    .local v4, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1069
    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1070
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1071
    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1072
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1073
    invoke-static {v5, v2}, Lcom/tencent/qrom/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v7

    .line 1074
    .local v7, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1076
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 1078
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1082
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v19

    sub-int v6, v18, v19

    .line 1087
    .local v6, "previewWidth":I
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1088
    .local v16, "targetWidth":I
    move/from16 v0, v16

    if-le v0, v6, :cond_4

    .line 1089
    int-to-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1090
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/tencent/qrom/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1091
    .local v9, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1097
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 1098
    .local v14, "showingWidth":I
    move/from16 v0, v16

    if-le v14, v0, :cond_2

    .line 1099
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 1100
    .local v8, "scale":F
    invoke-static {v13, v8}, Lcom/tencent/qrom/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1101
    .restart local v9    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1104
    .end local v8    # "scale":F
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->start()V

    .line 1106
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    return v18

    .line 1050
    .end local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v4    # "hideShowing":Landroid/animation/Animator;
    .end local v6    # "previewWidth":I
    .end local v7    # "resizePreview":Landroid/animation/Animator;
    .end local v12    # "showTarget":Landroid/animation/Animator;
    .end local v13    # "showing":Landroid/widget/TextView;
    .end local v14    # "showingWidth":I
    .end local v15    # "target":Landroid/widget/TextView;
    .end local v16    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1051
    .restart local v13    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .restart local v15    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1093
    .restart local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v4    # "hideShowing":Landroid/animation/Animator;
    .restart local v6    # "previewWidth":I
    .restart local v7    # "resizePreview":Landroid/animation/Animator;
    .restart local v12    # "showTarget":Landroid/animation/Animator;
    .restart local v16    # "targetWidth":I
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1106
    .restart local v14    # "showingWidth":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 827
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 831
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 834
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 837
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 838
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 839
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 841
    iput-boolean v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPreview:Z

    .line 842
    return-void
.end method

.method private transitionToHidden()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 780
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 784
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 788
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 789
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 793
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 794
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 795
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 797
    iput-boolean v8, p0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPreview:Z

    .line 798
    return-void

    .line 788
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 804
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 805
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 808
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 810
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 813
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Lcom/tencent/qrom/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 816
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 817
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 818
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 820
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/FastScroller;->mShowingPreview:Z

    .line 821
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 678
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    .line 679
    .local v1, "list":Lcom/tencent/qrom/widget/AbsListView;
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->resolvePadding()V

    .line 681
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 682
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 683
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 684
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 685
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 687
    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollBarStyle:I

    .line 688
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 690
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 691
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 692
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 693
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 696
    if-ne v2, v6, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->getWidth()I

    move-result v3

    .line 698
    .local v3, "width":I
    iget v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 699
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 705
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 701
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 481
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 482
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 483
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mLongList:Z

    .line 485
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->onStateDependencyChanged()V

    .line 487
    :cond_0
    return-void

    .line 481
    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1315
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return v3

    .line 1319
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1320
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 1324
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return v0

    .line 1283
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1285
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1292
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->beginDrag()V

    .line 1293
    const/4 v0, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mInitialTouchY:F

    .line 1297
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1301
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1307
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 466
    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 467
    :cond_0
    iput p2, p0, Lcom/tencent/qrom/widget/FastScroller;->mOldItemCount:I

    .line 468
    iput p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mOldChildCount:I

    .line 470
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 471
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 472
    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 473
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/qrom/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/FastScroller;->setThumbPos(F)V

    .line 476
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/FastScroller;->updateLongList(II)V

    .line 478
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 470
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 851
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 856
    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 857
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/FastScroller;->setThumbPos(F)V

    .line 860
    :cond_3
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollCompleted:Z

    .line 862
    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 863
    iput p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mFirstVisibleItem:I

    .line 866
    iget v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 867
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 868
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 902
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->updateLayout()V

    .line 463
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1331
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return v1

    .line 1335
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1337
    :pswitch_0
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_2

    .line 1339
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->beginDrag()V

    .line 1341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/tencent/qrom/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1342
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->setThumbPos(F)V

    .line 1343
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->scrollTo(F)V

    .line 1345
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelPendingDrag()V

    .line 1349
    .end local v0    # "pos":F
    :cond_2
    iget v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1350
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 1354
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1355
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1358
    :cond_3
    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 1359
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->postAutoHide()V

    move v1, v2

    .line 1361
    goto :goto_0

    .line 1366
    :pswitch_1
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 1367
    invoke-direct {p0, v5}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 1369
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 1370
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1373
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    if-eqz v3, :cond_5

    .line 1374
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v2}, Lcom/tencent/qrom/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1375
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v2}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1378
    :cond_5
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelFling()V

    .line 1379
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelPendingDrag()V

    .line 1383
    :cond_6
    iget v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1386
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->setThumbPos(F)V

    .line 1389
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_7

    .line 1390
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->scrollTo(F)V

    :cond_7
    move v1, v2

    .line 1393
    goto/16 :goto_0

    .line 1398
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 384
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mAlwaysShow:Z

    .line 386
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->onStateDependencyChanged()V

    .line 388
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 366
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mEnabled:Z

    .line 368
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->onStateDependencyChanged()V

    .line 370
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 416
    iget v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 417
    iput p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollBarStyle:I

    .line 419
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->updateLayout()V

    .line 421
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 431
    if-nez p1, :cond_0

    .line 432
    iget-object v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    .line 436
    :cond_0
    :goto_0
    iget v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    .line 437
    iput p1, p0, Lcom/tencent/qrom/widget/FastScroller;->mScrollbarPosition:I

    .line 438
    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    .line 440
    iget-object v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/tencent/qrom/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .line 441
    .local v2, "previewResId":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 444
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 445
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 446
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 447
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 449
    iget-object v3, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 453
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FastScroller;->updateLayout()V

    .line 455
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    .line 432
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    .line 438
    goto :goto_1

    :cond_5
    move v3, v5

    .line 440
    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/FastScroller;->setState(I)V

    .line 428
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 520
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mUpdatingLayout:Z

    .line 526
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->updateContainerRect()V

    .line 528
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->layoutThumb()V

    .line 529
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FastScroller;->layoutTrack()V

    .line 531
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 532
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 533
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 534
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 535
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 537
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 539
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 540
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 541
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 542
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 543
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 546
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/FastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method
