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
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const v0, 0x7a0100c5

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
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

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 73
    iput v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    .line 90
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 106
    sget-object v2, Lcom/tencent/qrom/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 111
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 114
    sget-object v2, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v3, 0x7a0100be

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    .local v1, "aTyped":Landroid/content/res/TypedArray;
    const/16 v2, 0x15

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMultiStyleRes:I

    .line 117
    const/16 v2, 0x14

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseStyleRes:I

    .line 118
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7a020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 126
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_1

    .line 133
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setClipChildren(Z)V

    .line 134
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setClipToPadding(Z)V

    .line 137
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 505
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 507
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 509
    :cond_0
    return-void
.end method

.method private initSubTitle()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 358
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 359
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const v4, 0x7a09005c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 360
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 362
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 363
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 364
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 375
    .local v0, "hasSubtitle":Z
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    return-void

    .end local v0    # "hasSubtitle":Z
    :cond_2
    move v0, v1

    .line 374
    goto :goto_0

    .restart local v0    # "hasSubtitle":Z
    :cond_3
    move v1, v2

    .line 375
    goto :goto_1
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x2

    .line 328
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 331
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 332
    .local v3, "res":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x7a010129

    invoke-virtual {v4, v6, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 333
    const v4, 0x7a030001

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 334
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 335
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v6, 0x7a09005b

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 336
    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 341
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "res":Landroid/util/TypedValue;
    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 345
    .local v0, "hasTitle":Z
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 348
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 354
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .end local v0    # "hasTitle":Z
    :cond_2
    move v0, v5

    .line 343
    goto :goto_0

    .line 345
    .restart local v0    # "hasTitle":Z
    :cond_3
    const/16 v5, 0x8

    goto :goto_1
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeSplitMenuInAnimation()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    .line 736
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

    .line 738
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 739
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 741
    :cond_0
    return-object v0
.end method

.method private makeSplitMenuOutAnimation()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    .line 747
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

    .line 749
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 750
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 752
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 481
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 490
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 495
    iput v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 496
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->makeSplitMenuOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 497
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public exitMiniMode()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 550
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
    .line 555
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

    .line 203
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 204
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 206
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

    .line 210
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    return-object v0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView$2;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getEditView()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initEdit()V

    .line 225
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 232
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

    .line 150
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 152
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-nez v2, :cond_5

    .line 153
    new-instance v2, Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    .line 154
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const v3, 0x7a0900f9

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setId(I)V

    .line 155
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMultiStyleRes:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/widget/ToggleButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    new-instance v3, Lcom/tencent/qrom/internal/widget/ActionBarContextView$1;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView$1;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 163
    .local v0, "bRipple":Z
    if-eqz v0, :cond_3

    .line 164
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_2

    .line 165
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
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

    .line 181
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 182
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 184
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v7}, Lcom/tencent/qrom/widget/ToggleButton;->setGravity(I)V

    .line 185
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setFocusable(Z)V

    .line 186
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setSingleLine(Z)V

    .line 187
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

    .line 191
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 196
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

    .line 197
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setVisibility(I)V

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    return-object v2

    .line 168
    .restart local v0    # "bRipple":Z
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 171
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_4

    .line 172
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    .end local v0    # "bRipple":Z
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ToggleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getOverflowButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initSubTitle()V

    .line 241
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 535
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
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;I)V

    .line 382
    return-void
.end method

.method public initForMode(Landroid/view/ActionMode;I)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "imageType"    # I

    .prologue
    .line 384
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 385
    .local v4, "res":Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7a010129

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 387
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-nez v5, :cond_5

    .line 390
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    .line 391
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const v6, 0x7a090059

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 392
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseStyleRes:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 393
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 394
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

    .line 396
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 397
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 399
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 400
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 401
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 402
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

    .line 405
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0a0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 406
    .local v0, "bRipple":Z
    if-eqz v0, :cond_3

    .line 407
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v5, v6, :cond_2

    .line 408
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    :goto_0
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 426
    .end local v0    # "bRipple":Z
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_6

    .line 427
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 438
    .local v2, "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 439
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 443
    :cond_1
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_7

    .line 444
    new-instance v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 448
    :goto_3
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 450
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 452
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v5, :cond_8

    if-eqz p2, :cond_8

    .line 453
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 454
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 455
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v5, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    :goto_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 475
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 477
    return-void

    .line 411
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

    .line 414
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v5, v6, :cond_4

    .line 415
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 418
    :cond_4
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "bRipple":Z
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 423
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 429
    :cond_6
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    new-instance v6, Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;

    invoke-direct {v6, p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView$3;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 446
    .restart local v2    # "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    :cond_7
    new-instance v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    goto :goto_3

    .line 459
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

    .line 462
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 464
    const/4 v5, -0x1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 466
    iget v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 467
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 468
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 469
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v5, v6, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 543
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

    .line 512
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 513
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 514
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 517
    :cond_0
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 518
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 520
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 841
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 833
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    .line 836
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 837
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 845
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 829
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 144
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 146
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 854
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 856
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 857
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 858
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 863
    :goto_0
    return-void

    .line 861
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

    .line 768
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    .line 769
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    .line 770
    .local v2, "y":I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 785
    .local v0, "contentHeight":I
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 792
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 796
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 797
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

    .line 805
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 806
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

    .line 811
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 812
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

    .line 816
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 817
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v3

    add-int/2addr v1, v3

    .line 820
    :cond_4
    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 822
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_5

    .line 825
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 561
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

    .line 564
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 565
    .local v25, "widthMode":I
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

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

    const-string v28, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 570
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 571
    .local v15, "heightMode":I
    if-nez v15, :cond_1

    .line 572
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

    .line 576
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 578
    .local v8, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v26, v0

    if-lez v26, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    .line 581
    .local v18, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v27

    add-int v24, v26, v27

    .line 582
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v26

    sub-int v26, v8, v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v27

    sub-int v5, v26, v27

    .line 583
    .local v5, "availableWidth":I
    sub-int v14, v18, v24

    .line 584
    .local v14, "height":I
    const/high16 v26, -0x80000000

    move/from16 v0, v26

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 586
    .local v6, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 592
    .local v17, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    sub-int v5, v5, v26

    .line 596
    .end local v17    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 597
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

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 600
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

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, 0x41800000    # 16.0f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    .line 610
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    .line 612
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

    .line 613
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

    .line 614
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

    .line 620
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

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 625
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_a

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mClose:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    .line 628
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

    .line 629
    .restart local v20    # "multiWidth":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->requestLayout()V

    .line 632
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->requestLayout()V

    .line 634
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

    .line 637
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 639
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 640
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

    .line 641
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

    .line 643
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

    .line 648
    .end local v7    # "closeWidth":I
    .end local v20    # "multiWidth":I
    .end local v22    # "tagWidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 650
    .local v17, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    const/high16 v13, 0x40000000    # 2.0f

    .line 652
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

    .line 654
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

    .line 656
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

    .line 658
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

    .line 663
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

    .line 664
    const/16 v19, 0x0

    .line 665
    .local v19, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v9

    .line 666
    .local v9, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v9, :cond_18

    .line 667
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 668
    .local v23, "v":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v26, v24

    .line 669
    .local v21, "paddedViewHeight":I
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 670
    move/from16 v19, v21

    .line 666
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 578
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

    .line 600
    .restart local v5    # "availableWidth":I
    .restart local v6    # "childSpecHeight":I
    .restart local v14    # "height":I
    .restart local v18    # "maxHeight":I
    .restart local v24    # "verticalPadding":I
    :cond_e
    const/16 v26, 0xe1

    goto/16 :goto_1

    .line 605
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, 0x41900000    # 18.0f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 611
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 612
    .restart local v7    # "closeWidth":I
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 627
    .end local v7    # "closeWidth":I
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 628
    .restart local v7    # "closeWidth":I
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 650
    .end local v7    # "closeWidth":I
    .restart local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    const/high16 v13, -0x80000000

    goto/16 :goto_7

    .restart local v13    # "customWidthMode":I
    :cond_15
    move v12, v5

    .line 652
    goto/16 :goto_8

    .line 654
    .restart local v12    # "customWidth":I
    :cond_16
    const/high16 v11, -0x80000000

    goto :goto_9

    .restart local v11    # "customHeightMode":I
    :cond_17
    move v10, v14

    .line 656
    goto :goto_a

    .line 673
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

    .line 677
    .end local v9    # "count":I
    .end local v16    # "i":I
    .end local v19    # "measuredHeight":I
    :goto_c
    return-void

    .line 675
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c
.end method

.method public playSplitMenuInAnimation()V
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_1

    .line 757
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 758
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->makeSplitMenuInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 759
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 762
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 764
    :cond_1
    return-void
.end method

.method public qromSetActionModeBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionModeBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 867
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 289
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 300
    :cond_1
    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->requestLayout()V

    .line 304
    return-void
.end method

.method public setIsTransPopup(Z)V
    .locals 1
    .param p1, "isTransPopup"    # Z

    .prologue
    .line 895
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setIsTransPopup(Z)V

    .line 898
    :cond_0
    return-void
.end method

.method public setOverflowButtonState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 871
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowButtonState(Z)V

    .line 874
    return-void
.end method

.method public setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V

    .line 881
    :cond_0
    return-void
.end method

.method public setOverflowDelay(Z)V
    .locals 1
    .param p1, "isDelay"    # Z

    .prologue
    .line 917
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowDelay(Z)V

    .line 920
    :cond_0
    return-void
.end method

.method public setPopupMenuMarks([Z)V
    .locals 1
    .param p1, "isMarks"    # [Z

    .prologue
    .line 903
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupMenuMarks([Z)V

    .line 906
    :cond_0
    return-void
.end method

.method public setPopupTextColors([I)V
    .locals 1
    .param p1, "textColors"    # [I

    .prologue
    .line 910
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupTextColors([I)V

    .line 913
    :cond_0
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 7
    .param p1, "split"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 255
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 256
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 258
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 260
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 261
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 262
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 264
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 285
    :cond_2
    return-void

    .line 268
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

    .line 271
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 273
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 275
    iget v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mContextSplitHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 277
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 279
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
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
    .line 314
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 315
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 316
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initSubTitle()V

    .line 317
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 308
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initTitle()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->firstMeasureTitle:Z

    .line 310
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->requestLayout()V

    .line 311
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMiniMode()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method
