.class public Lcom/tencent/qrom/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;,
        Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field public bRemoveView:Z

.field private bShadow:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7a010195

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 247
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const v0, 0x7a010080

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v7, 0x0

    iput v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    .line 87
    const/4 v7, 0x1

    iput v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSoftInputMode:I

    .line 88
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchable:Z

    .line 89
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOutsideTouchable:Z

    .line 90
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClippingEnabled:Z

    .line 91
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 94
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 110
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    .line 111
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    .line 112
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowLayoutType:I

    .line 122
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 124
    const/4 v7, -0x1

    iput v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    .line 131
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    .line 132
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->bRemoveView:Z

    .line 136
    new-instance v7, Lcom/tencent/qrom/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Lcom/tencent/qrom/widget/PopupWindow$1;-><init>(Lcom/tencent/qrom/widget/PopupWindow;)V

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 184
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 185
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 187
    sget-object v7, Lcom/tencent/qrom/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 193
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 195
    .local v2, "animStyle":I
    const v7, 0x7a0f00e1

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    .line 208
    iget-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 209
    iget-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 212
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Lcom/tencent/qrom/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 216
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 217
    .local v5, "count":I
    const/4 v4, -0x1

    .line 218
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 219
    if-eq v6, v1, :cond_3

    .line 220
    move v4, v6

    .line 227
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 228
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    return-void

    .line 218
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 231
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    .line 87
    iput v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSoftInputMode:I

    .line 88
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchable:Z

    .line 89
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOutsideTouchable:Z

    .line 90
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClippingEnabled:Z

    .line 91
    iput v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 94
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 95
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 110
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    .line 111
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowLayoutType:I

    .line 122
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 124
    iput v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    .line 131
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    .line 132
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->bRemoveView:Z

    .line 136
    new-instance v0, Lcom/tencent/qrom/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/PopupWindow$1;-><init>(Lcom/tencent/qrom/widget/PopupWindow;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 307
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/PopupWindow;->setWidth(I)V

    .line 311
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/PopupWindow;->setHeight(I)V

    .line 312
    invoke-virtual {p0, p4}, Lcom/tencent/qrom/widget/PopupWindow;->setFocusable(Z)V

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/qrom/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/PopupWindow;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1087
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1088
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1089
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x7a0f00e6

    .line 1097
    :goto_0
    return v0

    .line 1089
    :cond_0
    const v0, 0x7a0f00e2

    goto :goto_0

    .line 1095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1097
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1040
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1048
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1049
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1051
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_a

    .line 1052
    or-int/lit8 p1, p1, 0x8

    .line 1053
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1054
    or-int/2addr p1, v2

    .line 1059
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1060
    or-int/lit8 p1, p1, 0x10

    .line 1062
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1063
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1065
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1066
    or-int/lit16 p1, p1, 0x200

    .line 1068
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1069
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1071
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1072
    or-int/lit16 p1, p1, 0x100

    .line 1074
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1075
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1077
    :cond_7
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1078
    or-int/lit8 p1, p1, 0x20

    .line 1080
    :cond_8
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    if-eqz v0, :cond_9

    .line 1081
    or-int/lit8 p1, p1, 0x2

    .line 1083
    :cond_9
    return p1

    .line 1056
    :cond_a
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1057
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1014
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1019
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1020
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidth:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1021
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeight:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1022
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1027
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1028
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1029
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1030
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1031
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    if-eqz v1, :cond_0

    .line 1032
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1034
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1036
    return-object v0

    .line 1025
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I

    .prologue
    .line 1117
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1118
    .local v3, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v3

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1122
    const/4 v6, 0x0

    .line 1124
    .local v6, "onTop":Z
    const/16 v14, 0x33

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1127
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1128
    .local v4, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v3

    add-int v11, v14, p4

    .line 1132
    .local v11, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1133
    .local v10, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v14, v11

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v14, v15, :cond_0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v15

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    if-lez v14, :cond_2

    .line 1138
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v14, :cond_1

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 1140
    .local v12, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    .line 1141
    .local v13, "scrollY":I
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v12

    add-int v14, v14, p3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v15, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int v15, v15, p4

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1143
    .local v8, "r":Landroid/graphics/Rect;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1148
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v12    # "scrollX":I
    .end local v13    # "scrollY":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1155
    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v14, v14, p4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int v15, v15, p4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_6

    const/4 v6, 0x1

    .line 1157
    :goto_0
    if-eqz v6, :cond_7

    .line 1158
    const/16 v14, 0x53

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1159
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1161
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/tencent/qrom/widget/PopupWindow;->qromPopupOnTop(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 1171
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v14, :cond_5

    .line 1172
    iget v14, v4, Landroid/graphics/Rect;->right:I

    iget v15, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v14, v15

    .line 1174
    .local v5, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v9, v14, v15

    .line 1175
    .local v9, "right":I
    if-le v9, v5, :cond_3

    .line 1176
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v15, v9, v5

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1178
    :cond_3
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v15, v4, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_4

    .line 1179
    iget v14, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1180
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1183
    :cond_4
    if-eqz v6, :cond_8

    .line 1184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    sub-int v7, v14, v15

    .line 1185
    .local v7, "popupTop":I
    if-gez v7, :cond_5

    .line 1195
    .end local v5    # "displayFrameWidth":I
    .end local v7    # "popupTop":I
    .end local v9    # "right":I
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v15, 0x10000000

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1197
    return v6

    .line 1155
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 1164
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1166
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/qrom/widget/PopupWindow;->qromPopupOnBottom(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_1

    .line 1191
    .restart local v5    # "displayFrameWidth":I
    .restart local v9    # "right":I
    :cond_8
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v15, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1001
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 957
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 958
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 962
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 963
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 964
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 965
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 967
    const/4 v0, -0x2

    .line 972
    :cond_2
    new-instance v3, Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;-><init>(Lcom/tencent/qrom/widget/PopupWindow;Landroid/content/Context;)V

    .line 973
    .local v3, "popupViewContainer":Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 976
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 977
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    iput-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 983
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Lcom/tencent/qrom/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupWidth:I

    .line 984
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    .line 985
    return-void

    .line 981
    :cond_3
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private qromPopupOnBottom(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1668
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v0, v0, v2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 1669
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1671
    :cond_0
    return-void
.end method

.method private qromPopupOnTop(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 1662
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1663
    .local v0, "actionbarHeight":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v1, v1, v3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_0

    .line 1664
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v1, v1, v3

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1666
    :cond_0
    return-void
.end method

.method private qromSetHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v5, 0x1

    .line 1642
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 1643
    .local v1, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 1644
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1645
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1646
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1647
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v6, v6, v5

    sub-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v6, v6, v5

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    move v3, v5

    .line 1649
    .local v3, "onTop":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 1650
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7a0d0002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1651
    .local v0, "actionbarHeight":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v4, v4, v5

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    if-ge v4, v6, :cond_0

    .line 1652
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v4, v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1660
    .end local v0    # "actionbarHeight":I
    .end local v2    # "displayFrame":Landroid/graphics/Rect;
    .end local v3    # "onTop":Z
    :cond_0
    :goto_2
    return-void

    .line 1642
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1647
    .restart local v1    # "anchor":Landroid/view/View;
    .restart local v2    # "displayFrame":Landroid/graphics/Rect;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1655
    .restart local v3    # "onTop":Z
    :cond_3
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v4, v4, v5

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-le v4, v6, :cond_0

    .line 1656
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mScreenLocation:[I

    aget v5, v6, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 1547
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1549
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1550
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1551
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1555
    :cond_0
    iput p2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I

    .line 1556
    iput p3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I

    .line 1557
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1535
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1536
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1537
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1539
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1540
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1541
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1543
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1544
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1487
    .local v8, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_7

    :cond_2
    const/4 v7, 0x1

    .line 1488
    .local v7, "needsUpdate":Z
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    if-eqz v7, :cond_8

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsDropdown:Z

    if-nez v1, :cond_8

    .line 1489
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/tencent/qrom/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1496
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 1498
    .local v9, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1499
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    .line 1500
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1504
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_a

    .line 1505
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1511
    :cond_5
    :goto_4
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1512
    .local v10, "x":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1514
    .local v11, "y":I
    if-eqz p2, :cond_b

    .line 1515
    move/from16 v0, p4

    invoke-direct {p0, p1, v9, p3, v0}, Lcom/tencent/qrom/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1520
    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v1, :cond_6

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qrom/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 1487
    .end local v7    # "needsUpdate":Z
    .end local v9    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 1490
    .restart local v7    # "needsUpdate":Z
    :cond_8
    if-eqz v7, :cond_4

    .line 1492
    iput p3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I

    .line 1493
    move/from16 v0, p4

    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 1502
    .restart local v9    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1507
    :cond_a
    move/from16 v0, p7

    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1517
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_b
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I

    iget v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v9, v1, v2}, Lcom/tencent/qrom/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1520
    :cond_c
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 914
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    .line 916
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 921
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsShowing:Z

    .line 1282
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->bRemoveView:Z

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1292
    :cond_0
    iput-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1294
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1299
    :cond_1
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->bRemoveView:Z

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1289
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1292
    :cond_2
    iput-object v3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1294
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1248
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1250
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mDrawingLocation:[I

    .line 1251
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1253
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1254
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1255
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1256
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1258
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1259
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1262
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1263
    .local v6, "returnedHeight":I
    iget-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1264
    iget-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1265
    iget-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1268
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 624
    iget v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 625
    iget-object v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 625
    goto :goto_0

    .line 627
    :cond_2
    iget v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 614
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mAnimationStyle:I

    .line 374
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 332
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClipToScreen:Z

    .line 603
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 604
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mClippingEnabled:Z

    .line 593
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mFocusable:Z

    .line 451
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeight:I

    .line 765
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 356
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mInputMethodMode:I

    .line 477
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInScreen:Z

    .line 668
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 684
    return-void
.end method

.method public setOnDismissListener(Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOnDismissListener:Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    .line 1308
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mOutsideTouchable:Z

    .line 564
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1674
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    .line 1675
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSoftInputMode:I

    .line 491
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 644
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 645
    return-void

    .line 644
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 420
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 711
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mNotTouchModal:Z

    .line 712
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 530
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mTouchable:Z

    .line 531
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidth:I

    .line 791
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 737
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    .line 738
    iput p2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    .line 739
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 694
    iput p1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowLayoutType:I

    .line 695
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 872
    invoke-virtual {p0, p1, v0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 873
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    const/4 v2, 0x1

    .line 890
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 896
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsShowing:Z

    .line 897
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsDropdown:Z

    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 900
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 902
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/qrom/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 904
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 905
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 907
    :cond_3
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 909
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsShowing:Z

    .line 843
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mIsDropdown:Z

    .line 845
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 846
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 848
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 849
    if-nez p2, :cond_2

    .line 850
    const/16 p2, 0x33

    .line 852
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 853
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 854
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 855
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 856
    :cond_3
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 857
    :cond_4
    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/tencent/qrom/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 818
    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIIZ)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "shadow"    # Z

    .prologue
    .line 821
    iput-boolean p5, p0, Lcom/tencent/qrom/widget/PopupWindow;->bShadow:Z

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/tencent/qrom/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 823
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1325
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1327
    .local v3, "update":Z
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1328
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1329
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1330
    const/4 v3, 0x1

    .line 1333
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1334
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1335
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1336
    const/4 v3, 0x1

    .line 1339
    :cond_3
    if-eqz v3, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1355
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/PopupWindow;->update(IIIIZ)V

    .line 1356
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1370
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/PopupWindow;->update(IIIIZ)V

    .line 1371
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1387
    if-eq p3, v7, :cond_0

    .line 1388
    iput p3, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    .line 1389
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/PopupWindow;->setWidth(I)V

    .line 1392
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1393
    iput p4, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    .line 1394
    invoke-virtual {p0, p4}, Lcom/tencent/qrom/widget/PopupWindow;->setHeight(I)V

    .line 1397
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1445
    :cond_2
    :goto_0
    return-void

    .line 1401
    :cond_3
    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1403
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1405
    .local v5, "update":Z
    iget v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWidthMode:I

    .line 1406
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1407
    iput v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1408
    const/4 v5, 0x1

    .line 1411
    :cond_4
    iget v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mHeightMode:I

    .line 1412
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1413
    iput v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1415
    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/PopupWindow;->qromSetHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 1417
    const/4 v5, 0x1

    .line 1420
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1421
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1422
    const/4 v5, 0x1

    .line 1425
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1426
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1427
    const/4 v5, 0x1

    .line 1430
    :cond_7
    invoke-direct {p0}, Lcom/tencent/qrom/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1431
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1432
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1433
    const/4 v5, 0x1

    .line 1436
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/tencent/qrom/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1437
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1438
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1439
    const/4 v5, 0x1

    .line 1442
    :cond_9
    if-eqz v5, :cond_2

    .line 1443
    iget-object v6, p0, Lcom/tencent/qrom/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1405
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_a
    iget v1, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1411
    .restart local v1    # "finalWidth":I
    :cond_b
    iget v0, p0, Lcom/tencent/qrom/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1457
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1458
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1476
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1477
    return-void
.end method
