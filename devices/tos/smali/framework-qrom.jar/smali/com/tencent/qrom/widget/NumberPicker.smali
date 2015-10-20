.class public Lcom/tencent/qrom/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/NumberPicker$QromInputTextFilter;,
        Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/tencent/qrom/widget/NumberPicker$CustomEditText;,
        Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;,
        Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;,
        Lcom/tencent/qrom/widget/NumberPicker$InputTextFilter;,
        Lcom/tencent/qrom/widget/NumberPicker$Formatter;,
        Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;,
        Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;,
        Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x7a03003e

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field public static final LABEL_LEFT:I = 0x0

.field public static final LABEL_RIGHT:I = 0x1

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static TAG:Ljava/lang/String; = null

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_NORMAL_TEXT_SIZE:I = 0x10

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field displayMetrics:Landroid/util/DisplayMetrics;

.field private mAccessibilityNodeProvider:Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeCurrentByOneFromLongPressEable:Z

.field private mChangeValueByOneEable:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

.field private mFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/String;

.field private mLabelLocation:I

.field private final mLabelPaint:Landroid/graphics/Paint;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalTextColor:I

.field private mNormalTextSize:I

.field private mOnScrollListener:Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

.field private mSlowScroller:Z

.field private final mSolidColor:I

.field private mTextScale:F

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "NumberPicker"

    sput-object v0, Lcom/tencent/qrom/widget/NumberPicker;->TAG:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/NumberPicker;->sTwoDigitFormatter:Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;

    .line 2110
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qrom/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 564
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 573
    const v0, 0x7a0100ab

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 584
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    const-wide/16 v19, 0x12c

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tencent/qrom/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 302
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 307
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    .line 327
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    .line 428
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    .line 479
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 487
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mChangeValueByOneEable:Z

    .line 488
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressEable:Z

    .line 493
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSlowScroller:Z

    .line 587
    sget-object v19, Lcom/tencent/qrom/R$styleable;->NumberPicker:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 589
    .local v5, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v19, 0xc

    const v20, 0x7a03003e

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 594
    .local v15, "layoutResId":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 595
    const/16 v19, 0x1

    const/high16 v20, 0x41800000    # 16.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 597
    .local v11, "defNormalTextSize":I
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    .line 598
    const/16 v19, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7a0b000e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextColor:I

    .line 601
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSolidColor:I

    .line 603
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 605
    const/16 v19, 0x1

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v13, v0

    .line 608
    .local v13, "defSelectionDividerHeight":I
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 611
    const/16 v19, 0x1

    const/high16 v20, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 614
    .local v12, "defSelectionDividerDistance":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 617
    const/16 v19, 0x6

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMinHeight:I

    .line 620
    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMaxHeight:I

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMinHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMinHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 624
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minHeight > maxHeight"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 627
    :cond_0
    const/16 v19, 0x7

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    .line 630
    const/16 v19, 0x8

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    .line 632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 634
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minWidth > maxWidth"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 637
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 639
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 642
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 644
    new-instance v19, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    .line 651
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 655
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 657
    new-instance v16, Lcom/tencent/qrom/widget/NumberPicker$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker$1;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    .line 669
    .local v16, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v17, Lcom/tencent/qrom/widget/NumberPicker$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker$2;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    .line 681
    .local v17, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 685
    const v19, 0x7a090086

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 693
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 694
    const v19, 0x7a090088

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 702
    :goto_3
    const v19, 0x7a090087

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/qrom/widget/NumberPicker$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker$3;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setClickable(Z)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 727
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 728
    .local v10, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mTouchSlop:I

    .line 729
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 730
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v19

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextSize()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mTextScale:F

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mTextSize:I

    .line 739
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 740
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 741
    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 748
    .local v8, "colors":Landroid/content/res/ColorStateList;
    sget-object v19, Lcom/tencent/qrom/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 749
    .local v6, "color":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 753
    new-instance v19, Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Lcom/tencent/qrom/widget/QromScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    .line 754
    new-instance v19, Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v20

    new-instance v21, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v22, 0x40200000    # 2.5f

    invoke-direct/range {v21 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v19 .. v21}, Lcom/tencent/qrom/widget/QromScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v19

    if-nez v19, :cond_2

    .line 760
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 763
    :cond_2
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f400000    # 0.75f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 769
    .local v9, "colorsLable":Landroid/content/res/ColorStateList;
    sget-object v19, Lcom/tencent/qrom/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 770
    .local v7, "colorLable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    return-void

    .line 637
    .end local v6    # "color":I
    .end local v7    # "colorLable":I
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "colorsLable":Landroid/content/res/ColorStateList;
    .end local v10    # "configuration":Landroid/view/ViewConfiguration;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v18    # "paint":Landroid/graphics/Paint;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 651
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 689
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_2

    .line 698
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/tencent/qrom/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lcom/tencent/qrom/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Lcom/tencent/qrom/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/tencent/qrom/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Lcom/tencent/qrom/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$2900(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3100(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$3300(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$3400(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3800(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3900(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4100(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4200(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4400(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4600(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4700(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4800(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$4900(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5000(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$5100(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5200(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5300(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5400(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5600(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/tencent/qrom/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/tencent/qrom/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/tencent/qrom/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$6600(Lcom/tencent/qrom/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/tencent/qrom/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/tencent/qrom/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$6900(Lcom/tencent/qrom/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/qrom/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1772
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeValueByOneEable:Z

    if-nez v0, :cond_0

    .line 1794
    :goto_0
    return-void

    .line 1775
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_3

    .line 1776
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1777
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->moveToFinalScrollerPosition(Lcom/tencent/qrom/widget/QromScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1778
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->moveToFinalScrollerPosition(Lcom/tencent/qrom/widget/QromScroller;)Z

    .line 1780
    :cond_1
    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1781
    if-eqz p1, :cond_2

    .line 1782
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/QromScroller;->startScroll(IIIII)V

    .line 1786
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1784
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/QromScroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1788
    :cond_3
    if-eqz p1, :cond_4

    .line 1789
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0

    .line 1791
    :cond_4
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1910
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1911
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1910
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1913
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1914
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1915
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    .line 1917
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1918
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1919
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1927
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1928
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1942
    :goto_0
    return-void

    .line 1931
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1932
    :cond_1
    const-string v2, ""

    .line 1941
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1935
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1936
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1937
    goto :goto_1

    .line 1938
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2195
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2196
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2197
    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2198
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2199
    if-lez v4, :cond_2

    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/QromScroller;->startScroll(IIIII)V

    .line 2202
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    .line 2203
    const/4 v1, 0x1

    .line 2205
    :cond_1
    return v1

    .line 2199
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1851
    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1853
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSlowScroller:Z

    if-eqz v0, :cond_3

    .line 1854
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 1855
    if-lez p1, :cond_1

    .line 1856
    const/16 p1, 0x3e8

    .line 1861
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromScroller;->fling(IIIIIIII)V

    .line 1874
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    .line 1875
    return-void

    .line 1858
    :cond_1
    const/16 p1, -0x3e8

    goto :goto_0

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromScroller;->fling(IIIIIIII)V

    goto :goto_1

    .line 1867
    :cond_3
    if-lez p1, :cond_4

    .line 1868
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromScroller;->fling(IIIIIIII)V

    goto :goto_1

    .line 1870
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qrom/widget/QromScroller;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/qrom/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2789
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2063
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2065
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2089
    :goto_0
    return v1

    .line 2070
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2072
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2073
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2074
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2070
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2083
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2066
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2089
    :goto_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 2084
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Lcom/tencent/qrom/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/tencent/qrom/widget/NumberPicker;->sTwoDigitFormatter:Lcom/tencent/qrom/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1881
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1882
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1886
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1883
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1884
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1313
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1314
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1316
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1320
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1895
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1894
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1897
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1898
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1899
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    .line 1901
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1902
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1903
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 0

    .prologue
    .line 1816
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1797
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1798
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    .line 1799
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1800
    .local v4, "totalTextHeight":I
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    iget v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1801
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1802
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1803
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1806
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1807
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1809
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1810
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1811
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1724
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1725
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    .line 1726
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1727
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1728
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 1729
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1730
    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1732
    :cond_0
    aput v2, v3, v1

    .line 1733
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1735
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1682
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1693
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1685
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1686
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1687
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1695
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1691
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1693
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1687
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lcom/tencent/qrom/widget/QromScroller;)Z
    .locals 7
    .param p1, "scroller"    # Lcom/tencent/qrom/widget/QromScroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 830
    invoke-virtual {p1, v3}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    .line 831
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/QromScroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/qrom/widget/QromScroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 832
    .local v0, "amountToScroll":I
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 833
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 834
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 835
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 836
    if-lez v2, :cond_1

    .line 837
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 842
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 843
    invoke-virtual {p0, v4, v0}, Lcom/tencent/qrom/widget/NumberPicker;->scrollBy(II)V

    .line 846
    :goto_1
    return v3

    .line 839
    :cond_1
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 846
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/tencent/qrom/widget/NumberPicker;II)V

    .line 1992
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1838
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    .line 1842
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnScrollListener:Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnScrollListener:Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/tencent/qrom/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lcom/tencent/qrom/widget/QromScroller;)V
    .locals 2
    .param p1, "scroller"    # Lcom/tencent/qrom/widget/QromScroller;

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    if-ne p1, v0, :cond_2

    .line 1823
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1824
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1826
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1832
    :cond_1
    :goto_0
    return-void

    .line 1828
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1829
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2031
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2032
    return-void

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressEable:Z

    if-nez v0, :cond_0

    .line 2010
    :goto_0
    return-void

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_1

    .line 2004
    new-instance v0, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2008
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2009
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qrom/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2098
    new-instance v0, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    .line 2102
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->access$602(Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2103
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->access$702(Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2104
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2105
    return-void

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSetSelectionCommand:Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2054
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2056
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2057
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2041
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2019
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1711
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1712
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1713
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/tencent/qrom/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1715
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1744
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1748
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1749
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1754
    :goto_1
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    .line 1755
    .local v0, "previous":I
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    .line 1756
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1757
    if-eqz p2, :cond_1

    .line 1758
    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->notifyChange(II)V

    .line 1760
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1761
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1751
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1752
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1299
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1300
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1301
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1305
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1307
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1326
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    const/4 v4, 0x0

    .line 1330
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1331
    const/4 v3, 0x0

    .line 1332
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1333
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1334
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1335
    move v3, v1

    .line 1332
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1338
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1339
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    .line 1340
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1341
    add-int/lit8 v5, v5, 0x1

    .line 1342
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1344
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1354
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1355
    iget v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1356
    iget v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1357
    iput v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    .line 1361
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1346
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1347
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1348
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1349
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1350
    float-to-int v4, v6

    .line 1347
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1359
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1974
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1976
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    const/4 v1, 0x1

    .line 1981
    :goto_1
    return v1

    .line 1974
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1981
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1949
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1950
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1952
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1958
    :goto_0
    return-void

    .line 1955
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1956
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    .line 1089
    .local v1, "scroller":Lcom/tencent/qrom/widget/QromScroller;
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    .line 1091
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->computeScrollOffset()Z

    .line 1096
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->getCurrY()I

    move-result v0

    .line 1097
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1098
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1100
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker;->scrollBy(II)V

    .line 1101
    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1102
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1103
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollerFinished(Lcom/tencent/qrom/widget/QromScroller;)V

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1191
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1039
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1083
    :goto_0
    return v4

    .line 1042
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1045
    .local v1, "eventY":I
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1046
    const/4 v2, 0x3

    .line 1052
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1053
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1055
    .local v3, "provider":Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1083
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1047
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1048
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1050
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1057
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1059
    iput v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1060
    invoke-virtual {v3, v2, v6, v9}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1064
    :pswitch_2
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1066
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1069
    invoke-virtual {v3, v2, v7}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1071
    iput v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1072
    invoke-virtual {v3, v2, v6, v9}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1077
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1079
    iput v5, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1055
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 990
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 991
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 994
    :sswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 998
    :sswitch_1
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1003
    :pswitch_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1005
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->requestFocus()Z

    .line 1006
    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1007
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    .line 1008
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 1003
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 1009
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1015
    :pswitch_1
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1016
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 979
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 985
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 982
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1028
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1034
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1031
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1666
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1671
    :goto_0
    return-object v0

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1669
    new-instance v0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/tencent/qrom/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1542
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getChangeValueByOneEable()Z
    .locals 1

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeValueByOneEable:Z

    return v0
.end method

.method public getChangeValueByOneFromLongPressEable()Z
    .locals 1

    .prologue
    .line 2877
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressEable:Z

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1430
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1537
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1547
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1548
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    .line 1549
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1553
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 1554
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1652
    :goto_0
    return-void

    .line 1558
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1559
    .local v26, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v27, v0

    .line 1562
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 1564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    sget-object v29, Lcom/tencent/qrom/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v32, v0

    invoke-virtual/range {v28 .. v32}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1569
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    sget-object v29, Lcom/tencent/qrom/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I

    move/from16 v32, v0

    invoke-virtual/range {v28 .. v32}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1577
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 1578
    .local v18, "restoreCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v11, v0

    .line 1581
    .local v11, "currentY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1582
    .local v9, "colors":Landroid/content/res/ColorStateList;
    sget-object v28, Lcom/tencent/qrom/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v20

    .line 1583
    .local v20, "selectColor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextColor:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 1585
    .local v5, "alpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    move-object/from16 v22, v0

    .line 1586
    .local v22, "selectorIndices":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_6

    .line 1587
    aget v21, v22, v14

    .line 1588
    .local v21, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1595
    .local v19, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v10, v0

    .line 1596
    .local v10, "currentTextSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v11, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1597
    .local v8, "clip":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3fc00000    # 1.5f

    mul-float v12, v28, v29

    .line 1598
    .local v12, "elementHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mTextScale:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v23, v28, v29

    .line 1599
    .local v23, "textScale":F
    cmpg-float v28, v8, v12

    if-gtz v28, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    mul-float v30, v8, v23

    div-float v30, v30, v12

    sub-float v30, v23, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    add-float v29, v29, v30

    mul-float v10, v28, v29

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    rsub-int v0, v5, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    div-float v31, v8, v12

    sub-float v30, v30, v31

    mul-float v29, v29, v30

    int-to-float v0, v5

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1608
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1609
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getVisibility()I

    move-result v28

    if-eqz v28, :cond_4

    .line 1610
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1612
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    .line 1613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v11, v11, v28

    .line 1586
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1605
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v10, v0

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextColor:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1617
    .end local v8    # "clip":F
    .end local v10    # "currentTextSize":F
    .end local v12    # "elementHeight":F
    .end local v19    # "scrollSelectorValue":Ljava/lang/String;
    .end local v21    # "selectorIndex":I
    .end local v23    # "textScale":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 1619
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v25, v0

    .line 1620
    .local v25, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v28, v0

    add-int v7, v25, v28

    .line 1621
    .local v7, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v25

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1625
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1626
    .local v6, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v28, v0

    sub-int v24, v6, v28

    .line 1627
    .local v24, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1630
    .end local v6    # "bottomOfBottomDivider":I
    .end local v7    # "bottomOfTopDivider":I
    .end local v24    # "topOfBottomDivider":I
    .end local v25    # "topOfTopDivider":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v26

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1632
    .local v17, "mTempX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1633
    .local v13, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v28, v0

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v16, v0

    .line 1635
    .local v16, "mFontHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/text/Editable;->length()I

    move-result v15

    .line 1636
    .local v15, "length":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelLocation:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 1637
    const/16 v28, 0x3

    move/from16 v0, v28

    if-le v15, v0, :cond_9

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    add-float v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1650
    .end local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v15    # "length":I
    .end local v16    # "mFontHeight":I
    .end local v17    # "mTempX":I
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 1640
    .restart local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v15    # "length":I
    .restart local v16    # "mFontHeight":I
    .restart local v17    # "mTempX":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    add-float v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1643
    :cond_a
    const/16 v28, 0x3

    move/from16 v0, v28

    if-le v15, v0, :cond_b

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1646
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1656
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1657
    const-class v0, Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1658
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1659
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1660
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1661
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 851
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 899
    :goto_0
    return v1

    .line 854
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 855
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 899
    goto :goto_0

    .line 857
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    .line 858
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventTime:J

    .line 861
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 862
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 864
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 865
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 866
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 876
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 877
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 878
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    .line 879
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    .line 880
    invoke-direct {p0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 869
    :cond_3
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 870
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 871
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 881
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/QromScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 882
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    .line 883
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mAdjustScroller:Lcom/tencent/qrom/widget/QromScroller;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    goto :goto_0

    .line 884
    :cond_5
    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 885
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->hideSoftInput()V

    .line 886
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 888
    :cond_6
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 889
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->hideSoftInput()V

    .line 890
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 893
    :cond_7
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 894
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 776
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 777
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 781
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 784
    .local v6, "msrdHght":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 785
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 786
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 787
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 788
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 789
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 790
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 792
    if-eqz p1, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheel()V

    .line 795
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeFadingEdges()V

    .line 796
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 798
    iget v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 805
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 806
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 819
    :goto_0
    return-void

    .line 810
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/tencent/qrom/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 811
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/tencent/qrom/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 812
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 814
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/tencent/qrom/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 816
    .local v3, "widthSize":I
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/tencent/qrom/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 818
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 905
    :cond_0
    const/4 v10, 0x0

    .line 973
    :goto_0
    return v10

    .line 907
    :cond_1
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 908
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 910
    :cond_2
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 912
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 973
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 914
    :pswitch_0
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_3

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 918
    .local v1, "currentMoveY":F
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 919
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 920
    .local v2, "deltaDownY":I
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 921
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeAllCallbacks()V

    .line 922
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollStateChange(I)V

    .line 929
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 925
    :cond_5
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 926
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lcom/tencent/qrom/widget/NumberPicker;->scrollBy(II)V

    .line 927
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 933
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 934
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 935
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 936
    iget-object v9, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 937
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 938
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 939
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 940
    invoke-direct {p0, v7}, Lcom/tencent/qrom/widget/NumberPicker;->fling(I)V

    .line 941
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollStateChange(I)V

    .line 969
    :goto_3
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 970
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 943
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 944
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 945
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 946
    .local v4, "deltaTime":J
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 947
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_8

    .line 948
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 949
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->performClick()Z

    .line 967
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/tencent/qrom/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 951
    :cond_8
    iget v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x2

    .line 953
    .local v8, "selectorIndexOffset":I
    if-ltz v8, :cond_9

    .line 954
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V

    .line 955
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 957
    :cond_9
    if-gez v8, :cond_7

    .line 958
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V

    .line 959
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mPressedStateHelper:Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 964
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    iget-object v10, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFlingScroller:Lcom/tencent/qrom/widget/QromScroller;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/QromScroller;->forceFinished(Z)V

    .line 965
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1277
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1281
    :goto_0
    return v0

    .line 1278
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->showSoftInput()V

    .line 1281
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1286
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_1

    .line 1287
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    .line 1292
    :cond_0
    :goto_0
    return v0

    .line 1288
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->showSoftInput()V

    .line 1290
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIgnoreMoveEvents:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1123
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    .line 1124
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v4

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 1126
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v4

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    .line 1132
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1136
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1137
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1138
    :cond_3
    :goto_1
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1139
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1140
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v4

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1142
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1146
    :cond_4
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1147
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1149
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1150
    sget-object v1, Lcom/tencent/qrom/widget/NumberPicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentScrollOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInitialScrollOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSelectorTextGapHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrentScrollOffset - mInitialScrollOffset < -mSelectorTextGapHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1159
    :cond_5
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1160
    :cond_6
    :goto_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_7

    .line 1161
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1162
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    aget v1, v0, v4

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_6

    .line 1164
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1168
    :cond_7
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1169
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1171
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_0

    .line 1172
    sget-object v1, Lcom/tencent/qrom/widget/NumberPicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentScrollOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInitialScrollOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInitialScrollOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSelectorTextGapHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorTextGapHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrentScrollOffset - mInitialScrollOffset > mSelectorTextGapHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setChangeValueByOneEable(Z)V
    .locals 0
    .param p1, "eable"    # Z

    .prologue
    .line 2865
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeValueByOneEable:Z

    .line 2866
    return-void
.end method

.method public setChangeValueByOneFromLongPressEable(Z)V
    .locals 0
    .param p1, "eable"    # Z

    .prologue
    .line 2873
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mChangeCurrentByOneFromLongPressEable:Z

    .line 2874
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1522
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1523
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1530
    :goto_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1531
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1532
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1112
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1115
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1119
    return-void
.end method

.method public setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1237
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 1238
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1239
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setInputTextFilter([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "inputTextFilter"    # [Landroid/text/InputFilter;

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2882
    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2890
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTextScale:F

    .line 2891
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    .line 2892
    return-void
.end method

.method public setInputTextSize(IF)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "textSize"    # F

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2896
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mNormalTextSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker;->mTextScale:F

    .line 2897
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    .line 2898
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 2857
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setLabel(Ljava/lang/String;I)V

    .line 2858
    return-void
.end method

.method public setLabel(Ljava/lang/String;I)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLabel:Ljava/lang/String;

    .line 2861
    iput p2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLabelLocation:I

    .line 2862
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1482
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1485
    :cond_0
    if-gez p1, :cond_1

    .line 1486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    .line 1489
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1490
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    .line 1492
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1493
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1494
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1495
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1496
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1497
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1492
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1444
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1447
    :cond_0
    if-gez p1, :cond_1

    .line 1448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1450
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    .line 1451
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1452
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mValue:I

    .line 1454
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1455
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1456
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1457
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->updateInputTextView()Z

    .line 1458
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1459
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1454
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1412
    iput-wide p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1413
    return-void
.end method

.method public setOnScrollListener(Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnScrollListener:Lcom/tencent/qrom/widget/NumberPicker$OnScrollListener;

    .line 1220
    return-void
.end method

.method public setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mOnValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    .line 1211
    return-void
.end method

.method public setSlowScroller(Z)V
    .locals 0
    .param p1, "slowScroller"    # Z

    .prologue
    .line 2902
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSlowScroller:Z

    .line 2903
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1272
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1395
    iget v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1396
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1397
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1399
    :cond_1
    return-void

    .line 1395
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSelectorWheelIndices()V
    .locals 0

    .prologue
    .line 2885
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2886
    return-void
.end method
