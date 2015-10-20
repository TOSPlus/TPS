.class public Landroid/widget/QromTabHost;
.super Landroid/widget/FrameLayout;
.source "QromTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QromTabHost$ViewPagerAdapter;,
        Landroid/widget/QromTabHost$FactoryContentStrategy2;,
        Landroid/widget/QromTabHost$FragmentContentStrategy;,
        Landroid/widget/QromTabHost$ViewIdContentStrategy2;,
        Landroid/widget/QromTabHost$IntentContentStrategy;,
        Landroid/widget/QromTabHost$FactoryContentStrategy;,
        Landroid/widget/QromTabHost$ViewIdContentStrategy;,
        Landroid/widget/QromTabHost$ViewIndicatorStrategy;,
        Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/QromTabHost$LabelIndicatorStrategy;,
        Landroid/widget/QromTabHost$ContentStrategy;,
        Landroid/widget/QromTabHost$IndicatorStrategy;,
        Landroid/widget/QromTabHost$TabSpec;,
        Landroid/widget/QromTabHost$TabContentFactory;,
        Landroid/widget/QromTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabHost"


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInit:Z

.field private mInitialTabIndex:I

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mNormalColor:I

.field private mOnTabChangeListener:Landroid/widget/QromTabHost$OnTabChangeListener;

.field private mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSelectedColor:I

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/QromTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/QromTabWidget;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Landroid/widget/QromTabHost$ViewPagerAdapter;

.field private mViewPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    .line 88
    iput-object v3, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    .line 93
    iput-object v3, p0, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 100
    iput-object v3, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    .line 110
    iput-boolean v2, p0, Landroid/widget/QromTabHost;->mInit:Z

    .line 111
    iput v2, p0, Landroid/widget/QromTabHost;->mSelectedColor:I

    .line 112
    iput v2, p0, Landroid/widget/QromTabHost;->mNormalColor:I

    .line 113
    iput-object v3, p0, Landroid/widget/QromTabHost;->mTextColors:Landroid/content/res/ColorStateList;

    .line 118
    new-instance v0, Landroid/widget/QromTabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/QromTabHost$1;-><init>(Landroid/widget/QromTabHost;)V

    iput-object v0, p0, Landroid/widget/QromTabHost;->mViewPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .line 200
    iput v2, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 204
    invoke-direct {p0}, Landroid/widget/QromTabHost;->initTabHost()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    .line 88
    iput-object v4, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    .line 93
    iput-object v4, p0, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 100
    iput-object v4, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    .line 110
    iput-boolean v3, p0, Landroid/widget/QromTabHost;->mInit:Z

    .line 111
    iput v3, p0, Landroid/widget/QromTabHost;->mSelectedColor:I

    .line 112
    iput v3, p0, Landroid/widget/QromTabHost;->mNormalColor:I

    .line 113
    iput-object v4, p0, Landroid/widget/QromTabHost;->mTextColors:Landroid/content/res/ColorStateList;

    .line 118
    new-instance v1, Landroid/widget/QromTabHost$1;

    invoke-direct {v1, p0}, Landroid/widget/QromTabHost$1;-><init>(Landroid/widget/QromTabHost;)V

    iput-object v1, p0, Landroid/widget/QromTabHost;->mViewPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .line 200
    iput v3, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 210
    sget-object v1, Lcom/tencent/qrom/R$styleable;->TabWidget:[I

    const v2, 0x7a010096

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/QromTabHost;->mTabLayoutId:I

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iget v1, p0, Landroid/widget/QromTabHost;->mTabLayoutId:I

    if-nez v1, :cond_0

    .line 218
    const v1, 0x7a030078

    iput v1, p0, Landroid/widget/QromTabHost;->mTabLayoutId:I

    .line 221
    :cond_0
    invoke-direct {p0}, Landroid/widget/QromTabHost;->initTabHost()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/QromTabHost;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/QromTabHost;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/QromTabHost;->mTabLayoutId:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/QromTabHost;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/QromTabHost;->cancelScrollState()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/QromTabHost;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/QromTabHost;->mInit:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/QromTabHost;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromTabHost;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/widget/QromTabHost;->mInit:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/QromTabHost;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/QromTabHost;->mNormalColor:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/QromTabHost;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromTabHost;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/QromTabHost;->mNormalColor:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/QromTabHost;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/QromTabHost;->mSelectedColor:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/QromTabHost;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromTabHost;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/QromTabHost;->mSelectedColor:I

    return p1
.end method

.method static synthetic access$802(Landroid/widget/QromTabHost;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromTabHost;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/widget/QromTabHost;->mTextColors:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method private cancelScrollState()V
    .locals 5

    .prologue
    .line 192
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 194
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 195
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/QromTabHost;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-interface {v2, v3, v4}, Landroid/widget/QromTabHost$IndicatorStrategy;->setTextColors(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->setFocusableInTouchMode(Z)V

    .line 226
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->setDescendantFocusability(I)V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    .line 230
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Landroid/widget/QromTabHost;->mOnTabChangeListener:Landroid/widget/QromTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/widget/QromTabHost;->mOnTabChangeListener:Landroid/widget/QromTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Landroid/widget/QromTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/QromTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/QromTabHost$TabSpec;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/QromTabHost$TabSpec;

    .prologue
    .line 412
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v2

    if-nez v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must specify a way to create the tab indicator."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_0
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;
    invoke-static {p1}, Landroid/widget/QromTabHost$TabSpec;->access$1100(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$ContentStrategy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 417
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must specify a way to create the tab content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_1
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/QromTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, "tabIndicator":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 424
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/QromTabHost$ViewIndicatorStrategy;

    if-eqz v2, :cond_2

    .line 425
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QromTabWidget;->setStripEnabled(Z)V

    .line 430
    :cond_2
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v2}, Landroid/widget/QromTabWidget;->getShowDividers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 433
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v3}, Landroid/widget/QromTabWidget;->getDividerWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 434
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 437
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 438
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 440
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 446
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v2, v1}, Landroid/widget/QromTabWidget;->addView(Landroid/view/View;)V

    .line 447
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget v2, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 450
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    if-le v2, v3, :cond_4

    .line 451
    iget v2, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    invoke-virtual {p0, v2}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    .line 454
    :cond_4
    return-void

    .line 443
    :cond_5
    iget-object v2, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/TabIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v0}, Landroid/widget/QromTabWidget;->removeAllViews()V

    .line 461
    invoke-direct {p0}, Landroid/widget/QromTabHost;->initTabHost()V

    .line 462
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 463
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->requestLayout()V

    .line 465
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->invalidate()V

    .line 466
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 543
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 547
    .local v0, "handled":Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    iget v2, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 555
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/QromTabHost;->playSoundEffect(I)V

    .line 556
    const/4 v0, 0x1

    .line 558
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 566
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/QromTabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/QromTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 484
    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    iget v1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getIndicatorViewByTag(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/QromTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static {v1}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/QromTabHost$IndicatorStrategy;->getIndicatorView()Landroid/view/View;

    move-result-object v1

    .line 538
    :goto_1
    return-object v1

    .line 532
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabContentViewByTag(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 520
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/QromTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/QromTabHost$TabSpec;->access$1100(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/QromTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 525
    :goto_1
    return-object v1

    .line 519
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTabWidget()Landroid/widget/QromTabWidget;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    return-object v0
.end method

.method public getViewPager()Lcom/tencent/qrom/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/QromTabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Landroid/widget/QromTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p0, v1}, Landroid/widget/QromTabHost$TabSpec;-><init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost;Landroid/widget/QromTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 380
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 381
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 382
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 387
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 388
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 389
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 395
    if-nez p1, :cond_1

    .line 398
    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    iget v1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 402
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 322
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 569
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget v0, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    if-eq p1, v0, :cond_0

    .line 577
    invoke-virtual {p0, p1}, Landroid/widget/QromTabHost;->switchToTab(I)V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 497
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/QromTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    .line 502
    :cond_0
    return-void

    .line 496
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 1278
    iput-object p1, p0, Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1279
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/QromTabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/QromTabHost$OnTabChangeListener;

    .prologue
    .line 587
    iput-object p1, p0, Landroid/widget/QromTabHost;->mOnTabChangeListener:Landroid/widget/QromTabHost$OnTabChangeListener;

    .line 588
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 254
    const v0, 0x7a090100

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QromTabWidget;

    iput-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    .line 255
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'com.tencent.qrom.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    new-instance v0, Landroid/widget/QromTabHost$2;

    invoke-direct {v0, p0}, Landroid/widget/QromTabHost$2;-><init>(Landroid/widget/QromTabHost;)V

    iput-object v0, p0, Landroid/widget/QromTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 280
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    new-instance v1, Landroid/widget/QromTabHost$3;

    invoke-direct {v1, p0}, Landroid/widget/QromTabHost$3;-><init>(Landroid/widget/QromTabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/QromTabWidget;->setTabSelectionListener(Landroid/widget/QromTabWidget$OnTabSelectionChanged;)V

    .line 289
    const v0, 0x7a090101

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 290
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'com.tencent.qrom.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    iget-object v0, p0, Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_2

    .line 298
    const v0, 0x7a090103

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/support/v4/view/ViewPager;

    iput-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    .line 299
    iget-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    .line 300
    new-instance v0, Landroid/widget/QromTabHost$ViewPagerAdapter;

    invoke-direct {v0, p0}, Landroid/widget/QromTabHost$ViewPagerAdapter;-><init>(Landroid/widget/QromTabHost;)V

    iput-object v0, p0, Landroid/widget/QromTabHost;->mViewPagerAdapter:Landroid/widget/QromTabHost$ViewPagerAdapter;

    .line 301
    iget-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/widget/QromTabHost;->mViewPagerAdapter:Landroid/widget/QromTabHost$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setAdapter(Lcom/tencent/qrom/support/v4/view/PagerAdapter;)V

    .line 302
    iget-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 304
    const v0, 0x7a09013f

    invoke-virtual {p0, v0}, Landroid/widget/QromTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/TabIndicator;

    iput-object v0, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    .line 305
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    iget-object v1, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/TabIndicator;->setViewPager(Lcom/tencent/qrom/support/v4/view/ViewPager;)V

    .line 307
    iget-object v0, p0, Landroid/widget/QromTabHost;->mTabIndicator:Lcom/tencent/qrom/widget/TabIndicator;

    iget-object v1, p0, Landroid/widget/QromTabHost;->mViewPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/TabIndicator;->setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 317
    :cond_2
    :goto_0
    return-void

    .line 309
    :cond_3
    iget-object v0, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/widget/QromTabHost;->mViewPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 313
    :cond_4
    const-string v0, "TabHost"

    const-string v1, "cannot find a ViewPager named com.tencent.qrom.R.id.tabviewpager, slide to switch tab will be N/A"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setup(I)V
    .locals 0
    .param p1, "initialTab"    # I

    .prologue
    .line 358
    iput p1, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 359
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->setup()V

    .line 360
    return-void
.end method

.method public setup(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    const-string v0, "TabHost"

    const-string v1, "fragment manager not provided, slide switch will be N/A"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    invoke-virtual {p0}, Landroid/widget/QromTabHost;->setup()V

    .line 354
    return-void

    .line 350
    :cond_0
    iput-object p1, p0, Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    goto :goto_0
.end method

.method public setup(Landroid/app/FragmentManager;I)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "initialTab"    # I

    .prologue
    .line 373
    iput p2, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 374
    invoke-virtual {p0, p1}, Landroid/widget/QromTabHost;->setup(Landroid/app/FragmentManager;)V

    .line 375
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 2
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;

    .prologue
    .line 334
    iput-object p1, p0, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 335
    iget-object v1, p0, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 336
    .local v0, "curActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/QromTabHost;->setup(Landroid/app/FragmentManager;)V

    .line 337
    return-void

    .line 336
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setup(Landroid/app/LocalActivityManager;I)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;
    .param p2, "initialTab"    # I

    .prologue
    .line 363
    iput p2, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 364
    invoke-virtual {p0, p1}, Landroid/widget/QromTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 365
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 341
    invoke-virtual {p0, p2}, Landroid/widget/QromTabHost;->setup(Landroid/app/FragmentManager;)V

    .line 342
    iput-object p1, p0, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 343
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;Landroid/app/FragmentManager;I)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "initialTab"    # I

    .prologue
    .line 368
    iput p3, p0, Landroid/widget/QromTabHost;->mInitialTabIndex:I

    .line 369
    invoke-virtual {p0, p1, p2}, Landroid/widget/QromTabHost;->setup(Landroid/app/LocalActivityManager;Landroid/app/FragmentManager;)V

    .line 370
    return-void
.end method

.method switchToTab(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 1182
    iget v1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_0

    .line 1183
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/QromTabHost$TabSpec;->access$1100(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/QromTabHost$ContentStrategy;->tabClosed()V

    .line 1186
    :cond_0
    iput p1, p0, Landroid/widget/QromTabHost;->mCurrentTab:I

    .line 1187
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/QromTabHost$TabSpec;

    .line 1191
    .local v0, "spec":Landroid/widget/QromTabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/QromTabWidget;->focusCurrentTab(I)V

    .line 1193
    iget-object v1, p0, Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v1, :cond_3

    .line 1196
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;
    invoke-static {v0}, Landroid/widget/QromTabHost$TabSpec;->access$1100(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/QromTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    .line 1198
    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1199
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    :cond_1
    iget-object v1, p0, Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;

    invoke-virtual {v1}, Landroid/widget/QromTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1210
    iget-object v1, p0, Landroid/widget/QromTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1218
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/QromTabHost;->invokeOnTabChangeListener()V

    .line 1219
    return-void

    .line 1214
    :cond_3
    iget-object v1, p0, Landroid/widget/QromTabHost;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
