.class public Lcom/tencent/qrom/widget/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;,
        Lcom/tencent/qrom/widget/SideBar$AddWindow;,
        Lcom/tencent/qrom/widget/SideBar$RemoveWindow;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:J = 0xc8L

.field public static final DEFALUT_ENTRIES:[Ljava/lang/String;


# instance fields
.field private DEFAULT_LAYOUT_RESOURCE_ID:I

.field private mAddWindow:Lcom/tencent/qrom/widget/SideBar$AddWindow;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mChildRect:Landroid/graphics/Rect;

.field private mCurrentIndexNotExist:Z

.field private mCurrentLetterIndex:I

.field private mDelayTime:I

.field private mDialogText:Landroid/widget/TextView;

.field private mDialogTextLayout:I

.field private mHandler:Landroid/os/Handler;

.field private mHasDialog:Z

.field private mInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsCustomChanger:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mNormalColor:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mReady:Z

.field private mRealCurrentIndex:I

.field private mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

.field private mSelectedColor:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mShowing:Z

.field private mSideBarEntries:[Ljava/lang/CharSequence;

.field private mTextSize:I

.field private mUpdateEnable:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/widget/SideBar;->DEFALUT_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/SideBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const v0, 0x7a0101f5

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/SideBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v7, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    .line 47
    iput v10, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    .line 48
    iput-object v8, p0, Lcom/tencent/qrom/widget/SideBar;->mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v8, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mChildRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Lcom/tencent/qrom/widget/SideBar$AddWindow;

    invoke-direct {v0, p0, v8}, Lcom/tencent/qrom/widget/SideBar$AddWindow;-><init>(Lcom/tencent/qrom/widget/SideBar;Lcom/tencent/qrom/widget/SideBar$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mAddWindow:Lcom/tencent/qrom/widget/SideBar$AddWindow;

    .line 55
    new-instance v0, Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    invoke-direct {v0, p0, v8}, Lcom/tencent/qrom/widget/SideBar$RemoveWindow;-><init>(Lcom/tencent/qrom/widget/SideBar;Lcom/tencent/qrom/widget/SideBar$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v9, p0, Lcom/tencent/qrom/widget/SideBar;->mHasDialog:Z

    .line 61
    const v0, 0x7a03006c

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 62
    const/16 v0, 0x320

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDelayTime:I

    .line 63
    iput-boolean v9, p0, Lcom/tencent/qrom/widget/SideBar;->mUpdateEnable:Z

    .line 65
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/SideBar;->mIsCustomChanger:Z

    .line 66
    iput v10, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    .line 67
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentIndexNotExist:Z

    .line 83
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 88
    sget-object v0, Lcom/tencent/qrom/R$styleable;->SideBar:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 89
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/qrom/widget/SideBar;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogTextLayout:I

    .line 92
    const/4 v0, 0x5

    const v1, -0x727273

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalColor:I

    .line 93
    const/4 v0, 0x6

    const/high16 v1, -0x1000000

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedColor:I

    .line 94
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/tencent/qrom/widget/SideBar;->DEFALUT_ENTRIES:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    .line 98
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    .line 99
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogTextLayout:I

    invoke-static {p1, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/qrom/widget/SideBar;->DEFALUT_ENTRIES:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->initAnimator()V

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/SideBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SideBar;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->hideLetterWithAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SideBar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/SideBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SideBar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/SideBar;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SideBar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tencent/qrom/widget/SideBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/SideBar;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SideBar;->mReady:Z

    return p1
.end method

.method private handleTouchIndex(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 195
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    array-length v3, v5

    .line 196
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getHeight()I

    move-result v5

    div-int v1, v5, v3

    .line 197
    .local v1, "itemHeight":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getHeight()I

    move-result v5

    mul-int v6, v1, v3

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v4, v5

    .line 198
    .local v4, "space":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 199
    .local v0, "index":I
    add-int/lit8 v5, v3, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "letterString":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mIsCustomChanger:Z

    if-eqz v5, :cond_6

    .line 202
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    if-eqz v5, :cond_0

    .line 203
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    invoke-interface {v5, v0}, Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(I)V

    .line 204
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    invoke-interface {v5, v2}, Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentIndexNotExist:Z

    if-eqz v5, :cond_5

    .line 207
    iput-boolean v7, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentIndexNotExist:Z

    .line 211
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    iget v7, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mReady:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHasDialog:Z

    if-eqz v5, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->showLetterWithAnimation()V

    .line 214
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    iget v5, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    iget v6, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    if-eq v5, v6, :cond_2

    .line 218
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 219
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    iget v7, p0, Lcom/tencent/qrom/widget/SideBar;->mDelayTime:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :cond_3
    iget v5, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    iput v5, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    .line 247
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->invalidate()V

    .line 248
    return-void

    .line 209
    :cond_5
    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    goto :goto_0

    .line 227
    :cond_6
    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mReady:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHasDialog:Z

    if-eqz v5, :cond_9

    .line 228
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->showLetterWithAnimation()V

    .line 229
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 230
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_7
    iget v5, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    if-eq v5, v0, :cond_8

    .line 233
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 234
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    :cond_8
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tencent/qrom/widget/SideBar;->mRemoveWindow:Lcom/tencent/qrom/widget/SideBar$RemoveWindow;

    iget v7, p0, Lcom/tencent/qrom/widget/SideBar;->mDelayTime:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_9
    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    .line 241
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    if-eqz v5, :cond_4

    .line 242
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    invoke-interface {v5, v0}, Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(I)V

    .line 243
    iget-object v5, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    invoke-interface {v5, v2}, Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private hideLetterWithAnimation()V
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 352
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 354
    :cond_0
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    return-void
.end method

.method private initAnimator()V
    .locals 17

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/qrom/widget/SideBar;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v1, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 381
    .local v10, "scaleXInAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/qrom/widget/SideBar;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v1, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 382
    .local v12, "scaleYInAnimator":Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/tencent/qrom/animation/ease/QuadEaseIn;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v8, v1}, Lcom/tencent/qrom/animation/ease/QuadEaseIn;-><init>(F)V

    .line 383
    .local v8, "quadEaseIn":Lcom/tencent/qrom/animation/ease/QuadEaseIn;
    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 384
    invoke-virtual {v12, v8}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 385
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v2, v14

    const/4 v14, 0x1

    aput-object v12, v2, v14

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0xc8

    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/qrom/widget/SideBar;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f4ccccd    # 0.8f

    aput v16, v14, v15

    invoke-static {v1, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 390
    .local v11, "scaleXOutAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/qrom/widget/SideBar;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f4ccccd    # 0.8f

    aput v16, v14, v15

    invoke-static {v1, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 391
    .local v13, "scaleYOutAnimator":Landroid/animation/ObjectAnimator;
    new-instance v9, Lcom/tencent/qrom/animation/ease/QuadEaseOut;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v9, v1}, Lcom/tencent/qrom/animation/ease/QuadEaseOut;-><init>(F)V

    .line 392
    .local v9, "quadEaseOut":Lcom/tencent/qrom/animation/ease/QuadEaseOut;
    invoke-virtual {v11, v9}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 393
    invoke-virtual {v13, v9}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 394
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v11, v2, v14

    const/4 v14, 0x1

    aput-object v13, v2, v14

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0xc8

    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/tencent/qrom/widget/SideBar$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/qrom/widget/SideBar$1;-><init>(Lcom/tencent/qrom/widget/SideBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    sget-object v2, Lcom/tencent/qrom/widget/SideBar;->ENABLED_STATE_SET:[I

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/SideBar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7a0b0045

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v1, v2, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 426
    .local v7, "color":I
    shr-int/lit8 v1, v7, 0x18

    and-int/lit16 v3, v1, 0xff

    .line 427
    .local v3, "a":I
    shr-int/lit8 v1, v7, 0x10

    and-int/lit16 v4, v1, 0xff

    .line 428
    .local v4, "r":I
    shr-int/lit8 v1, v7, 0x8

    and-int/lit16 v5, v1, 0xff

    .line 429
    .local v5, "g":I
    shr-int/lit8 v1, v7, 0x0

    and-int/lit16 v6, v1, 0xff

    .line 431
    .local v6, "b":I
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/tencent/qrom/widget/SideBar$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/widget/SideBar$2;-><init>(Lcom/tencent/qrom/widget/SideBar;IIII)V

    invoke-virtual {v14, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/widget/SideBar;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_0

    .line 431
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showLetterWithAnimation()V
    .locals 2

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 334
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 337
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 338
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mAddWindow:Lcom/tencent/qrom/widget/SideBar$AddWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mAddWindow:Lcom/tencent/qrom/widget/SideBar$AddWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 171
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->hideSoftKeyboard()V

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 176
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/SideBar;->setPressed(Z)V

    .line 177
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/SideBar;->handleTouchIndex(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 181
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/SideBar;->setPressed(Z)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/SideBar;->hideDialog(Z)V

    .line 183
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;->onTouchUp()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDialogDelayTime()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/tencent/qrom/widget/SideBar;->mDelayTime:I

    return v0
.end method

.method public getHasDialog()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mHasDialog:Z

    return v0
.end method

.method public getSideBarEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideDialog(Z)V
    .locals 3
    .param p1, "hasAnimation"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->hideLetterWithAnimation()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/SideBar;->mShowing:Z

    .line 362
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qrom/widget/SideBar;->mDialogText:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mReady:Z

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 130
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->hideLetterWithAnimation()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mReady:Z

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getHeight()I

    move-result v2

    .line 138
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->getWidth()I

    move-result v8

    .line 139
    .local v8, "width":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    array-length v5, v9

    .line 140
    .local v5, "size":I
    div-int v4, v2, v5

    .line 141
    .local v4, "itemHeight":I
    mul-int v9, v4, v5

    sub-int v9, v2, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v6, v9

    .line 142
    .local v6, "space":F
    mul-int/lit8 v9, v4, 0x5

    div-int/lit8 v7, v9, 0x6

    .line 143
    .local v7, "textSize":I
    iget v9, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 144
    iput v7, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    .line 146
    :cond_0
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 148
    .local v1, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/tencent/qrom/widget/SideBar;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mChildRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 151
    mul-int v9, v3, v4

    int-to-float v9, v9

    add-float/2addr v9, v6

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v10, v4, v10

    iget v11, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 152
    .local v0, "baseLine":F
    iget v9, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    if-ne v3, v9, :cond_2

    iget-boolean v9, p0, Lcom/tencent/qrom/widget/SideBar;->mUpdateEnable:Z

    if-eqz v9, :cond_2

    .line 153
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 154
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mChildRect:Landroid/graphics/Rect;

    sub-int v10, v8, v4

    div-int/lit8 v10, v10, 0x2

    mul-int v11, v4, v3

    int-to-float v11, v11

    add-float/2addr v11, v6

    float-to-int v11, v11

    add-int v12, v8, v4

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v13, v3, 0x1

    mul-int/2addr v13, v4

    int-to-float v13, v13

    add-float/2addr v13, v6

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/tencent/qrom/widget/SideBar;->mChildRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v9, p0, Lcom/tencent/qrom/widget/SideBar;->mChildCheckedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/tencent/qrom/widget/SideBar;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v0, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/tencent/qrom/widget/SideBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v0, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 166
    .end local v0    # "baseLine":F
    :cond_3
    return-void
.end method

.method public setCustomChanger(Z)V
    .locals 0
    .param p1, "isCustom"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SideBar;->mIsCustomChanger:Z

    .line 454
    return-void
.end method

.method public setDialogDelayTime(I)V
    .locals 0
    .param p1, "delayTime"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/tencent/qrom/widget/SideBar;->mDelayTime:I

    .line 331
    return-void
.end method

.method public setHasDialog(Z)V
    .locals 0
    .param p1, "hasDialog"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SideBar;->mHasDialog:Z

    .line 295
    if-nez p1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/tencent/qrom/widget/SideBar;->hideLetterWithAnimation()V

    .line 298
    :cond_0
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar;->onTouchingLetterChangedListener:Lcom/tencent/qrom/widget/SideBar$OnTouchingLetterChangedListener;

    .line 260
    return-void
.end method

.method public setRealCurrentIndex(I)V
    .locals 1
    .param p1, "realCurrentIndex"    # I

    .prologue
    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentIndexNotExist:Z

    .line 458
    iput p1, p0, Lcom/tencent/qrom/widget/SideBar;->mRealCurrentIndex:I

    .line 459
    return-void
.end method

.method public setSideBarEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "sideBarEntries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    .line 286
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->invalidate()V

    .line 287
    return-void
.end method

.method public setUpdateEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/SideBar;->mUpdateEnable:Z

    .line 282
    return-void
.end method

.method public updateCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    .line 264
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->invalidate()V

    .line 265
    return-void
.end method

.method public updateCurrentIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "indexString"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/tencent/qrom/widget/SideBar;->mSideBarEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iput v0, p0, Lcom/tencent/qrom/widget/SideBar;->mCurrentLetterIndex:I

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/SideBar;->invalidate()V

    goto :goto_0

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
