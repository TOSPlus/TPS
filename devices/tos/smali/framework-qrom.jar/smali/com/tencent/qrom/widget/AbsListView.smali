.class public abstract Lcom/tencent/qrom/widget/AbsListView;
.super Lcom/tencent/qrom/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/AbsListView$RecycleBin;,
        Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;,
        Lcom/tencent/qrom/widget/AbsListView$LayoutParams;,
        Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;,
        Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeListener;,
        Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;,
        Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;,
        Lcom/tencent/qrom/widget/AbsListView$PositionScroller;,
        Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;,
        Lcom/tencent/qrom/widget/AbsListView$CheckForTap;,
        Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;,
        Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;,
        Lcom/tencent/qrom/widget/AbsListView$PerformClick;,
        Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;,
        Lcom/tencent/qrom/widget/AbsListView$SavedState;,
        Lcom/tencent/qrom/widget/AbsListView$SelectionBoundsAdjuster;,
        Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qrom/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QROM_MAXIMUM_FLING_VELOCITY:I = 0x12c0

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field static final TOUCH_MODE_INVALID:I = -0x2

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_RESCROLL:I = 0x7

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isNeedBounce:Z

.field private isSetItemSelector:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field protected mBlurRecycleFlag:Z

.field private mBottomSelector:Landroid/graphics/drawable/Drawable;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mClickDelay:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentSelector:Landroid/graphics/drawable/Drawable;

.field mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field protected mDensity:F

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mDrawShapedSelector:Z

.field private mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

.field private mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field protected mFirstTopOffset:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field protected mIsTouchOffsetFlag:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field protected mLastBottomOffset:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastSelectorRect:Landroid/graphics/Rect;

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

.field private mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

.field private mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

.field mPopup:Lcom/tencent/qrom/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field protected mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

.field mResurrectToPosition:I

.field private mRoundBitmap:Landroid/graphics/Bitmap;

.field private mRoundCanvas:Landroid/graphics/Canvas;

.field private mRoundPaint:Landroid/graphics/Paint;

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollState:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTopSelector:Landroid/graphics/drawable/Drawable;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlopX:I

.field private mTouchSlopY:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 825
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 268
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    .line 301
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 326
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 331
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 341
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 352
    new-instance v1, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    .line 357
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    .line 362
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    .line 367
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    .line 372
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    .line 377
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 382
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mWidthMeasureSpec:I

    .line 430
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 461
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedTop:I

    .line 504
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 524
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 526
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 552
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastTouchMode:I

    .line 555
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 558
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 566
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 567
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 614
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastScrollState:I

    .line 633
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityScale:F

    .line 639
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsScrap:[Z

    .line 649
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 697
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    .line 735
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 736
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mRoundPaint:Landroid/graphics/Paint;

    .line 737
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mRoundCanvas:Landroid/graphics/Canvas;

    .line 738
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mRoundBitmap:Landroid/graphics/Bitmap;

    .line 739
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 740
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastSelectorRect:Landroid/graphics/Rect;

    .line 741
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 742
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 743
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    .line 747
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    .line 753
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce:Z

    .line 754
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z

    .line 826
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->initAbsListView()V

    .line 828
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 830
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 832
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 833
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 834
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 835
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 838
    const v0, 0x7a010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 839
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 842
    invoke-direct/range {p0 .. p3}, Lcom/tencent/qrom/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    .line 301
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 326
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 331
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 341
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 346
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 352
    new-instance v14, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    .line 357
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    .line 362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    .line 367
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    .line 372
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    .line 377
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mWidthMeasureSpec:I

    .line 430
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 461
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedTop:I

    .line 504
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 524
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 526
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 552
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastTouchMode:I

    .line 555
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 558
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 566
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 567
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 614
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastScrollState:I

    .line 633
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityScale:F

    .line 639
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mIsScrap:[Z

    .line 649
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 697
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    .line 735
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 736
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mRoundPaint:Landroid/graphics/Paint;

    .line 737
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mRoundCanvas:Landroid/graphics/Canvas;

    .line 738
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mRoundBitmap:Landroid/graphics/Bitmap;

    .line 739
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 740
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastSelectorRect:Landroid/graphics/Rect;

    .line 741
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 742
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 743
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    .line 747
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    .line 753
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce:Z

    .line 754
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->initAbsListView()V

    .line 845
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 847
    sget-object v14, Lcom/tencent/qrom/R$styleable;->AbsListView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 850
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 851
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 855
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 858
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 859
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tencent/qrom/widget/AbsListView;->setStackFromBottom(Z)V

    .line 861
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 862
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 864
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 865
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 867
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 869
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/qrom/widget/AbsListView;->setTranscriptMode(I)V

    .line 871
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 872
    .local v4, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tencent/qrom/widget/AbsListView;->setCacheColorHint(I)V

    .line 874
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 875
    .local v8, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 877
    const/16 v14, 0x8

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 878
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 880
    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tencent/qrom/widget/AbsListView;->setChoiceMode(I)V

    .line 881
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 885
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 888
    const/16 v14, 0xc

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 889
    .local v6, "dd":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/tencent/qrom/widget/AbsListView;->setTopSelector(Landroid/graphics/drawable/Drawable;)V

    .line 893
    :cond_1
    const/16 v14, 0xd

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 894
    .local v7, "ddd":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_2

    .line 895
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tencent/qrom/widget/AbsListView;->setBottomSelector(Landroid/graphics/drawable/Drawable;)V

    .line 899
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 900
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1895
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/tencent/qrom/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1700(Lcom/tencent/qrom/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/tencent/qrom/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tencent/qrom/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$2500(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/tencent/qrom/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p9}, Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/tencent/qrom/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p9}, Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/tencent/qrom/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3600(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/tencent/qrom/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/tencent/qrom/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;)Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p1, "x1"    # Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5272
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$4;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$4;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5287
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5288
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1288
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v1

    .line 1289
    :cond_1
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1291
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5263
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5264
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5265
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5266
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCachingStarted:Z

    .line 5268
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 6280
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 6281
    new-instance v0, Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6282
    .local v0, "p":Lcom/tencent/qrom/widget/PopupWindow;
    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/PopupWindow;->setFocusable(Z)V

    .line 6283
    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/PopupWindow;->setTouchable(Z)V

    .line 6284
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6285
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6286
    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/PopupWindow;->setWidth(I)V

    .line 6287
    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/PopupWindow;->setHeight(I)V

    .line 6288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6289
    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    .line 6290
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6293
    .end local v0    # "p":Lcom/tencent/qrom/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6294
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    const v2, 0x7a0f00e4

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6298
    :goto_0
    return-void

    .line 6296
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    const v2, 0x7a0f00e5

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 5938
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5939
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->dismiss()V

    .line 5941
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2522
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    .line 2529
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2530
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2531
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2534
    :cond_0
    return-void

    .line 2523
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 2525
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2527
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 7290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7295
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7296
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7298
    return-object v0

    .line 7290
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6516
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6517
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/EdgeEffect;->finish()V

    .line 6518
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/EdgeEffect;->finish()V

    .line 6520
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 5984
    sparse-switch p2, :sswitch_data_0

    .line 6017
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5986
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5987
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5988
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5989
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6021
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 6022
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 6023
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5992
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5993
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5994
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5995
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5996
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5998
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5999
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6000
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6001
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6002
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6004
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6005
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6006
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6007
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6008
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6011
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6012
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6013
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6014
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6015
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5984
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 6301
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 6302
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6303
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7a03007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6308
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6310
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6311
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6313
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 904
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setClickable(Z)V

    .line 905
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 906
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setWillNotDraw(Z)V

    .line 907
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 908
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 910
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 911
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    const/16 v1, 0x438

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopX:I

    .line 912
    const/16 v1, 0x3c

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    .line 913
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I

    .line 915
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollDistance:I

    .line 916
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mOverflingDistance:I

    .line 918
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDensityScale:F

    .line 920
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDensity:F

    .line 923
    const/high16 v1, 0x45960000    # 4800.0f

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I

    .line 925
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4006
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4007
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4011
    :goto_0
    return-void

    .line 4009
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4015
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4017
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 4145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4147
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4148
    .local v1, "pointerId":I
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 4152
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 4153
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 4154
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 4155
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 4156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 4158
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 4152
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3869
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 3870
    new-instance v1, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3872
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 3891
    :pswitch_0
    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3892
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3893
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 3895
    .local v0, "motionView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 3896
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3898
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V

    .line 3899
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3900
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->recycleVelocityTracker()V

    .line 3902
    .end local v0    # "motionView":Landroid/view/View;
    :cond_2
    :goto_1
    :pswitch_1
    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 3903
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 3904
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3905
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3906
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3908
    :cond_3
    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 3909
    return-void

    .line 3874
    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3875
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_4

    .line 3876
    new-instance v1, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3878
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_5

    .line 3879
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    .line 3882
    :cond_5
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_2

    .line 3883
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_1

    .line 3893
    :cond_6
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3872
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 3531
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 3533
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 3535
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3536
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 3537
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 3539
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 3541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3542
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    .line 3543
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3544
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    .line 3592
    :goto_0
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3594
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3596
    :cond_1
    return-void

    .line 3546
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 3547
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 3548
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3550
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_4

    .line 3551
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    .line 3553
    :cond_3
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->createScrollingCache()V

    .line 3554
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3555
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3556
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 3557
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 3580
    :cond_4
    :goto_1
    if-ltz v0, :cond_5

    .line 3582
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3583
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3586
    .end local v1    # "v":Landroid/view/View;
    :cond_5
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 3587
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3588
    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 3589
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 3558
    :cond_6
    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3562
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3565
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_7

    .line 3566
    new-instance v4, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    .line 3569
    :cond_7
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->x:F

    .line 3570
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/tencent/qrom/widget/AbsListView$CheckForTap;->y:F

    .line 3571
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3573
    :cond_8
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->createScrollingCache()V

    .line 3574
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3575
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3576
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3599
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 3600
    const/4 v3, 0x3

    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3602
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3603
    .local v0, "pointerIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 3604
    const/4 v0, 0x0

    .line 3605
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 3608
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 3611
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 3614
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v1, v3

    .line 3615
    .local v1, "x":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v2, v3

    .line 3617
    .local v2, "y":I
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    packed-switch v3, :pswitch_data_0

    .line 3655
    :goto_0
    :pswitch_0
    return-void

    .line 3640
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3641
    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->startScrollIfNeeded(II)Z

    goto :goto_0

    .line 3643
    :cond_3
    invoke-direct {p0, v1, v2, p2}, Lcom/tencent/qrom/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3648
    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3649
    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->scrollIfNeeded(II)V

    goto :goto_0

    .line 3651
    :cond_4
    invoke-direct {p0, v1, v2, p2}, Lcom/tencent/qrom/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 3617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 3841
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v18

    if-nez v18, :cond_1

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3849
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3851
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->recycleVelocityTracker()V

    .line 3853
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 3862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 3863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$Span;->finish()V

    .line 3864
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3866
    :cond_2
    :goto_1
    return-void

    .line 3662
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 3663
    .local v14, "motionPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v18

    if-nez v18, :cond_a

    const/4 v5, 0x0

    .line 3664
    .local v5, "child":Landroid/view/View;
    :goto_2
    if-eqz v5, :cond_f

    .line 3665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 3666
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3669
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 3670
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_b

    const/4 v11, 0x1

    .line 3671
    .local v11, "inList":Z
    :goto_3
    if-eqz v11, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-nez v18, :cond_f

    .line 3672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 3673
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$PerformClick;-><init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    .line 3676
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/AbsListView;->mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    .line 3677
    .local v15, "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    iput v14, v15, Lcom/tencent/qrom/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3678
    invoke-virtual {v15}, Lcom/tencent/qrom/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3680
    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 3682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 3683
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 3684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForTap:Lcom/tencent/qrom/widget/AbsListView$CheckForTap;

    move-object/from16 v18, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3687
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 3688
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 3689
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 3691
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 3692
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3694
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3697
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3698
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3700
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->qromSetHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 3702
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3705
    :cond_9
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v15}, Lcom/tencent/qrom/widget/AbsListView$3;-><init>(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/View;Lcom/tencent/qrom/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 3663
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 3670
    .restart local v5    # "child":Landroid/view/View;
    .restart local v17    # "x":F
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 3684
    .restart local v11    # "inList":Z
    .restart local v15    # "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_4

    .line 3727
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3728
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_1

    .line 3731
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 3733
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7a0a0019

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3735
    .local v4, "bRipple":Z
    if-eqz v4, :cond_11

    .line 3736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    const-wide/16 v18, 0x7d

    :goto_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3744
    .end local v4    # "bRipple":Z
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :cond_f
    :goto_6
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3745
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 3736
    .restart local v4    # "bRipple":Z
    .restart local v11    # "inList":Z
    .restart local v15    # "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    .restart local v17    # "x":F
    :cond_10
    const-wide/16 v18, 0x0

    goto :goto_5

    .line 3738
    :cond_11
    invoke-virtual {v15}, Lcom/tencent/qrom/widget/AbsListView$PerformClick;->run()V

    goto :goto_6

    .line 3749
    .end local v4    # "bRipple":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "inList":Z
    .end local v14    # "motionPosition":I
    .end local v15    # "performClick":Lcom/tencent/qrom/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3750
    .local v6, "childCount":I
    if-lez v6, :cond_1c

    .line 3751
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3752
    .local v10, "firstChildTop":I
    add-int/lit8 v18, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3753
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 3754
    .local v8, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 3755
    .local v7, "contentBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v18

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_12

    if-lt v10, v8, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v18

    sub-int v18, v18, v7

    move/from16 v0, v18

    if-gt v13, v0, :cond_12

    .line 3758
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3759
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3761
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    .line 3763
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3765
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    move-result v18

    if-nez v18, :cond_0

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 3767
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3770
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 3772
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3774
    :cond_14
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 3777
    :cond_15
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3778
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3785
    .end local v12    # "initialVelocity":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 3786
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3793
    .restart local v12    # "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v18

    if-eq v10, v0, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v18

    if-eq v13, v0, :cond_1a

    .line 3797
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    .line 3798
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3800
    :cond_19
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 3804
    :cond_1a
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3805
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 3807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3809
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_0

    .line 3816
    .end local v7    # "contentBottom":I
    .end local v8    # "contentTop":I
    .end local v10    # "firstChildTop":I
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_1c
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3817
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3822
    .end local v6    # "childCount":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v18

    if-nez v18, :cond_0

    .line 3823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1d

    .line 3824
    new-instance v18, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 3826
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 3827
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3830
    .restart local v12    # "initialVelocity":I
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3831
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1e

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 3834
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 3658
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5957
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5958
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5959
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->getLocationOnScreen([I)V

    .line 5962
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5963
    .local v0, "bottomGap":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5964
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Lcom/tencent/qrom/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5969
    :goto_0
    return-void

    .line 5967
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Lcom/tencent/qrom/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2421
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 4020
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4021
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4024
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 7271
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7272
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 7274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7275
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7276
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 7278
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7284
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 7274
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7282
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 7284
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3370
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    sub-int v4, p2, v5

    .line 3371
    .local v4, "rawDeltaY":I
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    sub-int v1, v4, v5

    .line 3372
    .local v1, "deltaY":I
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    sub-int v2, p2, v5

    .line 3373
    .local v2, "incrementalDeltaY":I
    :goto_0
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 3374
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    if-eq p2, v5, :cond_3

    .line 3375
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    if-le v5, v6, :cond_0

    .line 3376
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 3377
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    .line 3378
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3381
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    .line 3382
    .local v0, "atEdge":Z
    if-eqz v2, :cond_1

    .line 3383
    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3385
    :cond_1
    if-eqz v0, :cond_2

    .line 3386
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 3387
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 3390
    :cond_2
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 3391
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3392
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    .line 3395
    .end local v0    # "atEdge":Z
    :cond_3
    return-void

    .end local v2    # "incrementalDeltaY":I
    :cond_4
    move v2, v1

    .line 3372
    goto :goto_0
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 31
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3167
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    sub-int v30, p2, v3

    .line 3168
    .local v30, "rawDeltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    sub-int v18, v30, v3

    .line 3169
    .local v18, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    sub-int v19, p2, v3

    .line 3171
    .local v19, "incrementalDeltaY":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 3179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3181
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3184
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    .line 3188
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    if-le v3, v4, :cond_1

    .line 3189
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    .line 3190
    .local v29, "parent":Landroid/view/ViewParent;
    if-eqz v29, :cond_1

    .line 3191
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3196
    .end local v29    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    .line 3197
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v20, v3, v4

    .line 3204
    .local v20, "motionIndex":I
    :goto_1
    const/16 v23, 0x0

    .line 3205
    .local v23, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3206
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_2

    .line 3207
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3211
    :cond_2
    const/16 v16, 0x0

    .line 3212
    .local v16, "atEdge":Z
    if-eqz v19, :cond_3

    .line 3213
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3217
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3218
    if-eqz v22, :cond_8

    .line 3221
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v24

    .line 3222
    .local v24, "motionViewRealTop":I
    if-eqz v16, :cond_8

    .line 3225
    move/from16 v0, v19

    neg-int v3, v0

    sub-int v4, v24, v23

    sub-int v5, v3, v4

    .line 3226
    .local v5, "overscroll":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v17

    .line 3229
    .local v17, "atOverscrollEdge":Z
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3234
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getOverScrollMode()I

    move-result v28

    .line 3235
    .local v28, "overscrollMode":I
    if-eqz v28, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3237
    :cond_5
    if-nez v17, :cond_6

    .line 3238
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    .line 3239
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3241
    :cond_6
    if-lez v19, :cond_d

    .line 3242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    neg-int v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/tencent/qrom/widget/EdgeEffect;->onPull(FF)V

    .line 3244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3247
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v7}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    .line 3261
    .end local v5    # "overscroll":I
    .end local v17    # "atOverscrollEdge":Z
    .end local v24    # "motionViewRealTop":I
    .end local v28    # "overscrollMode":I
    :cond_8
    :goto_2
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3263
    .end local v16    # "atEdge":Z
    .end local v20    # "motionIndex":I
    .end local v22    # "motionView":Landroid/view/View;
    .end local v23    # "motionViewPrevTop":I
    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    .line 3331
    :cond_a
    :goto_3
    return-void

    .end local v19    # "incrementalDeltaY":I
    :cond_b
    move/from16 v19, v18

    .line 3169
    goto/16 :goto_0

    .line 3201
    .restart local v19    # "incrementalDeltaY":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v20, v3, 0x2

    .restart local v20    # "motionIndex":I
    goto/16 :goto_1

    .line 3248
    .restart local v5    # "overscroll":I
    .restart local v16    # "atEdge":Z
    .restart local v17    # "atOverscrollEdge":Z
    .restart local v22    # "motionView":Landroid/view/View;
    .restart local v23    # "motionViewPrevTop":I
    .restart local v24    # "motionViewRealTop":I
    .restart local v28    # "overscrollMode":I
    :cond_d
    if-gez v19, :cond_8

    .line 3249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/tencent/qrom/widget/EdgeEffect;->onPull(FF)V

    .line 3251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3254
    :cond_e
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    goto :goto_2

    .line 3264
    .end local v5    # "overscroll":I
    .end local v16    # "atEdge":Z
    .end local v17    # "atOverscrollEdge":Z
    .end local v20    # "motionIndex":I
    .end local v22    # "motionView":Landroid/view/View;
    .end local v23    # "motionViewPrevTop":I
    .end local v24    # "motionViewRealTop":I
    .end local v28    # "overscrollMode":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 3265
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_a

    .line 3266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    move/from16 v27, v0

    .line 3267
    .local v27, "oldScroll":I
    sub-int v26, v27, v19

    .line 3268
    .local v26, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_18

    const/16 v25, 0x1

    .line 3270
    .local v25, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_10

    .line 3271
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    .line 3274
    :cond_10
    move/from16 v0, v19

    neg-int v8, v0

    .line 3275
    .local v8, "overScrollDistance":I
    if-gez v26, :cond_11

    if-gez v27, :cond_12

    :cond_11
    if-lez v26, :cond_19

    if-gtz v27, :cond_19

    .line 3276
    :cond_12
    move/from16 v0, v27

    neg-int v8, v0

    .line 3277
    add-int v19, v19, v8

    .line 3282
    :goto_5
    if-eqz v8, :cond_15

    .line 3283
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/tencent/qrom/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3284
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getOverScrollMode()I

    move-result v28

    .line 3285
    .restart local v28    # "overscrollMode":I
    if-eqz v28, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3287
    :cond_13
    if-lez v30, :cond_1a

    .line 3288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/tencent/qrom/widget/EdgeEffect;->onPull(FF)V

    .line 3290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3293
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v7}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    .line 3306
    .end local v28    # "overscrollMode":I
    :cond_15
    :goto_6
    if-eqz v19, :cond_17

    .line 3308
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_16

    .line 3309
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 3310
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3313
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3315
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3319
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v21

    .line 3321
    .local v21, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3322
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v21, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3323
    .restart local v22    # "motionView":Landroid/view/View;
    if-eqz v22, :cond_1c

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3324
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3325
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 3327
    .end local v21    # "motionPosition":I
    .end local v22    # "motionView":Landroid/view/View;
    :cond_17
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    .line 3328
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3268
    .end local v8    # "overScrollDistance":I
    .end local v25    # "newDirection":I
    :cond_18
    const/16 v25, -0x1

    goto/16 :goto_4

    .line 3279
    .restart local v8    # "overScrollDistance":I
    .restart local v25    # "newDirection":I
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 3294
    .restart local v28    # "overscrollMode":I
    :cond_1a
    if-gez v30, :cond_15

    .line 3295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/tencent/qrom/widget/EdgeEffect;->onPull(FF)V

    .line 3297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/EdgeEffect;->onRelease()V

    .line 3300
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_6

    .line 3323
    .end local v28    # "overscrollMode":I
    .restart local v21    # "motionPosition":I
    .restart local v22    # "motionView":Landroid/view/View;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1381
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/FastScroller;->setEnabled(Z)V

    .line 1335
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resolvePadding()V

    .line 1337
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FastScroller;->updateLayout()V

    .line 1340
    :cond_1
    return-void

    .line 1330
    :cond_2
    if-eqz p1, :cond_0

    .line 1331
    new-instance v0, Lcom/tencent/qrom/widget/FastScroller;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/FastScroller;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    .line 1332
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 5948
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5949
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->createTextFilter(Z)V

    .line 5950
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->positionPopup()V

    .line 5952
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->checkFocus()V

    .line 5954
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3335
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    sub-int v0, p1, v6

    .line 3336
    .local v0, "deltaX":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3337
    .local v2, "distanceX":I
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    sub-int v1, p2, v6

    .line 3338
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3339
    .local v3, "distanceY":I
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopX:I

    if-gt v2, v6, :cond_0

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    if-le v3, v6, :cond_5

    .line 3340
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->createScrollingCache()V

    .line 3341
    const/4 v6, 0x3

    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3342
    if-lez v1, :cond_4

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    :goto_0
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3344
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    if-eqz v6, :cond_1

    .line 3345
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3347
    :cond_1
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3348
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 3349
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3350
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 3351
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3354
    .end local v4    # "motionView":Landroid/view/View;
    :cond_2
    const/4 v6, -0x1

    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 3355
    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3358
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3359
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3360
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3362
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->scrollIfNeeded(II)V

    move v6, v8

    .line 3366
    .end local v5    # "parent":Landroid/view/ViewParent;
    :goto_1
    return v6

    .line 3342
    :cond_4
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    neg-int v6, v6

    goto :goto_0

    :cond_5
    move v6, v7

    .line 3366
    goto :goto_1
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3133
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v5

    .line 3134
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3135
    .local v1, "distance":I
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eqz v5, :cond_3

    move v3, v7

    .line 3136
    .local v3, "overscroll":Z
    :goto_0
    if-nez v3, :cond_0

    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    if-le v1, v5, :cond_6

    .line 3137
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->createScrollingCache()V

    .line 3138
    if-eqz v3, :cond_4

    .line 3139
    const/4 v5, 0x5

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3140
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3145
    :goto_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3146
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 3147
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3148
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3149
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 3151
    :cond_1
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3154
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3155
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 3156
    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3158
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v5, v7

    .line 3162
    .end local v2    # "motionView":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewParent;
    :goto_2
    return v5

    .end local v3    # "overscroll":Z
    :cond_3
    move v3, v6

    .line 3135
    goto :goto_0

    .line 3142
    .restart local v3    # "overscroll":Z
    :cond_4
    const/4 v5, 0x3

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3143
    if-lez v0, :cond_5

    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    :goto_3
    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchSlopY:I

    neg-int v5, v5

    goto :goto_3

    :cond_6
    move v5, v6

    .line 3162
    goto :goto_2
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1212
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 1213
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1214
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1216
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1217
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1218
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1220
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1221
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1216
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1214
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1222
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1223
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1226
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 6

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1608
    .local v0, "bRipple":Z
    if-eqz v0, :cond_0

    .line 1609
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0b0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1612
    .local v1, "drawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1618
    .end local v1    # "drawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    :goto_0
    return-void

    .line 1614
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a020159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4165
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4166
    .local v2, "count":I
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 4167
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4169
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 4180
    :cond_0
    return-void

    .line 4173
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4174
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4175
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4176
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4178
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 6395
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 6356
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5304
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5305
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 5317
    :cond_0
    :goto_0
    return v6

    .line 5309
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 5310
    .local v1, "firstPosition":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5311
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 5312
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 5313
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 5314
    .local v4, "lastPosition":I
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 5316
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5317
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6422
    instance-of v0, p1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1067
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 1068
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6320
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6321
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    .line 6323
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6324
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    .line 6327
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1985
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1986
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 1987
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1988
    mul-int/lit8 v2, v1, 0x64

    .line 1990
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1991
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1992
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1993
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 1994
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1997
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1998
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1999
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2000
    if-lez v3, :cond_1

    .line 2001
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2009
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2006
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2009
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2014
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 2015
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2016
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2017
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2018
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2019
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2020
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2021
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2022
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2038
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2027
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .line 2028
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2029
    const/4 v4, 0x0

    .line 2035
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2030
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2031
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2033
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2044
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2045
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2046
    .local v0, "result":I
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2048
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2053
    :cond_0
    :goto_0
    return v0

    .line 2051
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 5731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5733
    const/4 v7, 0x0

    .line 5734
    .local v7, "checkedCountChanged":Z
    const/4 v8, 0x0

    .local v8, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 5735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5736
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5738
    .local v3, "lastPos":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5739
    .local v11, "lastPosId":J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 5741
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5742
    .local v16, "start":I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5743
    .local v9, "end":I
    const/4 v10, 0x0

    .line 5744
    .local v10, "found":Z
    move/from16 v15, v16

    .local v15, "searchPos":I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 5745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5746
    .local v13, "searchId":J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 5747
    const/4 v10, 0x1

    .line 5748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5754
    .end local v13    # "searchId":J
    :cond_0
    if-nez v10, :cond_1

    .line 5755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5756
    add-int/lit8 v8, v8, -0x1

    .line 5757
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 5758
    const/4 v7, 0x1

    .line 5759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 5760
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5734
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 5744
    .restart local v9    # "end":I
    .restart local v10    # "found":Z
    .restart local v13    # "searchId":J
    .restart local v15    # "searchPos":I
    .restart local v16    # "start":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 5765
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v13    # "searchId":J
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5769
    .end local v3    # "lastPos":I
    .end local v4    # "id":J
    .end local v11    # "lastPosId":J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 5770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5772
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2839
    new-instance v0, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6567
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2425
    const/4 v2, 0x0

    .line 2426
    .local v2, "saveCount":I
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2427
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2429
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollX:I

    .line 2430
    .local v3, "scrollX":I
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 2431
    .local v4, "scrollY":I
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2434
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    .line 2437
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2438
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2439
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2442
    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2444
    if-eqz v1, :cond_2

    .line 2445
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2448
    :cond_2
    if-eqz v0, :cond_3

    .line 2449
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2450
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    .line 2452
    :cond_3
    return-void

    .line 2426
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3032
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 3950
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3951
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    if-eqz v8, :cond_3

    .line 3952
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 3953
    .local v6, "scrollY":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v8}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3955
    .local v4, "restoreCount":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 3956
    .local v3, "leftPadding":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 3957
    .local v5, "rightPadding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 3959
    .local v7, "width":I
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3960
    .local v1, "edgeY":I
    int-to-float v8, v3

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3961
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/tencent/qrom/widget/EdgeEffect;->setSize(II)V

    .line 3962
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Lcom/tencent/qrom/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3966
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v11, v11, v8, v9}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    .line 3969
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3971
    .end local v1    # "edgeY":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v7    # "width":I
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v8}, Lcom/tencent/qrom/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3972
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3973
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 3974
    .restart local v3    # "leftPadding":I
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 3975
    .restart local v5    # "rightPadding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 3976
    .restart local v7    # "width":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v2

    .line 3978
    .local v2, "height":I
    neg-int v8, v7

    add-int v0, v8, v3

    .line 3979
    .local v0, "edgeX":I
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3980
    .restart local v1    # "edgeY":I
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3981
    const/high16 v8, 0x43340000    # 180.0f

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3982
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v8, v7, v2}, Lcom/tencent/qrom/widget/EdgeEffect;->setSize(II)V

    .line 3983
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Lcom/tencent/qrom/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3988
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0, v11, v8, v9, v10}, Lcom/tencent/qrom/widget/AbsListView;->invalidate(IIII)V

    .line 3992
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3995
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v6    # "scrollY":I
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2645
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->drawableStateChanged()V

    .line 2646
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    .line 2647
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 5584
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5585
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 5590
    :cond_0
    :goto_0
    return v1

    .line 5589
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5590
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 6406
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6412
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6417
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2076
    .local v1, "count":I
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2077
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2087
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2080
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2081
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2084
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2085
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2086
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2087
    .local v3, "fadeLength":F
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2476
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6483
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1042
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1043
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1054
    :cond_1
    return-object v3

    .line 1046
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1047
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1048
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1050
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1051
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1010
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1014
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1030
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getDisplayItemTotalHeight(I)I
    .locals 3
    .param p1, "childCount"    # I

    .prologue
    .line 7469
    const/4 v1, 0x0

    .line 7470
    .local v1, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 7471
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7472
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 7470
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7474
    :cond_1
    return v1
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1592
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1595
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1596
    invoke-virtual {p0, v0, p1}, Lcom/tencent/qrom/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1601
    :goto_0
    return-void

    .line 1599
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5527
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5517
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2461
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2471
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2204
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2205
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6451
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1932
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1935
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2059
    .local v0, "count":I
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2060
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2069
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2063
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2064
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2067
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2068
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2069
    .local v2, "fadeLength":F
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2466
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6446
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1409
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5776
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .line 5777
    .local v1, "count":I
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastHandledItemCount:I

    .line 5778
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    iput v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastHandledItemCount:I

    .line 5780
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5781
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5785
    :cond_0
    iget-object v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5787
    if-lez v1, :cond_e

    .line 5792
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 5794
    iput-boolean v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    .line 5795
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 5797
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 5798
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5914
    :cond_1
    :goto_0
    return-void

    .line 5800
    :cond_2
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 5801
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 5802
    iput-boolean v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5803
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 5806
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5807
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5808
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5809
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5810
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 5812
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_4
    move v2, v5

    .line 5809
    goto :goto_1

    .line 5817
    .restart local v2    # "lastBottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars()Z

    .line 5820
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_6
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5868
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 5870
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5873
    .local v6, "newPos":I
    if-lt v6, v1, :cond_8

    .line 5874
    add-int/lit8 v6, v1, -0x1

    .line 5876
    :cond_8
    if-gez v6, :cond_9

    .line 5877
    const/4 v6, 0x0

    .line 5881
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/tencent/qrom/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5883
    .local v7, "selectablePos":I
    if-ltz v7, :cond_c

    .line 5884
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5822
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5827
    iput v14, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5828
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 5834
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5835
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_7

    .line 5837
    invoke-virtual {p0, v6, v9}, Lcom/tencent/qrom/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5838
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_7

    .line 5840
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    .line 5842
    iget-wide v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 5845
    iput v14, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5853
    :goto_2
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5849
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 5861
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5862
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 5888
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/tencent/qrom/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5889
    if-ltz v7, :cond_e

    .line 5890
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5897
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_d
    iget v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 5905
    :cond_e
    iget-boolean v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5906
    iput v13, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    .line 5907
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedRowId:J

    .line 5908
    iput v13, p0, Lcom/tencent/qrom/widget/AbsListView;->mNextSelectedPosition:I

    .line 5909
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mNextSelectedRowId:J

    .line 5910
    iput-boolean v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    .line 5911
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 5912
    iput v13, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 5913
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 5905
    goto :goto_3

    .line 5820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6333
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5541
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5542
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5543
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 5545
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5546
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 5548
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5549
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5550
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedTop:I

    .line 5552
    :cond_2
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .prologue
    .line 3912
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3913
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3915
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 5598
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->rememberSyncState()V

    .line 5599
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->requestLayout()V

    .line 5600
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 5601
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1500
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/FastScroller;->onScroll(III)V

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;->onScroll(Lcom/tencent/qrom/widget/AbsListView;III)V

    .line 1506
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/tencent/qrom/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1507
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1397
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-nez v2, :cond_2

    .line 1398
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1398
    goto :goto_0

    .line 1400
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1421
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1423
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6028
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 993
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedBounce()Z
    .locals 1

    .prologue
    .line 7412
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2456
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1539
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2691
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2692
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2693
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2591
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2595
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mCurrentSelector:Landroid/graphics/drawable/Drawable;

    .line 2596
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2597
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2600
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2602
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2603
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2604
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2606
    :cond_3
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 2608
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2609
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2610
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2611
    if-eqz v1, :cond_6

    .line 2612
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2618
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2619
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForKeyLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2620
    new-instance v5, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;-><init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V

    iput-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForKeyLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

    .line 2622
    :cond_5
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForKeyLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2623
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingCheckForKeyLongPress:Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/tencent/qrom/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2615
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2165
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2274
    aput-boolean v9, p2, v9

    .line 2278
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    .line 2279
    .local v4, "transientView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 2280
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 2283
    .local v2, "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    iget v7, v2, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2284
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2287
    .local v5, "updatedView":Landroid/view/View;
    if-eq v5, v4, :cond_0

    .line 2288
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2293
    .end local v5    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v10, p2, v9

    .line 2346
    .end local v2    # "params":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .end local v4    # "transientView":Landroid/view/View;
    :goto_0
    return-object v4

    .line 2297
    .restart local v4    # "transientView":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 2298
    .local v3, "scrapView":Landroid/view/View;
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2299
    .local v0, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2301
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 2303
    if-eq v0, v3, :cond_6

    .line 2305
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2319
    :cond_2
    :goto_1
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_3

    .line 2320
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2323
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_4

    .line 2324
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 2325
    invoke-virtual {v0, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2329
    :cond_4
    iget-boolean v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_5

    .line 2330
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2332
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_7

    .line 2333
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 2339
    .local v1, "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :goto_2
    iget-object v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->itemId:J

    .line 2340
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object v4, v0

    .line 2346
    goto :goto_0

    .line 2307
    :cond_6
    aput-boolean v10, p2, v9

    .line 2315
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2334
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2335
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    goto :goto_2

    .end local v1    # "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_8
    move-object v1, v6

    .line 2337
    check-cast v1, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2697
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->onAttachedToWindow()V

    .line 2699
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2700
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2701
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2702
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2705
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2706
    new-instance v1, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    .line 2707
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2710
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 2711
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mOldItemCount:I

    .line 2712
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .line 2714
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    .line 2715
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 2652
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2654
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2680
    :cond_0
    :goto_0
    return-object v3

    .line 2660
    :cond_1
    sget-object v4, Lcom/tencent/qrom/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2665
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/tencent/qrom/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2666
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2667
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2668
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2669
    move v0, v2

    .line 2675
    :cond_2
    if-ltz v0, :cond_0

    .line 2676
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2667
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 6109
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6110
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPublicInputConnection:Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6111
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6112
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;-><init>(Lcom/tencent/qrom/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPublicInputConnection:Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;

    .line 6114
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6115
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6116
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPublicInputConnection:Lcom/tencent/qrom/widget/AbsListView$InputConnectionWrapper;

    .line 6118
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2719
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->onDetachedFromWindow()V

    .line 2722
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    .line 2725
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->clear()V

    .line 2727
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2728
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2729
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2730
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2731
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2734
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 2735
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2736
    iput-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    .line 2739
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2740
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2741
    iput-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2744
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2745
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2746
    iput-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2749
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2750
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2753
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2754
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 2757
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2758
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2761
    :cond_6
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2762
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPerformClick:Lcom/tencent/qrom/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2765
    :cond_7
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2766
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2767
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2769
    :cond_8
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    .line 2770
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 5918
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onDisplayHint(I)V

    .line 5919
    sparse-switch p1, :sswitch_data_0

    .line 5931
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopupHidden:Z

    .line 5932
    return-void

    .line 5921
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5922
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 5926
    :sswitch_1
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5927
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 5931
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5919
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 6398
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6399
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 6400
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resurrectSelection()Z

    .line 6402
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1940
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1941
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1942
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 1946
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOldItemCount:I

    .line 1947
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resurrectSelection()Z

    .line 1951
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3945
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 3933
    :pswitch_0
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3934
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3935
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 3936
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 3937
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3938
    const/4 v2, 0x1

    goto :goto_0

    .line 3931
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6337
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6339
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6340
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->showPopup()V

    .line 6349
    :cond_0
    :goto_0
    return-void

    .line 6344
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6345
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    const/4 v0, 0x1

    .line 4040
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x7

    const/4 v10, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4048
    .local v0, "action":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 4049
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 4052
    :cond_0
    iget-boolean v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    if-nez v9, :cond_2

    .line 4141
    :cond_1
    :goto_0
    return v7

    .line 4060
    :cond_2
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v9, p1}, Lcom/tencent/qrom/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 4061
    goto :goto_0

    .line 4064
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4066
    :pswitch_1
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4067
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 4068
    :cond_4
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    move v7, v8

    .line 4069
    goto :goto_0

    .line 4072
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 4073
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 4074
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 4076
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4077
    .local v1, "motionPosition":I
    if-eq v3, v10, :cond_6

    if-eq v3, v12, :cond_6

    if-ltz v1, :cond_6

    .line 4080
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4081
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4082
    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 4083
    iput v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 4084
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 4085
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4086
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V

    .line 4088
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    .line 4089
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4090
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4091
    if-eq v3, v10, :cond_7

    if-ne v3, v12, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_7
    move v7, v8

    .line 4092
    goto :goto_0

    .line 4098
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_1

    .line 4101
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 4103
    :pswitch_3
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4104
    .local v2, "pointerIndex":I
    if-ne v2, v11, :cond_8

    .line 4105
    const/4 v2, 0x0

    .line 4106
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 4108
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 4109
    .restart local v5    # "x":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 4110
    .restart local v6    # "y":I
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4111
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4112
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4113
    invoke-direct {p0, v5, v6}, Lcom/tencent/qrom/widget/AbsListView;->startScrollIfNeeded(II)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 4114
    goto/16 :goto_0

    .line 4117
    :cond_9
    const/4 v9, 0x0

    invoke-direct {p0, v5, v6, v9}, Lcom/tencent/qrom/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 4118
    goto/16 :goto_0

    .line 4128
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_4
    iput v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 4129
    iput v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 4130
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->recycleVelocityTracker()V

    .line 4131
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4136
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4064
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4101
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3000
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3005
    sparse-switch p1, :sswitch_data_0

    .line 3025
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 3008
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3011
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3015
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3016
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3017
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/tencent/qrom/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3018
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3020
    :cond_2
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    goto :goto_0

    .line 3005
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2120
    invoke-super/range {p0 .. p5}, Lcom/tencent/qrom/widget/AdapterView;->onLayout(ZIIII)V

    .line 2121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mInLayout:Z

    .line 2122
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2123
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2125
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2130
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 2131
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mInLayout:Z

    .line 2133
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mOverscrollMax:I

    .line 2136
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 2137
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/widget/FastScroller;->onItemCountChanged(II)V

    .line 2139
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2094
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2095
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->useDefaultSelector()V

    .line 2097
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2098
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2099
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2100
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2101
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2104
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2105
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2106
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2107
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2108
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2109
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2112
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2108
    goto :goto_0

    .line 2109
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 3919
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3920
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollX:I

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollX:I

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->onScrollChanged(IIII)V

    .line 3921
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 3922
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3924
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars()Z

    .line 3926
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6573
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 6574
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6575
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 6576
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->notifyDataSetChanged()V

    .line 6577
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6584
    :cond_0
    :goto_0
    return v0

    .line 6580
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    if-eqz v1, :cond_0

    .line 6581
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->superNotifyDataSetChanged()V

    .line 6582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6596
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1842
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 1844
    .local v0, "ss":Lcom/tencent/qrom/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1845
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 1847
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncHeight:J

    .line 1849
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_5

    .line 1850
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    .line 1851
    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 1852
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncRowId:J

    .line 1853
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    .line 1854
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSpecificTop:I

    .line 1855
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncMode:I

    .line 1869
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1871
    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1872
    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1875
    :cond_1
    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1876
    iget-object v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1879
    :cond_2
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 1881
    iget-boolean v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1883
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1886
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->requestLayout()V

    .line 1888
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 1889
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    .line 1892
    :cond_4
    return-void

    .line 1856
    :cond_5
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1857
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1859
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1860
    iput v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 1861
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    .line 1862
    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 1863
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncRowId:J

    .line 1864
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncPosition:I

    .line 1865
    iget v1, v0, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSpecificTop:I

    .line 1866
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    .line 1752
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1754
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Lcom/tencent/qrom/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1756
    .local v8, "ss":Lcom/tencent/qrom/widget/AbsListView$SavedState;
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    if-eqz v12, :cond_1

    .line 1758
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-wide v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->selectedId:J

    .line 1759
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-wide v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    .line 1760
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    .line 1761
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    .line 1762
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->height:I

    .line 1763
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-object v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1764
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1765
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1766
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-object v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1767
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    iget-object v12, v12, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1837
    :cond_0
    :goto_0
    return-object v8

    .line 1771
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 1772
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1773
    .local v6, "selectedId":J
    iput-wide v6, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->selectedId:J

    .line 1774
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->height:I

    .line 1776
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 1778
    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    .line 1779
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    .line 1780
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    .line 1807
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1808
    iget-boolean v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 1809
    iget-object v10, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1810
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 1811
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1812
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 1813
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1818
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1820
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 1821
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1823
    :cond_3
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 1824
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1825
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1826
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 1827
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1826
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1771
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1782
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 1792
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1793
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    .line 1794
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 1795
    .local v2, "firstPos":I
    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 1796
    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1798
    :cond_6
    iput v2, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    .line 1799
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 1801
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->viewTop:I

    .line 1802
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->firstId:J

    .line 1803
    const/4 v12, 0x0

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 1818
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 1829
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1831
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Lcom/tencent/qrom/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1833
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    if-eqz v12, :cond_0

    .line 1834
    iget-object v12, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v12}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 2483
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->rememberSyncState()V

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2487
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2489
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 6364
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6365
    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->createTextFilter(Z)V

    .line 6366
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6367
    .local v1, "length":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6368
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6370
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->showPopup()V

    .line 6371
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    .line 6377
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6378
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6380
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6381
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6388
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 6372
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6374
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    .line 6375
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6383
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3435
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3438
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 3527
    :cond_1
    :goto_0
    return v9

    .line 3441
    :cond_2
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v11, :cond_3

    .line 3442
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v11}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 3445
    :cond_3
    iget-boolean v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    if-eqz v11, :cond_1

    .line 3453
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v11, :cond_4

    .line 3454
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v11, p1}, Lcom/tencent/qrom/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3455
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    .line 3456
    goto :goto_0

    .line 3460
    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3461
    iget-object v11, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3462
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 3464
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3465
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 3523
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 3524
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3526
    :cond_5
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 3527
    goto :goto_0

    .line 3467
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3472
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/tencent/qrom/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3477
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3482
    :pswitch_4
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->onTouchCancel()V

    goto :goto_1

    .line 3487
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3488
    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 3489
    .local v7, "x":I
    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3490
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Lcom/tencent/qrom/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 3491
    .local v5, "motionPosition":I
    if-ltz v5, :cond_6

    .line 3493
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3494
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3495
    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 3497
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    goto :goto_1

    .line 3503
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 3504
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3505
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 3506
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 3507
    .restart local v8    # "y":I
    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionCorrection:I

    .line 3508
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mActivePointerId:I

    .line 3509
    iput v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionX:I

    .line 3510
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionY:I

    .line 3511
    invoke-virtual {p0, v7, v8}, Lcom/tencent/qrom/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 3512
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_7

    .line 3514
    iget v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3515
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3516
    iput v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mMotionPosition:I

    .line 3518
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastY:I

    goto :goto_1

    .line 3465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3401
    if-eqz p1, :cond_2

    .line 3403
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->hideSelector()V

    .line 3407
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3410
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    .line 3412
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    .line 3431
    :cond_1
    :goto_0
    return-void

    .line 3414
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 3415
    .local v0, "touchMode":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3416
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3417
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3419
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3420
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 3423
    :cond_5
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3424
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 3425
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidateParentCaches()V

    .line 3426
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->finishGlows()V

    .line 3427
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2774
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 2776
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2778
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_4

    .line 2779
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2780
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2781
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2784
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 2785
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2786
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 2788
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2789
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollY:I

    .line 2790
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidateParentCaches()V

    .line 2791
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->finishGlows()V

    .line 2792
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 2796
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->dismissPopup()V

    .line 2798
    if-ne v0, v2, :cond_2

    .line 2800
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 2824
    :cond_2
    :goto_1
    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastTouchMode:I

    .line 2825
    return-void

    .end local v0    # "touchMode":I
    :cond_3
    move v0, v2

    .line 2776
    goto :goto_0

    .line 2803
    .restart local v0    # "touchMode":I
    :cond_4
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2805
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->showPopup()V

    .line 2809
    :cond_5
    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2811
    if-ne v0, v2, :cond_6

    .line 2813
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2817
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->hideSelector()V

    .line 2818
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 2819
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1149
    const/4 v8, 0x0

    .line 1150
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1152
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_4

    .line 1153
    const/4 v8, 0x1

    .line 1154
    const/4 v6, 0x0

    .line 1156
    .local v6, "checkedStateChanged":Z
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_9

    .line 1158
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_6

    move v5, v0

    .line 1159
    .local v5, "checked":Z
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1160
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    if-eqz v5, :cond_7

    .line 1162
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1167
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    .line 1168
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 1172
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1175
    const/4 v7, 0x0

    .line 1177
    :cond_2
    const/4 v6, 0x1

    .line 1194
    .end local v5    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 1195
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1199
    .end local v6    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1200
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1203
    :cond_5
    return v8

    .restart local v6    # "checkedStateChanged":Z
    :cond_6
    move v5, v1

    .line 1158
    goto :goto_0

    .line 1164
    .restart local v5    # "checked":Z
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1170
    :cond_8
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1178
    .end local v5    # "checked":Z
    :cond_9
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v0, :cond_3

    .line 1179
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_c

    move v5, v0

    .line 1180
    .restart local v5    # "checked":Z
    :goto_4
    if-eqz v5, :cond_d

    .line 1181
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1182
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1183
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1184
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1185
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1187
    :cond_a
    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 1191
    :cond_b
    :goto_5
    const/4 v6, 0x1

    goto :goto_3

    .end local v5    # "checked":Z
    :cond_c
    move v5, v1

    .line 1179
    goto :goto_4

    .line 1188
    .restart local v5    # "checked":Z
    :cond_d
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1189
    :cond_e
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2931
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2932
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2934
    invoke-virtual {p0, p2, v6}, Lcom/tencent/qrom/widget/AbsListView;->setItemChecked(IZ)V

    .line 2935
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->performHapticFeedback(I)Z

    .line 2952
    :cond_0
    :goto_0
    return v6

    .line 2940
    :cond_1
    const/4 v6, 0x0

    .line 2941
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 2942
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2945
    :cond_2
    if-nez v6, :cond_3

    .line 2946
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2947
    invoke-super {p0, p0}, Lcom/tencent/qrom/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2949
    :cond_3
    if-eqz v6, :cond_0

    .line 2950
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3043
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3044
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3045
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3046
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3049
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3050
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3051
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3052
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3053
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3054
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3055
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3059
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3050
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3059
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3072
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3073
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3074
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3076
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x1

    .line 2385
    if-eq p1, v7, :cond_0

    .line 2386
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 2389
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2390
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2391
    instance-of v3, p2, Lcom/tencent/qrom/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 2392
    check-cast v3, Lcom/tencent/qrom/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, v2}, Lcom/tencent/qrom/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2398
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2399
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2400
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2401
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2404
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2405
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 2406
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2409
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2410
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 2411
    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2412
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 2413
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->refreshDrawableState()V

    .line 2416
    :cond_3
    return-void

    .line 2411
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2366
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2367
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget v7, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    if-eq v7, p1, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 2369
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2370
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2373
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2375
    if-eqz v1, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2377
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 2378
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 2379
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2380
    invoke-virtual {p0, v2, v3, v4}, Lcom/tencent/qrom/widget/AbsListView;->qromSetHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 2382
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 2367
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 2379
    goto :goto_1
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2353
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2355
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p3, p4}, Lcom/tencent/qrom/widget/AbsListView;->qromSetHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 2358
    :cond_0
    return-void
.end method

.method public qromSetHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 7459
    :try_start_0
    instance-of v0, p1, Lcom/tencent/qrom/drawable/QromDrawable;

    if-eqz v0, :cond_0

    .line 7460
    check-cast p1, Lcom/tencent/qrom/drawable/QromDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p2, p3}, Lcom/tencent/qrom/drawable/QromDrawable;->qromSetHotspot(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7465
    :cond_0
    :goto_0
    return-void

    .line 7462
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method qromTrackMotionScroll(III)Z
    .locals 40
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 7478
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v36

    move/from16 v0, p3

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 7479
    const/16 v35, 0x0

    .line 7480
    .local v35, "totalHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getDisplayItemTotalHeight(I)I

    move-result v35

    .line 7481
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_0

    .line 7482
    const/16 v36, 0x1

    .line 7639
    .end local v35    # "totalHeight":I
    :goto_0
    return v36

    .line 7485
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 7486
    .local v16, "firstPosition":I
    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    move/from16 v17, v0

    .line 7487
    .local v17, "firstTop":I
    :goto_1
    if-nez p3, :cond_2

    move/from16 v25, v17

    .line 7488
    .local v25, "lastBottom":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v27

    .line 7489
    .local v27, "mPaddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v28

    .line 7490
    .local v28, "mPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 7491
    .local v26, "listPadding":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 7492
    .local v14, "effectivePaddingTop":I
    const/4 v13, 0x0

    .line 7493
    .local v13, "effectivePaddingBottom":I
    sub-int v30, v14, v17

    .line 7494
    .local v30, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    sub-int v15, v36, v13

    .line 7495
    .local v15, "end":I
    sub-int v31, v25, v15

    .line 7496
    .local v31, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    sub-int v36, v36, v27

    sub-int v20, v36, v28

    .line 7497
    .local v20, "height":I
    if-gez p2, :cond_3

    .line 7498
    add-int/lit8 v36, v20, -0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7502
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, p3

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    sub-int v36, v25, v17

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    const/16 v24, 0x1

    .line 7503
    .local v24, "isTooShort":Z
    :goto_4
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTopOffset:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v34, v17, v36

    .line 7504
    .local v34, "topOffset":I
    if-eqz v24, :cond_5

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v5, v17, v36

    .line 7506
    .local v5, "bottomOffset":I
    :goto_5
    if-nez v16, :cond_6

    if-lez v34, :cond_6

    const/16 v23, 0x1

    .line 7507
    .local v23, "isOutOfTop":Z
    :goto_6
    add-int v36, v16, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    if-gez v5, :cond_7

    const/16 v22, 0x1

    .line 7508
    .local v22, "isOutOfBottom":Z
    :goto_7
    if-eqz v23, :cond_8

    if-lez p2, :cond_8

    const/4 v6, 0x1

    .line 7509
    .local v6, "cannotScrollDown":Z
    :goto_8
    if-eqz v22, :cond_9

    if-gtz p2, :cond_9

    const/4 v7, 0x1

    .line 7510
    .local v7, "cannotScrollUp":Z
    :goto_9
    if-eqz v24, :cond_a

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v36, v0

    const/16 v37, 0x7

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_a

    .line 7511
    const/16 v36, 0x4

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 7512
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 7486
    .end local v5    # "bottomOffset":I
    .end local v6    # "cannotScrollDown":Z
    .end local v7    # "cannotScrollUp":Z
    .end local v13    # "effectivePaddingBottom":I
    .end local v14    # "effectivePaddingTop":I
    .end local v15    # "end":I
    .end local v17    # "firstTop":I
    .end local v20    # "height":I
    .end local v22    # "isOutOfBottom":Z
    .end local v23    # "isOutOfTop":Z
    .end local v24    # "isTooShort":Z
    .end local v25    # "lastBottom":I
    .end local v26    # "listPadding":Landroid/graphics/Rect;
    .end local v27    # "mPaddingBottom":I
    .end local v28    # "mPaddingTop":I
    .end local v30    # "spaceAbove":I
    .end local v31    # "spaceBelow":I
    .end local v34    # "topOffset":I
    :cond_1
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTop()I

    move-result v17

    goto/16 :goto_1

    .line 7487
    .restart local v17    # "firstTop":I
    :cond_2
    add-int/lit8 v36, p3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBottom()I

    move-result v25

    goto/16 :goto_2

    .line 7500
    .restart local v13    # "effectivePaddingBottom":I
    .restart local v14    # "effectivePaddingTop":I
    .restart local v15    # "end":I
    .restart local v20    # "height":I
    .restart local v25    # "lastBottom":I
    .restart local v26    # "listPadding":Landroid/graphics/Rect;
    .restart local v27    # "mPaddingBottom":I
    .restart local v28    # "mPaddingTop":I
    .restart local v30    # "spaceAbove":I
    .restart local v31    # "spaceBelow":I
    :cond_3
    add-int/lit8 v36, v20, -0x1

    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_3

    .line 7502
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 7504
    .restart local v24    # "isTooShort":Z
    .restart local v34    # "topOffset":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    sub-int v36, v25, v36

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastBottomOffset:I

    move/from16 v37, v0

    add-int v5, v36, v37

    goto/16 :goto_5

    .line 7506
    .restart local v5    # "bottomOffset":I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 7507
    .restart local v23    # "isOutOfTop":Z
    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .line 7508
    .restart local v22    # "isOutOfBottom":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    .line 7509
    .restart local v6    # "cannotScrollDown":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 7514
    .restart local v7    # "cannotScrollUp":Z
    :cond_a
    if-nez v23, :cond_b

    if-eqz v22, :cond_19

    .line 7515
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    .line 7516
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v36, v0

    const v37, 0x3fd9999a    # 1.7f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x43c80000    # 400.0f

    div-float v38, v38, v39

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->abs(F)F

    move-result v38

    add-float v37, v37, v38

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 p2, v0

    .line 7518
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    move/from16 v36, v0

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 7519
    if-eqz v6, :cond_d

    .line 7520
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v36, v0

    const v37, 0x3fd9999a    # 1.7f

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 p2, v0

    .line 7521
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v12, v17, v36

    .line 7522
    .local v12, "duration":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    div-int/lit8 v36, v36, 0x6

    move/from16 v0, v36

    if-le v12, v0, :cond_10

    .line 7523
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 7525
    .end local v12    # "duration":I
    :cond_d
    if-eqz v7, :cond_10

    if-nez v23, :cond_10

    .line 7526
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v36, v0

    const v37, 0x3fd9999a    # 1.7f

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 p2, v0

    .line 7527
    move v12, v5

    .line 7528
    .restart local v12    # "duration":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x6

    move/from16 v0, v36

    if-ge v12, v0, :cond_10

    .line 7529
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 7533
    .end local v12    # "duration":I
    :cond_e
    if-lez p2, :cond_f

    .line 7534
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v12, v17, v36

    .line 7535
    .restart local v12    # "duration":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    div-int/lit8 v36, v36, 0x4

    move/from16 v0, v36

    if-le v12, v0, :cond_10

    .line 7536
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 7538
    .end local v12    # "duration":I
    :cond_f
    if-gez p2, :cond_10

    if-nez v23, :cond_10

    .line 7539
    move v12, v5

    .line 7540
    .restart local v12    # "duration":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x4

    move/from16 v0, v36

    if-ge v12, v0, :cond_10

    .line 7541
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 7545
    .end local v12    # "duration":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 7546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    move/from16 v36, v0

    if-eqz v36, :cond_11

    .line 7547
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    .line 7548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;->onChange(I)V

    .line 7568
    :cond_11
    :goto_a
    if-gez p2, :cond_1b

    const/4 v11, 0x1

    .line 7569
    .local v11, "down":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeaderViewsCount()I

    move-result v19

    .line 7570
    .local v19, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getFooterViewsCount()I

    move-result v37

    sub-int v18, v36, v37

    .line 7571
    .local v18, "footerViewsStart":I
    const/16 v32, 0x0

    .line 7572
    .local v32, "start":I
    const/4 v10, 0x0

    .line 7573
    .local v10, "count":I
    if-eqz v11, :cond_1e

    .line 7574
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v33, v0

    .line 7575
    .local v33, "top":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_c
    move/from16 v0, v21

    move/from16 v1, p3

    if-ge v0, v1, :cond_12

    .line 7576
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7577
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v36

    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v37

    add-int v37, v37, v33

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_1c

    .line 7603
    .end local v8    # "child":Landroid/view/View;
    .end local v33    # "top":I
    :cond_12
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7604
    if-lez v10, :cond_13

    .line 7605
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Lcom/tencent/qrom/widget/AbsListView;->detachViewsFromParent(II)V

    .line 7607
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars()Z

    move-result v36

    if-nez v36, :cond_14

    .line 7608
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 7610
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 7611
    if-eqz v11, :cond_15

    .line 7612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v36, v0

    add-int v36, v36, v10

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 7614
    :cond_15
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7615
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v30

    if-lt v0, v3, :cond_16

    move/from16 v0, v31

    if-ge v0, v3, :cond_17

    .line 7616
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tencent/qrom/widget/AbsListView;->fillGap(Z)V

    .line 7619
    :cond_17
    if-nez p3, :cond_20

    .line 7620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    move/from16 v36, v0

    add-int v36, v36, p2

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    .line 7629
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_22

    .line 7630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v9, v36, v37

    .line 7631
    .local v9, "childIndex":I
    if-ltz v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v36

    move/from16 v0, v36

    if-ge v9, v0, :cond_18

    .line 7632
    const/16 v36, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7637
    .end local v9    # "childIndex":I
    :cond_18
    :goto_e
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7638
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7639
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 7552
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v18    # "footerViewsStart":I
    .end local v19    # "headerViewsCount":I
    .end local v21    # "i":I
    .end local v32    # "start":I
    :cond_19
    const/16 v36, 0x5

    move/from16 v0, p2

    move/from16 v1, v36

    if-le v0, v1, :cond_1a

    .line 7553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 7554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 7555
    const/16 v36, 0x2

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    .line 7556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-interface/range {v36 .. v37}, Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;->onChange(I)V

    goto/16 :goto_a

    .line 7559
    :cond_1a
    const/16 v36, -0x5

    move/from16 v0, p2

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    .line 7560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 7561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 7562
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mScrollState:I

    .line 7563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->onScrollStateListener:Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Lcom/tencent/qrom/widget/ListView$OnScrollStateListener;->onChange(I)V

    goto/16 :goto_a

    .line 7568
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 7580
    .restart local v8    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v18    # "footerViewsStart":I
    .restart local v19    # "headerViewsCount":I
    .restart local v21    # "i":I
    .restart local v32    # "start":I
    .restart local v33    # "top":I
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    .line 7581
    add-int v29, v16, v21

    .line 7582
    .local v29, "position":I
    move/from16 v0, v29

    move/from16 v1, v19

    if-lt v0, v1, :cond_1d

    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_1d

    .line 7583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7575
    :cond_1d
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c

    .line 7588
    .end local v8    # "child":Landroid/view/View;
    .end local v21    # "i":I
    .end local v29    # "position":I
    .end local v33    # "top":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v36

    sub-int v4, v36, p2

    .line 7589
    .local v4, "bottom":I
    add-int/lit8 v21, p3, -0x1

    .restart local v21    # "i":I
    :goto_f
    if-ltz v21, :cond_12

    .line 7590
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7591
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v36

    const/16 v37, 0x0

    move/from16 v0, v37

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    add-int v37, v37, v4

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_12

    .line 7594
    move/from16 v32, v21

    .line 7595
    add-int/lit8 v10, v10, 0x1

    .line 7596
    add-int v29, v16, v21

    .line 7597
    .restart local v29    # "position":I
    move/from16 v0, v29

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_1f

    .line 7598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7589
    :cond_1f
    add-int/lit8 v21, v21, -0x1

    goto :goto_f

    .line 7622
    .end local v4    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v29    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_20
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_21

    .line 7623
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTop()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    goto/16 :goto_d

    .line 7625
    :cond_21
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    goto/16 :goto_d

    .line 7635
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_e
.end method

.method public qromUpdateItemViewTranslation(IIFI)V
    .locals 11
    .param p1, "lastPosition"    # I
    .param p2, "position"    # I
    .param p3, "positionOffset"    # F
    .param p4, "index"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 7431
    if-le p1, p2, :cond_1

    move v0, p2

    .line 7433
    .local v0, "animationPosition":I
    :goto_0
    if-ne v0, p4, :cond_4

    .line 7434
    sub-int v7, v0, p2

    int-to-float v7, v7

    sub-float v2, v7, p3

    .line 7435
    .local v2, "fraction":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 7454
    .end local v2    # "fraction":F
    :cond_0
    return-void

    .line 7431
    .end local v0    # "animationPosition":I
    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 7439
    .restart local v0    # "animationPosition":I
    .restart local v2    # "fraction":F
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7440
    .local v5, "minChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 7441
    add-int/lit8 v7, v3, 0x1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v4, v7, v8

    .line 7442
    .local v4, "maxTranslationX":F
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7443
    .local v1, "child":Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v10, v7

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v6, v4, v7

    .line 7444
    .local v6, "translationX":F
    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 7446
    cmpl-float v7, v2, v9

    if-lez v7, :cond_3

    .end local v6    # "translationX":F
    :goto_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 7440
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7446
    .restart local v6    # "translationX":F
    :cond_3
    neg-float v6, v6

    goto :goto_2

    .line 7449
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "fraction":F
    .end local v3    # "i":I
    .end local v4    # "maxTranslationX":F
    .end local v5    # "minChildCount":I
    .end local v6    # "translationX":F
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 7450
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7451
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 7449
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6494
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6495
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    # getter for: Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->mRecyclerListener:Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->access$3900(Lcom/tencent/qrom/widget/AbsListView$RecycleBin;)Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6498
    .local v3, "listener":Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6499
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6500
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;

    .line 6502
    .local v4, "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    iget v6, v4, Lcom/tencent/qrom/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6503
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6504
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6505
    if-eqz v3, :cond_0

    .line 6507
    invoke-interface {v3, v0}, Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6511
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/tencent/qrom/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6512
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6513
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 5560
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    .line 5561
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 5562
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 5564
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5565
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5566
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 4190
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 4191
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4192
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastScrollState:I

    .line 4193
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Lcom/tencent/qrom/widget/AbsListView;I)V

    .line 4196
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4028
    if-eqz p1, :cond_0

    .line 4029
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->recycleVelocityTracker()V

    .line 4031
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4032
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1955
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1956
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->requestLayout()V

    .line 1958
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resetList()V

    .line 1648
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->requestLayout()V

    .line 1649
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 1651
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1964
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1965
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 1967
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTopOffset:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    .line 1969
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 1970
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1971
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mNeedSync:Z

    .line 1972
    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mPendingSync:Lcom/tencent/qrom/widget/AbsListView$SavedState;

    .line 1973
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mOldSelectedPosition:I

    .line 1974
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOldSelectedRowId:J

    .line 1975
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1976
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1977
    iput v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedTop:I

    .line 1978
    iput v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    .line 1979
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1980
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 1981
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5628
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5630
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 5631
    const/16 v17, 0x0

    .line 5726
    :goto_0
    return v17

    .line 5634
    :cond_0
    const/4 v13, 0x0

    .line 5636
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5637
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5638
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 5639
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 5640
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 5642
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5643
    move v12, v14

    .line 5645
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5646
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5647
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5650
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 5651
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5707
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mResurrectToPosition:I

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 5712
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    .line 5713
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V

    .line 5714
    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/qrom/widget/AbsListView;->mSpecificTop:I

    .line 5715
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/tencent/qrom/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5716
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5717
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLayoutMode:I

    .line 5718
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    .line 5719
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/qrom/widget/AbsListView;->setSelectionInt(I)V

    .line 5720
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5724
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5726
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5652
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5653
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 5657
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5659
    move v12, v7

    .line 5660
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5661
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5662
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5664
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 5666
    move v13, v15

    .line 5668
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5671
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5674
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5676
    add-int v12, v7, v8

    .line 5677
    move v13, v15

    .line 5678
    goto/16 :goto_1

    .line 5660
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5682
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    .line 5683
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 5684
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5686
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 5687
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5688
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5689
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5691
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5692
    move v13, v15

    .line 5693
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5694
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5698
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5699
    add-int v12, v7, v8

    .line 5700
    move v13, v15

    .line 5701
    goto/16 :goto_1

    .line 5686
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5722
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 5726
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 5608
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5609
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    .line 5610
    const/4 v0, 0x1

    .line 5612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 5291
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5292
    return-void
.end method

.method protected scrollToAdjustViewsUpOrDown()V
    .locals 1

    .prologue
    .line 4199
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 4200
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->scrollToAdjustViewsUpOrDown()Z

    .line 4202
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1514
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1515
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1516
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1517
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1526
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1521
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1522
    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1525
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 6040
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 6101
    :cond_0
    :goto_0
    return v2

    .line 6044
    :cond_1
    const/4 v2, 0x0

    .line 6045
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 6046
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 6078
    :goto_1
    if-eqz v3, :cond_0

    .line 6079
    invoke-direct {p0, v8}, Lcom/tencent/qrom/widget/AbsListView;->createTextFilter(Z)V

    .line 6081
    move-object v1, p3

    .line 6082
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 6083
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6086
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6087
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6089
    :pswitch_0
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6090
    goto :goto_0

    .line 6053
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 6054
    goto :goto_1

    .line 6056
    :sswitch_1
    iget-boolean v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6057
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 6059
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6060
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 6061
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6063
    :cond_3
    const/4 v2, 0x1

    .line 6070
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 6071
    goto :goto_1

    .line 6064
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6066
    const/4 v2, 0x1

    .line 6067
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6074
    :sswitch_2
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 6093
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6094
    goto :goto_0

    .line 6097
    :pswitch_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 6046
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 6087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 123
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 949
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 962
    :cond_2
    return-void
.end method

.method public setBlurRecycleFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 7643
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mBlurRecycleFlag:Z

    .line 7644
    return-void
.end method

.method public setBottomSelector(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 7331
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setBottomSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7332
    return-void
.end method

.method public setBottomSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 7335
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 7336
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7337
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6465
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6466
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCacheColorHint:I

    .line 6467
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6468
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6469
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6471
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6473
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1247
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    .line 1248
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1252
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1260
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->clearChoices()V

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setLongClickable(Z)V

    .line 1265
    :cond_3
    return-void
.end method

.method public setClickDelay(Z)V
    .locals 0
    .param p1, "clickDelay"    # Z

    .prologue
    .line 7419
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mClickDelay:Z

    .line 7420
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2546
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2547
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1358
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1362
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1364
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1367
    :cond_2
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/AbsListView$2;-><init>(Lcom/tencent/qrom/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1312
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1314
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/AbsListView$1;-><init>(Lcom/tencent/qrom/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 1907
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1908
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->createTextFilter(Z)V

    .line 1911
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1912
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1913
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1915
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1916
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1917
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1921
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    .line 1922
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataSetObserver:Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1925
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2148
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2152
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2153
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2154
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->positionPopup()V

    .line 2158
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5111
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 5113
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    # getter for: Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->access$1400(Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5114
    return-void
.end method

.method public setIsNeedBounce(Z)V
    .locals 0
    .param p1, "isNeedBounce"    # Z

    .prologue
    .line 7416
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce:Z

    .line 7417
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1079
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    if-eqz p2, :cond_4

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_4

    .line 1085
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1087
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1094
    :cond_4
    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_b

    .line 1095
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1096
    .local v6, "oldValue":Z
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1097
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1098
    if-eqz p2, :cond_9

    .line 1099
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1104
    :cond_6
    :goto_1
    if-eq v6, p2, :cond_7

    .line 1105
    if-eqz p2, :cond_a

    .line 1106
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    .line 1111
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1112
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1113
    .local v3, "id":J
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1140
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1141
    iput-boolean v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    .line 1142
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->rememberSyncState()V

    .line 1143
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1101
    .restart local v6    # "oldValue":Z
    :cond_9
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1108
    :cond_a
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1117
    .end local v6    # "oldValue":Z
    :cond_b
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_f

    move v7, v8

    .line 1120
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1121
    :cond_c
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1122
    if-eqz v7, :cond_d

    .line 1123
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1128
    :cond_d
    if-eqz p2, :cond_10

    .line 1129
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1130
    if-eqz v7, :cond_e

    .line 1131
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1133
    :cond_e
    iput v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_f
    move v7, v0

    .line 1117
    goto :goto_4

    .line 1134
    .restart local v7    # "updateIds":Z
    :cond_10
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1135
    :cond_11
    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1278
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mMultiChoiceModeCallback:Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/tencent/qrom/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1281
    return-void
.end method

.method public setOnScrollListener(Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnScrollListener:Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;

    .line 1493
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1494
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 4001
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingLeft:I

    .line 4002
    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mGlowPaddingRight:I

    .line 4003
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 929
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-direct {v1, v0}, Lcom/tencent/qrom/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    .line 933
    new-instance v1, Lcom/tencent/qrom/widget/EdgeEffect;

    invoke-direct {v1, v0}, Lcom/tencent/qrom/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    .line 939
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->setOverScrollMode(I)V

    .line 940
    return-void

    .line 936
    :cond_1
    iput-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowTop:Lcom/tencent/qrom/widget/EdgeEffect;

    .line 937
    iput-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mEdgeGlowBottom:Lcom/tencent/qrom/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;

    .prologue
    .line 6620
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    # setter for: Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->mRecyclerListener:Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->access$3902(Lcom/tencent/qrom/widget/AbsListView$RecycleBin;Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;)Lcom/tencent/qrom/widget/AbsListView$RecyclerListener;

    .line 6621
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6530
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    if-eqz v2, :cond_1

    .line 6531
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6532
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6534
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6544
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 6538
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6540
    new-instance v2, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    .line 6541
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6542
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1437
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1438
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1441
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 2629
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2630
    iput-object p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2631
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1557
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V

    .line 1559
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1560
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2557
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2558
    return-void
.end method

.method public setSelector(III)V
    .locals 0
    .param p1, "selResId"    # I
    .param p2, "topSelResId"    # I
    .param p3, "bottomSelResId"    # I

    .prologue
    .line 7340
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(I)V

    .line 7341
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/AbsListView;->setTopSelector(I)V

    .line 7342
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/AbsListView;->setBottomSelector(I)V

    .line 7343
    return-void
.end method

.method public setSelector(IZ)V
    .locals 0
    .param p1, "resID"    # I
    .param p2, "shaped"    # Z

    .prologue
    .line 7308
    iput-boolean p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 7310
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(I)V

    .line 7311
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2561
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2562
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2563
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2565
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2566
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2567
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2568
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2569
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionTopPadding:I

    .line 2570
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionRightPadding:I

    .line 2571
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2572
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2573
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->updateSelectorState()V

    .line 2574
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topSel"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bottomSel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 7346
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7347
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/AbsListView;->setTopSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7348
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/AbsListView;->setBottomSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7349
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;
    .param p2, "shaped"    # Z

    .prologue
    .line 7314
    iput-boolean p2, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 7316
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7317
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1471
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1472
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1639
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1640
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mStackFromBottom:Z

    .line 1641
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1643
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1573
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1574
    return-void
.end method

.method public setTopSelector(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 7322
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->setTopSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7323
    return-void
.end method

.method public setTopSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 7326
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 7327
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7328
    return-void
.end method

.method public setTouchOffsetFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 7647
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mIsTouchOffsetFlag:Z

    .line 7648
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 6436
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mTranscriptMode:I

    .line 6437
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 5123
    iput p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mVelocityScale:F

    .line 5124
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1429
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1430
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1433
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    if-eqz v0, :cond_0

    .line 6604
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mRemoteAdapter:Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;->setVisibleRangeHint(II)V

    .line 6606
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2514
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 2963
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/tencent/qrom/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 2964
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2965
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2966
    .local v1, "id":J
    iget v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2967
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2968
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2969
    invoke-super {p0, p0}, Lcom/tencent/qrom/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 2972
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "id":J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2977
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2978
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 2979
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2980
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 2982
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2986
    :cond_0
    if-nez v6, :cond_1

    .line 2987
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/tencent/qrom/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2990
    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2995
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 5197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5198
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 5201
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 5202
    new-instance v5, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    .line 5206
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 5207
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5208
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 5209
    .local v3, "lastPos":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 5210
    .local v4, "topLimit":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5212
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 5216
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5217
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 5218
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->stop()V

    .line 5224
    :cond_3
    :goto_0
    return-void

    .line 5221
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5222
    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView;->mFlingRunnable:Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 5230
    const/4 v2, -0x1

    .line 5231
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 5232
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5237
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5238
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5239
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5240
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5241
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5243
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5244
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5245
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5246
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5247
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 5250
    add-int/lit8 v2, v2, 0x1

    .line 5257
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5260
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5233
    :cond_3
    if-lez p1, :cond_0

    .line 5234
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5251
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 5254
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5133
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    .line 5135
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(I)V

    .line 5136
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5186
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    .line 5188
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(II)V

    .line 5189
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5170
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    .line 5172
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    .line 5173
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5152
    new-instance v0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    .line 5154
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mPositionScroller:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 5155
    return-void
.end method

.method state2String(I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 7353
    const/4 v0, 0x0

    .line 7354
    .local v0, "fValue":Z
    if-gez p1, :cond_0

    .line 7355
    neg-int p1, p1

    .line 7356
    const/4 v0, 0x1

    .line 7358
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 7407
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 7360
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_above_anchor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v1, "(false)"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 7362
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_accelerated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v1, "(false)"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 7364
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_activated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, "(false)"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 7366
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    const-string v1, "(false)"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 7368
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_checkable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_5

    const-string v1, "(false)"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 7370
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_checked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_6

    const-string v1, "(false)"

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string v1, ""

    goto :goto_6

    .line 7372
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_drag_can_accept"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_7

    const-string v1, "(false)"

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const-string v1, ""

    goto :goto_7

    .line 7374
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_drag_hovered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_8

    const-string v1, "(false)"

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const-string v1, ""

    goto :goto_8

    .line 7376
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_9

    const-string v1, "(false)"

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const-string v1, ""

    goto :goto_9

    .line 7378
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_a

    const-string v1, "(false)"

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    const-string v1, ""

    goto :goto_a

    .line 7380
    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_expanded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_b

    const-string v1, "(false)"

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const-string v1, ""

    goto :goto_b

    .line 7382
    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_c

    const-string v1, "(false)"

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const-string v1, ""

    goto :goto_c

    .line 7384
    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_focused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_d

    const-string v1, "(false)"

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const-string v1, ""

    goto :goto_d

    .line 7386
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_hovered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_e

    const-string v1, "(false)"

    :goto_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    const-string v1, ""

    goto :goto_e

    .line 7388
    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_last"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_f

    const-string v1, "(false)"

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    const-string v1, ""

    goto :goto_f

    .line 7390
    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_long_pressable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_10

    const-string v1, "(false)"

    :goto_10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    const-string v1, ""

    goto :goto_10

    .line 7392
    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_middle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_11

    const-string v1, "(false)"

    :goto_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    const-string v1, ""

    goto :goto_11

    .line 7394
    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_multiline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_12

    const-string v1, "(false)"

    :goto_12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    const-string v1, ""

    goto :goto_12

    .line 7396
    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_pressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_13

    const-string v1, "(false)"

    :goto_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    const-string v1, ""

    goto :goto_13

    .line 7398
    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_14

    const-string v1, "(false)"

    :goto_14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    const-string v1, ""

    goto :goto_14

    .line 7400
    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_single"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_15

    const-string v1, "(false)"

    :goto_15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_15
    const-string v1, ""

    goto :goto_15

    .line 7402
    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_window_focused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_16

    const-string v1, "(false)"

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_16
    const-string v1, ""

    goto :goto_16

    .line 7358
    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_c
        0x101009d -> :sswitch_15
        0x101009e -> :sswitch_9
        0x101009f -> :sswitch_4
        0x10100a0 -> :sswitch_5
        0x10100a1 -> :sswitch_13
        0x10100a2 -> :sswitch_3
        0x10100a3 -> :sswitch_14
        0x10100a4 -> :sswitch_b
        0x10100a5 -> :sswitch_10
        0x10100a6 -> :sswitch_e
        0x10100a7 -> :sswitch_12
        0x10100a8 -> :sswitch_a
        0x10100a9 -> :sswitch_8
        0x10100aa -> :sswitch_0
        0x101023c -> :sswitch_f
        0x10102fe -> :sswitch_2
        0x101031b -> :sswitch_1
        0x101034d -> :sswitch_11
        0x1010367 -> :sswitch_d
        0x1010368 -> :sswitch_6
        0x1010369 -> :sswitch_7
    .end sparse-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2497
    iget v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2502
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2500
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 5330
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 5331
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 5332
    const/16 v29, 0x1

    .line 5506
    :goto_0
    return v29

    .line 5334
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isNeedBounce()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 5335
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/tencent/qrom/widget/AbsListView;->qromTrackMotionScroll(III)Z

    move-result v29

    goto :goto_0

    .line 5337
    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 5338
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 5340
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 5345
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 5346
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 5347
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 5348
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5349
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5353
    :cond_2
    sub-int v25, v13, v16

    .line 5354
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 5355
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 5357
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 5358
    .local v19, "height":I
    if-gez p1, :cond_4

    .line 5359
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5364
    :goto_1
    if-gez p2, :cond_5

    .line 5365
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5370
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 5373
    .local v15, "firstPosition":I
    if-nez v15, :cond_6

    .line 5374
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5378
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 5379
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5384
    :goto_4
    if-nez v15, :cond_8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_8

    const/4 v5, 0x1

    .line 5385
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    if-gtz p2, :cond_9

    const/4 v6, 0x1

    .line 5388
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_3

    if-eqz v6, :cond_b

    .line 5389
    :cond_3
    if-eqz p2, :cond_a

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 5361
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 5367
    :cond_5
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 5376
    .restart local v15    # "firstPosition":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 5381
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 5384
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 5385
    .restart local v5    # "cannotScrollDown":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 5389
    .restart local v6    # "cannotScrollUp":Z
    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 5392
    :cond_b
    if-gez p2, :cond_15

    const/4 v11, 0x1

    .line 5394
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 5395
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_c

    .line 5396
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->hideSelector()V

    .line 5399
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 5400
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 5402
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 5403
    .local v27, "start":I
    const/4 v10, 0x0

    .line 5405
    .local v10, "count":I
    if-eqz v11, :cond_18

    .line 5406
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 5407
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 5408
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 5410
    :cond_d
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_e

    .line 5411
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5412
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 5452
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mMotionViewNewTop:I

    .line 5454
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5456
    if-lez v10, :cond_f

    .line 5457
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/tencent/qrom/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5463
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_10

    .line 5464
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 5467
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5469
    if-eqz v11, :cond_11

    .line 5470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    .line 5473
    :cond_11
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5474
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_12

    move/from16 v0, v26

    if-ge v0, v3, :cond_13

    .line 5475
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tencent/qrom/widget/AbsListView;->fillGap(Z)V

    .line 5478
    :cond_13
    if-nez v8, :cond_1b

    .line 5479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    .line 5488
    :goto_9
    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    .line 5489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5490
    .local v9, "childIndex":I
    if-ltz v9, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_14

    .line 5491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5502
    .end local v9    # "childIndex":I
    :cond_14
    :goto_a
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5504
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5506
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 5392
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 5415
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 5416
    add-int v24, v15, v20

    .line 5417
    .local v24, "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 5423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5410
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 5428
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 5429
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 5430
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 5432
    :cond_19
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_b
    if-ltz v20, :cond_e

    .line 5433
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5434
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_e

    .line 5437
    move/from16 v27, v20

    .line 5438
    add-int/lit8 v10, v10, 0x1

    .line 5439
    add-int v24, v15, v20

    .line 5440
    .restart local v24    # "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 5446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mRecycler:Lcom/tencent/qrom/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/tencent/qrom/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5432
    :cond_1a
    add-int/lit8 v20, v20, -0x1

    goto :goto_b

    .line 5481
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1b
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    if-eqz v29, :cond_1c

    .line 5482
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    goto/16 :goto_9

    .line 5484
    :cond_1c
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/widget/AbsListView;->mFirstTop:I

    goto/16 :goto_9

    .line 5493
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    .line 5494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5495
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_14

    .line 5496
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_a

    .line 5499
    .end local v9    # "childIndex":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_a
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2168
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2171
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2174
    .local v1, "canScrollUp":Z
    :goto_0
    if-nez v1, :cond_0

    .line 2175
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2176
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2177
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2181
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    .end local v1    # "canScrollUp":Z
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2186
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 2189
    .local v3, "count":I
    iget v6, p0, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2192
    .local v0, "canScrollDown":Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2193
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2194
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottom:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2197
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    .end local v0    # "canScrollDown":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2171
    goto :goto_0

    .restart local v1    # "canScrollUp":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2177
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2181
    goto :goto_2

    .end local v1    # "canScrollUp":Z
    .restart local v3    # "count":I
    :cond_7
    move v0, v5

    .line 2189
    goto :goto_3

    .restart local v0    # "canScrollDown":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2194
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2197
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2635
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2641
    :cond_0
    :goto_0
    return-void

    .line 2638
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public useShapedSelector(Z)V
    .locals 0
    .param p1, "shaped"    # Z

    .prologue
    .line 7304
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AbsListView;->mDrawShapedSelector:Z

    .line 7305
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
