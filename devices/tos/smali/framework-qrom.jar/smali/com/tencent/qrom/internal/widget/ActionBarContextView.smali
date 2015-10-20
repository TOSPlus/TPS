.class public Lcom/tencent/qrom/internal/widget/ActionBarContextView;
.super Lcom/tencent/qrom/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private firstMeasureTitle:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/widget/Button;

.field private mCloseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCloseStyleRes:I

.field private mContextSplitHeight:I

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mMulti:Lcom/tencent/qrom/widget/ToggleButton;

.field private mMultiStyleRes:I

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const v0, 0x7a0100c5

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 72
    iput v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    .line 89
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    iput-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 105
    sget-object v2, Lcom/tencent/qrom/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 110
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 113
    sget-object v2, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v3, 0x7a0100be

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 115
    .local v1, "aTyped":Landroid/content/res/TypedArray;
    const/16 v2, 0x15

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMultiStyleRes:I

    .line 116
    const/16 v2, 0x14

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseStyleRes:I

    .line 117
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7a020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 125
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_1

    .line 132
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setClipChildren(Z)V

    .line 133
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setClipToPadding(Z)V

    .line 136
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 499
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 501
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 503
    :cond_0
    return-void
.end method

.method private initSubTitle()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 352
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 353
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const v4, 0x7a09005c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 354
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 356
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 357
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 358
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 369
    .local v0, "hasSubtitle":Z
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    return-void

    .end local v0    # "hasSubtitle":Z
    :cond_2
    move v0, v1

    .line 368
    goto :goto_0

    .restart local v0    # "hasSubtitle":Z
    :cond_3
    move v1, v2

    .line 369
    goto :goto_1
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x2

    .line 322
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 325
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 326
    .local v3, "res":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x7a010129

    invoke-virtual {v4, v6, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 327
    const v4, 0x7a030001

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 328
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 329
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v6, 0x7a09005b

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 330
    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 335
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "res":Landroid/util/TypedValue;
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 339
    .local v0, "hasTitle":Z
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 342
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 348
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .end local v0    # "hasTitle":Z
    :cond_2
    move v0, v5

    .line 337
    goto :goto_0

    .line 339
    .restart local v0    # "hasTitle":Z
    :cond_3
    const/16 v5, 0x8

    goto :goto_1
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeSplitMenuInAnimation()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 732
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 735
    :cond_0
    return-object v0
.end method

.method private makeSplitMenuOutAnimation()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 743
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 744
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 475
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 484
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 489
    iput v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 490
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->makeSplitMenuOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 491
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public exitMiniMode()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 549
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7a0d0057

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 198
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 204
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    return-object v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/qrom/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView$1;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getEditView()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initEdit()V

    .line 219
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMultiChoiceView()Lcom/tencent/qrom/widget/ToggleButton;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7a0d0057

    const/16 v7, 0x11

    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 151
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-nez v2, :cond_5

    .line 152
    new-instance v2, Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    .line 153
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const v3, 0x7a0900f9

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setId(I)V

    .line 154
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMultiStyleRes:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/widget/ToggleButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 157
    .local v0, "bRipple":Z
    if-eqz v0, :cond_3

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_2

    .line 159
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 178
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v7}, Lcom/tencent/qrom/widget/ToggleButton;->setGravity(I)V

    .line 179
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setFocusable(Z)V

    .line 180
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setSingleLine(Z)V

    .line 181
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setPadding(IIII)V

    .line 185
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 190
    .end local v0    # "bRipple":Z
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setVisibility(I)V

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    return-object v2

    .line 162
    .restart local v0    # "bRipple":Z
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_4

    .line 166
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 186
    .end local v0    # "bRipple":Z
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ToggleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getOverflowButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    .line 883
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initSubTitle()V

    .line 235
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;I)V

    .line 376
    return-void
.end method

.method public initForMode(Landroid/view/ActionMode;I)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "imageType"    # I

    .prologue
    .line 378
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 379
    .local v4, "res":Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7a010129

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 381
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-nez v5, :cond_5

    .line 384
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    .line 385
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const v6, 0x7a090059

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 386
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseStyleRes:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 387
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 388
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0d0053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 391
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 393
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 394
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 395
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 396
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0d005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7a0d005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 399
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0a0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 400
    .local v0, "bRipple":Z
    if-eqz v0, :cond_3

    .line 401
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v5, v6, :cond_2

    .line 402
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 415
    :goto_0
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 420
    .end local v0    # "bRipple":Z
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_6

    .line 421
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 432
    .local v2, "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 433
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 437
    :cond_1
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_7

    .line 438
    new-instance v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 442
    :goto_3
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 444
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 446
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v5, :cond_8

    if-eqz p2, :cond_8

    .line 447
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 448
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 449
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v5, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :goto_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 469
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 471
    return-void

    .line 405
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .restart local v0    # "bRipple":Z
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 408
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v5, v6, :cond_4

    .line 409
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 412
    :cond_4
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 416
    .end local v0    # "bRipple":Z
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 417
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 423
    :cond_6
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    new-instance v6, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;

    invoke-direct {v6, p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 440
    .restart local v2    # "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    :cond_7
    new-instance v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    goto :goto_3

    .line 453
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 456
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 458
    const/4 v5, -0x1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 460
    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 462
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 463
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v5, v6, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 537
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 507
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 508
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 511
    :cond_0
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 512
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 514
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 835
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 827
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    .line 830
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 831
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 839
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 823
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 145
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 848
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 850
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 851
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 852
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v6, 0x8

    .line 762
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    .line 763
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    .line 764
    .local v2, "y":I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 779
    .local v0, "contentHeight":I
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 786
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 790
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 791
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 799
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 800
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 805
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 806
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 810
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 811
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v3

    add-int/2addr v1, v3

    .line 814
    :cond_4
    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 816
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_5

    .line 819
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7a0d0004

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setPadding(IIII)V

    .line 558
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 559
    .local v25, "widthMode":I
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 560
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " can only be used "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 564
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 565
    .local v15, "heightMode":I
    if-nez v15, :cond_1

    .line 566
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " can only be used "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 570
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 572
    .local v8, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v26, v0

    if-lez v26, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    .line 575
    .local v18, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v27

    add-int v24, v26, v27

    .line 576
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v26

    sub-int v26, v8, v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v27

    sub-int v5, v26, v27

    .line 577
    .local v5, "availableWidth":I
    sub-int v14, v18, v24

    .line 578
    .local v14, "height":I
    const/high16 v26, -0x80000000

    move/from16 v0, v26

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 580
    .local v6, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 586
    .local v17, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    sub-int v5, v5, v26

    .line 590
    .end local v17    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    const/16 v27, -0x2

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/tencent/qrom/widget/ToggleButton;->measure(II)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    const/16 v29, 0x438

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    const/16 v26, 0x150

    :goto_1
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move/from16 v0, v28

    move/from16 v1, v26

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_f

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, 0x41800000    # 16.0f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    .line 604
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    .line 606
    .local v7, "closeWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v20

    .line 607
    .local v20, "multiWidth":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v26, v0

    div-int/lit8 v27, v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7a0d0057

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v20

    move/from16 v0, v28

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v28

    sub-int v27, v27, v28

    mul-int/lit8 v27, v27, 0x2

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v26, v0

    const/16 v27, -0x2

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, -0x2

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/EditText;->measure(II)V

    .line 614
    .end local v7    # "closeWidth":I
    .end local v20    # "multiWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 619
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_a

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    .line 622
    .restart local v7    # "closeWidth":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/widget/ToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v20

    .line 623
    .restart local v20    # "multiWidth":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->requestLayout()V

    .line 626
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->requestLayout()V

    .line 628
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, -0x2

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->measure(II)V

    .line 631
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 633
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 634
    .local v22, "tagWidth":I
    div-int/lit8 v26, v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7a0d0057

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v27

    sub-int v26, v26, v27

    mul-int/lit8 v26, v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 635
    div-int/lit8 v26, v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7a0d0057

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v27

    sub-int v26, v26, v27

    mul-int/lit8 v22, v26, 0x2

    .line 637
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->measure(II)V

    .line 642
    .end local v7    # "closeWidth":I
    .end local v20    # "multiWidth":I
    .end local v22    # "tagWidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 644
    .local v17, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    const/high16 v13, 0x40000000    # 2.0f

    .line 646
    .local v13, "customWidthMode":I
    :goto_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    if-ltz v26, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 648
    .local v12, "customWidth":I
    :goto_8
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    const/high16 v11, 0x40000000    # 2.0f

    .line 650
    .local v11, "customHeightMode":I
    :goto_9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    if-ltz v26, :cond_17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 652
    .local v10, "customHeight":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 657
    .end local v10    # "customHeight":I
    .end local v11    # "customHeightMode":I
    .end local v12    # "customWidth":I
    .end local v13    # "customWidthMode":I
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v26, v0

    if-gtz v26, :cond_19

    .line 658
    const/16 v19, 0x0

    .line 659
    .local v19, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v9

    .line 660
    .local v9, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v9, :cond_18

    .line 661
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 662
    .local v23, "v":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v26, v24

    .line 663
    .local v21, "paddedViewHeight":I
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 664
    move/from16 v19, v21

    .line 660
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 572
    .end local v5    # "availableWidth":I
    .end local v6    # "childSpecHeight":I
    .end local v9    # "count":I
    .end local v14    # "height":I
    .end local v16    # "i":I
    .end local v18    # "maxHeight":I
    .end local v19    # "measuredHeight":I
    .end local v21    # "paddedViewHeight":I
    .end local v23    # "v":Landroid/view/View;
    .end local v24    # "verticalPadding":I
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    goto/16 :goto_0

    .line 594
    .restart local v5    # "availableWidth":I
    .restart local v6    # "childSpecHeight":I
    .restart local v14    # "height":I
    .restart local v18    # "maxHeight":I
    .restart local v24    # "verticalPadding":I
    :cond_e
    const/16 v26, 0xe1

    goto/16 :goto_1

    .line 599
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, 0x41900000    # 18.0f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 605
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 606
    .restart local v7    # "closeWidth":I
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 621
    .end local v7    # "closeWidth":I
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 622
    .restart local v7    # "closeWidth":I
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 644
    .end local v7    # "closeWidth":I
    .restart local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    const/high16 v13, -0x80000000

    goto/16 :goto_7

    .restart local v13    # "customWidthMode":I
    :cond_15
    move v12, v5

    .line 646
    goto/16 :goto_8

    .line 648
    .restart local v12    # "customWidth":I
    :cond_16
    const/high16 v11, -0x80000000

    goto :goto_9

    .restart local v11    # "customHeightMode":I
    :cond_17
    move v10, v14

    .line 650
    goto :goto_a

    .line 667
    .end local v11    # "customHeightMode":I
    .end local v12    # "customWidth":I
    .end local v13    # "customWidthMode":I
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v9    # "count":I
    .restart local v16    # "i":I
    .restart local v19    # "measuredHeight":I
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 671
    .end local v9    # "count":I
    .end local v16    # "i":I
    .end local v19    # "measuredHeight":I
    :goto_c
    return-void

    .line 669
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c
.end method

.method public playSplitMenuInAnimation()V
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_1

    .line 751
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 752
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->makeSplitMenuInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 753
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 756
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 758
    :cond_1
    return-void
.end method

.method public qromSetActionModeBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 861
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 283
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 289
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->requestLayout()V

    .line 298
    return-void
.end method

.method public setIsTransPopup(Z)V
    .locals 1
    .param p1, "isTransPopup"    # Z

    .prologue
    .line 889
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setIsTransPopup(Z)V

    .line 892
    :cond_0
    return-void
.end method

.method public setOverflowButtonState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 865
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowButtonState(Z)V

    .line 868
    return-void
.end method

.method public setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V

    .line 875
    :cond_0
    return-void
.end method

.method public setOverflowDelay(Z)V
    .locals 1
    .param p1, "isDelay"    # Z

    .prologue
    .line 911
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowDelay(Z)V

    .line 914
    :cond_0
    return-void
.end method

.method public setPopupMenuMarks([Z)V
    .locals 1
    .param p1, "isMarks"    # [Z

    .prologue
    .line 897
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupMenuMarks([Z)V

    .line 900
    :cond_0
    return-void
.end method

.method public setPopupTextColors([I)V
    .locals 1
    .param p1, "textColors"    # [I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupTextColors([I)V

    .line 907
    :cond_0
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 7
    .param p1, "split"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 249
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 252
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 255
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 256
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 258
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 279
    :cond_2
    return-void

    .line 262
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 265
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 267
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    iget v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 271
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 273
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 309
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 310
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initSubTitle()V

    .line 311
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 302
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 304
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->requestLayout()V

    .line 305
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMiniMode()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method
