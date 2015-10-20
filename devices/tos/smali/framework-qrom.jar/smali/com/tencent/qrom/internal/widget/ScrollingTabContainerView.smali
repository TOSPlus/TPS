.class public Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;,
        Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field private mDrawIndicator:Z

.field mDrawableDepot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInit:Z

.field mMaxTabWidth:I

.field private mNormalColor:I

.field private mNormalColors:Landroid/content/res/ColorStateList;

.field private mSelectedColor:I

.field private mSelectedTabIndex:I

.field private mTabClickListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTabMode:I

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    .line 77
    new-instance v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 87
    iput-boolean v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mInit:Z

    .line 88
    iput v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    .line 89
    iput v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 92
    iput-object v5, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-boolean v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawIndicator:Z

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    .line 104
    iput p2, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    .line 105
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v3, 0x7a0100be

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 111
    iget v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setTabContentHeight(I)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mInit:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawIndicator:Z

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createTabView(Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private cancelScrollState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 573
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 574
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 575
    .local v0, "child":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_0

    .line 576
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromSetTextColors(Landroid/content/res/ColorStateList;)V

    .line 577
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 578
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 579
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->refreshDrawableState()V

    .line 586
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    if-ne v1, v3, :cond_2

    .line 587
    invoke-virtual {v0, v5}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 588
    invoke-virtual {v0, v6}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 573
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 591
    :cond_2
    invoke-virtual {v0, v6}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 592
    invoke-virtual {v0, v5}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    goto :goto_2

    .line 600
    .end local v0    # "child":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 601
    iput-boolean v5, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawIndicator:Z

    .line 602
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 603
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabLayout;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 265
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 266
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    return-object v0
.end method

.method private createTabView(Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 356
    new-instance v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lcom/tencent/qrom/app/ActionBar$Tab;Z)V

    .line 357
    .local v0, "tabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_1

    .line 358
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 359
    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :goto_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    :goto_1
    return-object v0

    .line 362
    :cond_0
    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 367
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 369
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_2

    .line 370
    new-instance v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return v4

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-direct {p0, p1, v5}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createTabView(Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 402
    .local v0, "tabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_0
    if-eqz p3, :cond_1

    .line 408
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 410
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 413
    :cond_2
    return-void
.end method

.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 386
    invoke-direct {p0, p1, v5}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createTabView(Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 387
    .local v0, "tabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 392
    :cond_0
    if-eqz p2, :cond_1

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 395
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 398
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    :cond_0
    new-instance v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 334
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 299
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 302
    :cond_0
    if-nez p1, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 306
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 307
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    sget-object v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 320
    :goto_0
    return-void

    .line 313
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 314
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    sget-object v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public enableTabClick(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 378
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 379
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 380
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 340
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 282
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 288
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 293
    iget v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setTabContentHeight(I)V

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 349
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 448
    .local v0, "tabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/app/ActionBar$Tab;->select()V

    .line 449
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 122
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_3

    move v2, v6

    .line 123
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 125
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 126
    .local v1, "childCount":I
    if-le v1, v6, :cond_5

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_5

    .line 128
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_4

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 137
    :goto_1
    iget v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 139
    if-nez v2, :cond_6

    iget-boolean v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 141
    .local v0, "canCollapse":Z
    :goto_2
    if-eqz v0, :cond_8

    .line 143
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 144
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-le v8, v9, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 153
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 154
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 155
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 157
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 159
    iget v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 162
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabMode:I

    if-eq v8, v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {v6, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 164
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6, v7, v8, v7, v7}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setPadding(IIII)V

    .line 166
    :cond_2
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_3
    move v2, v7

    .line 122
    goto :goto_0

    .line 131
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 134
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    :cond_6
    move v0, v7

    .line 139
    goto :goto_2

    .line 147
    .restart local v0    # "canCollapse":Z
    :cond_7
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_3

    .line 150
    :cond_8
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_3
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public qromSetPageScroll(IF)V
    .locals 34
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v26

    .line 470
    .local v26, "tabCount":I
    const/16 v27, 0x0

    cmpg-float v27, p2, v27

    if-ltz v27, :cond_0

    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, p2, v27

    if-gtz v27, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v27, v0

    if-ltz v27, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v27, v0

    add-int/lit8 v28, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_0

    .line 474
    if-ltz p1, :cond_0

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-gt v0, v1, :cond_0

    .line 478
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_2

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_2

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 479
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->cancelScrollState()V

    goto :goto_0

    .line 483
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-object/from16 v25, v27

    check-cast v25, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 485
    .local v25, "selectedTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v14, 0x0

    .line 486
    .local v14, "normalIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v14, v0, :cond_4

    .line 487
    const/4 v14, 0x1

    .line 490
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-object/from16 v15, v27

    check-cast v15, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 493
    .local v15, "normalTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mInit:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 495
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 496
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 498
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/StateListDrawable;

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x10100a1

    aput v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v4

    .line 499
    .local v4, "index":I
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 504
    .end local v4    # "index":I
    :cond_5
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromGetTextColor()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    .line 505
    invoke-virtual {v15}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromGetTextColor()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    .line 506
    invoke-virtual {v15}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromGetTextColors()Landroid/content/res/ColorStateList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColors:Landroid/content/res/ColorStateList;

    .line 508
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mInit:Z

    .line 511
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-object/from16 v8, v27

    check-cast v8, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 512
    .local v8, "leftTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    add-int/lit8 v28, p1, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-object/from16 v20, v27

    check-cast v20, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 514
    .local v20, "rightTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 515
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 516
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    move/from16 v0, v26

    if-ge v3, v0, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    .line 518
    .local v2, "child":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawableDepot:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 502
    .end local v2    # "child":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    .end local v3    # "i":I
    .end local v8    # "leftTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    .end local v20    # "rightTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicator:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 522
    .restart local v8    # "leftTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    .restart local v20    # "rightTabView":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x18

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, p2

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x18

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, p2

    add-float v5, v27, v28

    .line 523
    .local v5, "la":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, p2

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, p2

    add-float v13, v27, v28

    .line 524
    .local v13, "lr":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, p2

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, p2

    add-float v12, v27, v28

    .line 525
    .local v12, "lg":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, p2

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, p2

    add-float v6, v27, v28

    .line 527
    .local v6, "lb":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x18

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x18

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, p2

    mul-float v28, v28, v29

    add-float v16, v27, v28

    .line 528
    .local v16, "ra":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, p2

    mul-float v28, v28, v29

    add-float v24, v27, v28

    .line 529
    .local v24, "rr":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, p2

    mul-float v28, v28, v29

    add-float v18, v27, v28

    .line 530
    .local v18, "rg":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedColor:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mNormalColor:I

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, p2

    mul-float v28, v28, v29

    add-float v17, v27, v28

    .line 532
    .local v17, "rb":F
    float-to-int v0, v5

    move/from16 v27, v0

    float-to-int v0, v13

    move/from16 v28, v0

    float-to-int v0, v12

    move/from16 v29, v0

    float-to-int v0, v6

    move/from16 v30, v0

    invoke-static/range {v27 .. v30}, Landroid/graphics/Color;->argb(IIII)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromSetTextColor(I)V

    .line 533
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v27 .. v30}, Landroid/graphics/Color;->argb(IIII)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->qromSetTextColor(I)V

    .line 535
    invoke-virtual {v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getX()F

    move-result v10

    .line 536
    .local v10, "leftX":F
    invoke-virtual {v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getY()F

    move-result v11

    .line 537
    .local v11, "leftY":F
    invoke-virtual {v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v9

    .line 538
    .local v9, "leftWidth":I
    invoke-virtual {v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v7

    .line 540
    .local v7, "leftHeight":I
    invoke-virtual/range {v20 .. v20}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getX()F

    move-result v22

    .line 541
    .local v22, "rightX":F
    invoke-virtual/range {v20 .. v20}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getY()F

    move-result v23

    .line 542
    .local v23, "rightY":F
    invoke-virtual/range {v20 .. v20}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v21

    .line 543
    .local v21, "rightWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v19

    .line 545
    .local v19, "rightHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    float-to-double v0, v10

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    mul-float v30, v22, p2

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    add-float v28, v11, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    int-to-float v0, v9

    move/from16 v28, v0

    add-float v28, v28, v10

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v22

    mul-float v30, v30, p2

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v29, v7, v19

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->invalidate()V

    .line 551
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0xf

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    .line 552
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 553
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 560
    :goto_3
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mDrawIndicator:Z

    goto/16 :goto_0

    .line 556
    :cond_a
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public qromSetScrollEnd()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->cancelScrollState()V

    .line 566
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 437
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 443
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 427
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 433
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 183
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 229
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 230
    return-void
.end method

.method public setContextView(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 170
    return-void
.end method

.method public setTabContentHeight(I)V
    .locals 4
    .param p1, "tabMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 832
    :goto_0
    return-void

    .line 811
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7a0a0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7a0d0002

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 814
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setPadding(IIII)V

    goto :goto_0

    .line 811
    :cond_0
    const v0, 0x7a0d006c

    goto :goto_1

    .line 817
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 819
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setPadding(IIII)V

    goto :goto_0

    .line 824
    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 826
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setPadding(IIII)V

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 216
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 217
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 218
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 220
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 221
    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 225
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 417
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 423
    :cond_1
    return-void
.end method
