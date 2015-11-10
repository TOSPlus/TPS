.class public Lcom/tencent/qrom/internal/widget/ActionBarView;
.super Lcom/tencent/qrom/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private firstMeasureTitle:Z

.field private homeSendMessage:Z

.field private isMiniMode:Z

.field private mActivity:Landroid/app/Activity;

.field private mClose:Landroid/widget/Button;

.field private mCloseStyleRes:I

.field private mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field private mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeBGStyleRes:I

.field private mHomeLayout:Landroid/widget/ImageButton;

.field private mHomeSrcStyleRes:I

.field private mIncludeTabs:Z

.field private mIsBackClick:Z

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field public mIsMarksPointFlag:Z

.field private mIsMenuConfigFlag:Z

.field private mItemPadding:I

.field private mLogoNavItem:Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;

.field private mMulti:Lcom/tencent/qrom/widget/ToggleButton;

.field private mMultiStyleRes:I

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field private mQromDialog:Lcom/tencent/qrom/app/QromDialog;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x11

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 139
    iput-boolean v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->firstMeasureTitle:Z

    .line 148
    iput-boolean v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsBackClick:Z

    .line 151
    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;

    .line 152
    iput-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mQromDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 153
    iput-boolean v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->homeSendMessage:Z

    .line 197
    new-instance v0, Lcom/tencent/qrom/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/widget/ActionBarView$1;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 217
    sget-object v0, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v1, 0x7a0100be

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 220
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    .line 223
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 224
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 225
    const/16 v0, 0x10

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mItemPadding:I

    .line 226
    const/16 v0, 0x15

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMultiStyleRes:I

    .line 227
    const/16 v0, 0x14

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCloseStyleRes:I

    .line 228
    const/16 v0, 0x12

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeBGStyleRes:I

    .line 229
    invoke-virtual {v7, v11, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeSrcStyleRes:I

    .line 231
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initHome(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x3

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 235
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 236
    .local v8, "customNavId":I
    if-eqz v8, :cond_0

    .line 237
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 238
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v9, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 239
    iput v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    .line 240
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 243
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mLogoNavItem:Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v11, :cond_1

    .line 248
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setClipChildren(Z)V

    .line 249
    invoke-virtual {p0, v10}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setClipToPadding(Z)V

    .line 252
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsBackClick:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/app/QromDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mQromDialog:Lcom/tencent/qrom/app/QromDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mLogoNavItem:Lcom/tencent/qrom/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method private configPresenters(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 439
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 441
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initHome(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 735
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    .line 736
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    const v3, 0x102002c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 737
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 739
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 740
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 744
    .local v0, "bRipple":Z
    if-eqz v0, :cond_1

    .line 745
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 746
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 755
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 756
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeSrcStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 757
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 759
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 760
    return-void

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeBGStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initSubTitle()V
    .locals 4

    .prologue
    .line 714
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 716
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const v1, 0x7a09005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 717
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 719
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 720
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 721
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 685
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 688
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7a030001

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 690
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v6, 0x7a09005b

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 692
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 697
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 698
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_1
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    move v0, v4

    .line 702
    .local v0, "homeAsUp":Z
    :goto_0
    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    move v2, v4

    .line 703
    .local v2, "showHome":Z
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 706
    .end local v0    # "homeAsUp":Z
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "showHome":Z
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 707
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 711
    :cond_3
    return-void

    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    move v0, v5

    .line 701
    goto :goto_0

    .restart local v0    # "homeAsUp":Z
    :cond_5
    move v2, v5

    .line 702
    goto :goto_1

    .restart local v2    # "showHome":Z
    :cond_6
    move v4, v5

    .line 703
    goto :goto_2
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 517
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 518
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 522
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    .end local v0    # "visible":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 520
    goto :goto_0

    .line 522
    .restart local v0    # "visible":Z
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 453
    .local v0, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 456
    :cond_0
    return-void

    .line 451
    .end local v0    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public exitMiniMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 905
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 912
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 915
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->isMiniMode:Z

    .line 916
    return v3
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 664
    new-instance v0, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v2, v2, v1}, Lcom/tencent/qrom/app/ActionBar$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1329
    new-instance v0, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1334
    if-nez p1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1337
    :cond_0
    return-object p1
.end method

.method public getActionBarHome()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7a0d0057

    const/16 v8, 0x11

    const/16 v7, 0xf

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 815
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    if-nez v2, :cond_6

    .line 816
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    .line 817
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    const v3, 0x7a090059

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 818
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCloseStyleRes:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 819
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 822
    .local v0, "bRipple":Z
    if-eqz v0, :cond_4

    .line 823
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_3

    .line 824
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 841
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 843
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 844
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 845
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 846
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 849
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 854
    .end local v0    # "bRipple":Z
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 857
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 858
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 860
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    return-object v2

    .line 827
    .restart local v0    # "bRipple":Z
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 830
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_5

    .line 831
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 834
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 850
    .end local v0    # "bRipple":Z
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getEditView()Landroid/widget/EditText;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 864
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initEdit()V

    .line 865
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMultiChoiceView()Lcom/tencent/qrom/widget/ToggleButton;
    .locals 10

    .prologue
    const v9, 0x7a0d0057

    const/16 v8, 0x11

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 764
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-nez v2, :cond_5

    .line 765
    new-instance v2, Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    .line 766
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const v3, 0x7a0900f9

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setId(I)V

    .line 767
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMultiStyleRes:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qrom/widget/ToggleButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 768
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    new-instance v3, Lcom/tencent/qrom/internal/widget/ActionBarView$2;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/internal/widget/ActionBarView$2;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarView;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 775
    .local v0, "bRipple":Z
    if-eqz v0, :cond_3

    .line 776
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_2

    .line 777
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 793
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 794
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 796
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/widget/ToggleButton;->setGravity(I)V

    .line 797
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setFocusable(Z)V

    .line 798
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/ToggleButton;->setSingleLine(Z)V

    .line 799
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setPadding(IIII)V

    .line 803
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 807
    .end local v0    # "bRipple":Z
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    iput-boolean v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    .line 808
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ToggleButton;->setVisibility(I)V

    .line 811
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    return-object v2

    .line 780
    .restart local v0    # "bRipple":Z
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 783
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_4

    .line 784
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 804
    .end local v0    # "bRipple":Z
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ToggleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getOverflowButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    .line 1558
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initSubTitle()V

    .line 882
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 259
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 260
    iput-boolean v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->firstMeasureTitle:Z

    .line 262
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 266
    :cond_0
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 268
    iget v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initTitle()V

    .line 270
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initSubTitle()V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 275
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 276
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 281
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 294
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 295
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 297
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 299
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 669
    invoke-super {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 671
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 673
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 675
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 676
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 677
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 682
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v21

    .line 1192
    .local v21, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v23

    .line 1193
    .local v23, "y":I
    sub-int v25, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v26

    sub-int v7, v25, v26

    .line 1195
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v25

    add-int v21, v21, v25

    .line 1203
    const/16 v17, 0x0

    .line 1204
    .local v17, "paddingRight":I
    sub-int v21, v21, v17

    .line 1208
    .end local v17    # "paddingRight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_d

    const/16 v18, 0x1

    .line 1210
    .local v18, "showTitle":Z
    :goto_1
    if-eqz v18, :cond_3

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    .line 1215
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 1224
    :cond_4
    :goto_2
    sub-int v25, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v26

    sub-int v13, v25, v26

    .line 1225
    .local v13, "menuLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v25

    sub-int v13, v13, v25

    .line 1230
    :cond_5
    const/4 v8, 0x0

    .line 1231
    .local v8, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x10

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1233
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1235
    :cond_6
    if-eqz v8, :cond_a

    .line 1236
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1237
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v12, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    move/from16 v25, v0

    if-eqz v25, :cond_f

    check-cast v12, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v12

    .line 1240
    .local v4, "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    :goto_3
    if-eqz v4, :cond_10

    iget v10, v4, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->gravity:I

    .line 1241
    .local v10, "gravity":I
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1243
    .local v14, "navWidth":I
    const/16 v19, 0x0

    .line 1244
    .local v19, "topMargin":I
    const/4 v5, 0x0

    .line 1245
    .local v5, "bottomMargin":I
    if-eqz v4, :cond_7

    .line 1246
    iget v0, v4, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v21, v21, v25

    .line 1247
    iget v0, v4, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v13, v13, v25

    .line 1248
    iget v0, v4, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 1249
    iget v5, v4, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 1252
    :cond_7
    and-int/lit8 v11, v10, 0x7

    .line 1254
    .local v11, "hgravity":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_12

    .line 1255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v14

    div-int/lit8 v6, v25, 0x2

    .line 1256
    .local v6, "centeredLeft":I
    move/from16 v0, v21

    if-ge v6, v0, :cond_11

    .line 1257
    const/4 v11, 0x3

    .line 1265
    .end local v6    # "centeredLeft":I
    :cond_8
    :goto_5
    const/16 v22, 0x0

    .line 1266
    .local v22, "xpos":I
    packed-switch v11, :pswitch_data_1

    .line 1278
    :goto_6
    :pswitch_0
    and-int/lit8 v20, v10, 0x70

    .line 1280
    .local v20, "vgravity":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_9

    .line 1281
    const/16 v20, 0x10

    .line 1284
    :cond_9
    const/16 v24, 0x0

    .line 1285
    .local v24, "ypos":I
    sparse-switch v20, :sswitch_data_0

    .line 1299
    :goto_7
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1300
    .local v9, "customWidth":I
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x12

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7a0a0018

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7a0d0030

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v24

    add-int v26, v22, v9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7a0d0030

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v27, v27, v24

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1307
    :goto_8
    add-int v21, v21, v9

    .line 1311
    .end local v4    # "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    .end local v5    # "bottomMargin":I
    .end local v9    # "customWidth":I
    .end local v10    # "gravity":I
    .end local v11    # "hgravity":I
    .end local v14    # "navWidth":I
    .end local v19    # "topMargin":I
    .end local v20    # "vgravity":I
    .end local v22    # "xpos":I
    .end local v24    # "ypos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Button;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    .line 1315
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v27

    sub-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    .line 1321
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/EditText;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    goto/16 :goto_0

    .line 1208
    .end local v8    # "customView":Landroid/view/View;
    .end local v13    # "menuLeft":I
    .end local v18    # "showTitle":Z
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1217
    .restart local v18    # "showTitle":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1218
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v25, v0

    add-int v21, v21, v25

    .line 1219
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v21, v21, v25

    goto/16 :goto_2

    .line 1237
    .restart local v8    # "customView":Landroid/view/View;
    .restart local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v13    # "menuLeft":I
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1240
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    :cond_10
    const/16 v10, 0x13

    goto/16 :goto_4

    .line 1258
    .restart local v5    # "bottomMargin":I
    .restart local v6    # "centeredLeft":I
    .restart local v10    # "gravity":I
    .restart local v11    # "hgravity":I
    .restart local v14    # "navWidth":I
    .restart local v19    # "topMargin":I
    :cond_11
    add-int v25, v6, v14

    move/from16 v0, v25

    if-le v0, v13, :cond_8

    .line 1259
    const/4 v11, 0x5

    goto/16 :goto_5

    .line 1261
    .end local v6    # "centeredLeft":I
    :cond_12
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_8

    .line 1262
    const/4 v11, 0x3

    goto/16 :goto_5

    .line 1268
    .restart local v22    # "xpos":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v14

    div-int/lit8 v22, v25, 0x2

    .line 1269
    goto/16 :goto_6

    .line 1271
    :pswitch_3
    move/from16 v22, v21

    .line 1272
    goto/16 :goto_6

    .line 1274
    :pswitch_4
    sub-int v22, v13, v14

    goto/16 :goto_6

    .line 1287
    .restart local v20    # "vgravity":I
    .restart local v24    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v16

    .line 1288
    .local v16, "paddedTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v26

    sub-int v15, v25, v26

    .line 1289
    .local v15, "paddedBottom":I
    sub-int v25, v15, v16

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    .line 1290
    goto/16 :goto_7

    .line 1292
    .end local v15    # "paddedBottom":I
    .end local v16    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v25

    add-int v24, v25, v19

    .line 1293
    goto/16 :goto_7

    .line 1295
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getHeight()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v25, v5

    goto/16 :goto_7

    .line 1305
    .restart local v9    # "customWidth":I
    :cond_13
    add-int v25, v22, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v24

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 1266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1285
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7a0d0004

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPadding(IIII)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getChildCount()I

    move-result v9

    .line 940
    .local v9, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v46, v0

    if-eqz v46, :cond_4

    .line 941
    const/16 v44, 0x0

    .line 942
    .local v44, "visibleChildren":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v9, :cond_2

    .line 943
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 944
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v46

    if-eqz v46, :cond_1

    .line 946
    :cond_0
    add-int/lit8 v44, v44, 0x1

    .line 942
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 950
    .end local v8    # "child":Landroid/view/View;
    :cond_2
    if-nez v44, :cond_4

    .line 951
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 952
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1187
    .end local v24    # "i":I
    .end local v44    # "visibleChildren":I
    :cond_3
    :goto_1
    return-void

    .line 956
    :cond_4
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 958
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v45

    .line 960
    .local v45, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 961
    .local v19, "heightMode":I
    const/high16 v46, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 962
    new-instance v46, Ljava/lang/IllegalStateException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " can only be used "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 966
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 968
    .local v12, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v46, v0

    if-lez v46, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v28, v0

    .line 971
    .local v28, "maxHeight":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v47

    add-int v43, v46, v47

    .line 972
    .local v43, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 973
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 974
    .local v35, "paddingRight":I
    sub-int v18, v28, v43

    .line 975
    .local v18, "height":I
    const/high16 v46, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 977
    .local v10, "childSpecHeight":I
    sub-int v46, v12, v34

    sub-int v6, v46, v35

    .line 978
    .local v6, "availableWidth":I
    div-int/lit8 v26, v6, 0x2

    .line 979
    .local v26, "leftOfCenter":I
    move/from16 v36, v26

    .line 981
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_6

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    .line 984
    .local v27, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    if-gez v46, :cond_1b

    .line 985
    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 989
    .local v22, "homeWidthSpec":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, v46

    move/from16 v1, v22

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->measure(II)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v21

    .line 992
    .local v21, "homeWidth":I
    const/16 v46, 0x0

    sub-int v47, v6, v21

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 993
    const/16 v46, 0x0

    sub-int v47, v6, v21

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 996
    .end local v21    # "homeWidth":I
    .end local v22    # "homeWidthSpec":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_7

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v6, v10, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 998
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v47

    sub-int v47, v36, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1001
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-eqz v46, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getVisibility()I

    move-result v46

    if-nez v46, :cond_8

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    const/16 v47, -0x2

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v48, v0

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/Button;->measure(II)V

    .line 1007
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v46

    if-nez v46, :cond_9

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    const/16 v47, -0x2

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v48, v0

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Lcom/tencent/qrom/widget/ToggleButton;->measure(II)V

    .line 1013
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    if-eqz v46, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/EditText;->getVisibility()I

    move-result v46

    if-nez v46, :cond_b

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    move/from16 v46, v0

    if-nez v46, :cond_1c

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v21

    .line 1016
    .restart local v21    # "homeWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v31

    .line 1017
    .local v31, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    div-int/lit8 v47, v12, 0x2

    move/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    sub-int v47, v47, v48

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v48

    sub-int v47, v47, v48

    mul-int/lit8 v47, v47, 0x2

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 1028
    .end local v21    # "homeWidth":I
    .end local v31    # "menuWidth":I
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, -0x2

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, -0x2

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/EditText;->measure(II)V

    .line 1033
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    if-eqz v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x8

    if-eqz v46, :cond_20

    const/16 v37, 0x1

    .line 1036
    .local v37, "showTitle":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v46, v0

    packed-switch v46, :pswitch_data_0

    .line 1052
    :cond_c
    :goto_6
    const/16 v17, 0x0

    .line 1053
    .local v17, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x10

    if-eqz v46, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v46, v0

    if-eqz v46, :cond_d

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 1058
    :cond_d
    if-eqz v17, :cond_11

    .line 1059
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    .line 1060
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    move/from16 v46, v0

    if-eqz v46, :cond_22

    move-object/from16 v46, v27

    check-cast v46, Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    move-object/from16 v5, v46

    .line 1063
    .local v5, "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    :goto_7
    const/16 v23, 0x0

    .line 1064
    .local v23, "horizontalMargin":I
    const/16 v42, 0x0

    .line 1065
    .local v42, "verticalMargin":I
    if-eqz v5, :cond_e

    .line 1066
    iget v0, v5, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v46, v0

    iget v0, v5, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v47, v0

    add-int v23, v46, v47

    .line 1067
    iget v0, v5, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    iget v0, v5, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 1073
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v46, v0

    if-gtz v46, :cond_23

    .line 1074
    const/high16 v14, -0x80000000

    .line 1079
    .local v14, "customNavHeightMode":I
    :goto_8
    const/16 v46, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    if-ltz v47, :cond_f

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .end local v18    # "height":I
    :cond_f
    sub-int v47, v18, v42

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1082
    .local v13, "customNavHeight":I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    const/16 v47, -0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_25

    const/high16 v16, 0x40000000    # 2.0f

    .line 1084
    .local v16, "customNavWidthMode":I
    :goto_9
    const/16 v47, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    if-ltz v46, :cond_26

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    move/from16 v0, v46

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v46

    :goto_a
    sub-int v46, v46, v23

    move/from16 v0, v47

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1087
    .local v15, "customNavWidth":I
    if-eqz v5, :cond_27

    iget v0, v5, Lcom/tencent/qrom/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v46, v0

    :goto_b
    and-int/lit8 v20, v46, 0x7

    .line 1092
    .local v20, "hgrav":I
    const/16 v46, 0x1

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_10

    .line 1093
    move/from16 v0, v26

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v46

    mul-int/lit8 v15, v46, 0x2

    .line 1097
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->isMiniMode:Z

    move/from16 v46, v0

    if-nez v46, :cond_28

    .line 1098
    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1108
    :goto_c
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v46

    add-int v46, v46, v23

    sub-int v6, v6, v46

    .line 1111
    .end local v5    # "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    .end local v13    # "customNavHeight":I
    .end local v14    # "customNavHeightMode":I
    .end local v15    # "customNavWidth":I
    .end local v16    # "customNavWidthMode":I
    .end local v20    # "hgrav":I
    .end local v23    # "horizontalMargin":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v42    # "verticalMargin":I
    :cond_11
    if-eqz v37, :cond_18

    .line 1113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->firstMeasureTitle:Z

    move/from16 v46, v0

    if-eqz v46, :cond_14

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_12

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->requestLayout()V

    .line 1116
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_13

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->requestLayout()V

    .line 1118
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    const/16 v47, -0x2

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v48, v0

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1121
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/widget/ActionBarView;->firstMeasureTitle:Z

    .line 1123
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v39

    .line 1125
    .local v39, "tagWidth":I
    move/from16 v29, v39

    .line 1127
    .local v29, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_2b

    .line 1128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    move/from16 v46, v0

    if-nez v46, :cond_29

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1130
    .local v40, "temp":I
    div-int/lit8 v46, v12, 0x2

    sub-int v46, v46, v40

    sub-int v46, v46, v34

    sub-int v46, v46, v35

    mul-int/lit8 v29, v46, 0x2

    .line 1135
    .end local v40    # "temp":I
    :goto_d
    move/from16 v0, v39

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    .line 1141
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-eqz v46, :cond_15

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getVisibility()I

    move-result v46

    if-nez v46, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v11

    .line 1143
    .local v11, "closeWidth":I
    :goto_f
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v11

    move/from16 v0, v47

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v46, v46, 0x2

    move/from16 v0, v39

    move/from16 v1, v46

    if-le v0, v1, :cond_15

    .line 1144
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v11

    move/from16 v0, v47

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v39, v46, 0x2

    .line 1147
    .end local v11    # "closeWidth":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_16

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v46

    if-nez v46, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v32

    .line 1149
    .local v32, "multiWidth":I
    :goto_10
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v32

    move/from16 v0, v32

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v46, v46, 0x2

    move/from16 v0, v39

    move/from16 v1, v46

    if-le v0, v1, :cond_16

    .line 1150
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v32

    move/from16 v0, v32

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v39, v46, 0x2

    .line 1153
    .end local v32    # "multiWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-eqz v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_17

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getVisibility()I

    move-result v46

    if-nez v46, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v11

    .line 1155
    .restart local v11    # "closeWidth":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getVisibility()I

    move-result v46

    if-nez v46, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v32

    .line 1156
    .restart local v32    # "multiWidth":I
    :goto_12
    move/from16 v0, v32

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1157
    .local v7, "buttonWidth":I
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v7

    move/from16 v0, v47

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v46, v46, 0x2

    move/from16 v0, v39

    move/from16 v1, v46

    if-le v0, v1, :cond_17

    .line 1158
    div-int/lit8 v46, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7a0d0057

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    add-int v47, v47, v7

    move/from16 v0, v47

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v46, v46, v47

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v47

    sub-int v46, v46, v47

    mul-int/lit8 v39, v46, 0x2

    .line 1163
    .end local v7    # "buttonWidth":I
    .end local v11    # "closeWidth":I
    .end local v32    # "multiWidth":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v39

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v48, v0

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1169
    .end local v29    # "maxWidth":I
    .end local v39    # "tagWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v46, v0

    if-gtz v46, :cond_32

    .line 1170
    const/16 v30, 0x0

    .line 1171
    .local v30, "measuredHeight":I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_13
    move/from16 v0, v24

    if-ge v0, v9, :cond_31

    .line 1172
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 1173
    .local v41, "v":Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v46

    add-int v33, v46, v43

    .line 1174
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v30

    if-le v0, v1, :cond_19

    .line 1175
    move/from16 v30, v33

    .line 1171
    :cond_19
    add-int/lit8 v24, v24, 0x1

    goto :goto_13

    .line 968
    .end local v6    # "availableWidth":I
    .end local v10    # "childSpecHeight":I
    .end local v17    # "customView":Landroid/view/View;
    .end local v24    # "i":I
    .end local v26    # "leftOfCenter":I
    .end local v28    # "maxHeight":I
    .end local v30    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v41    # "v":Landroid/view/View;
    .end local v43    # "verticalPadding":I
    :cond_1a
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v28

    goto/16 :goto_2

    .line 987
    .restart local v6    # "availableWidth":I
    .restart local v10    # "childSpecHeight":I
    .restart local v18    # "height":I
    .restart local v26    # "leftOfCenter":I
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v28    # "maxHeight":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v43    # "verticalPadding":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7a0d0059

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v46

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "homeWidthSpec":I
    goto/16 :goto_3

    .line 1019
    .end local v22    # "homeWidthSpec":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1f

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v11

    .line 1021
    .restart local v11    # "closeWidth":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/widget/ToggleButton;->getMeasuredWidth()I

    move-result v32

    .line 1022
    .restart local v32    # "multiWidth":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    div-int/lit8 v47, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7a0d0057

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v48, v0

    add-int v48, v48, v32

    move/from16 v0, v48

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    sub-int v47, v47, v48

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v48

    sub-int v47, v47, v48

    mul-int/lit8 v47, v47, 0x2

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setMaxWidth(I)V

    goto/16 :goto_4

    .line 1020
    .end local v11    # "closeWidth":I
    .end local v32    # "multiWidth":I
    :cond_1d
    const/4 v11, 0x0

    goto :goto_14

    .line 1021
    .restart local v11    # "closeWidth":I
    :cond_1e
    const/16 v32, 0x0

    goto :goto_15

    .line 1024
    .end local v11    # "closeWidth":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    move/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    move-object/from16 v46, v0

    if-nez v46, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMulti:Lcom/tencent/qrom/widget/ToggleButton;

    move-object/from16 v46, v0

    if-nez v46, :cond_a

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v21

    .line 1026
    .restart local v21    # "homeWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mEdit:Landroid/widget/EditText;

    move-object/from16 v46, v0

    div-int/lit8 v47, v12, 0x2

    sub-int v47, v47, v21

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v48

    sub-int v47, v47, v48

    mul-int/lit8 v47, v47, 0x2

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setMaxWidth(I)V

    goto/16 :goto_4

    .line 1033
    .end local v21    # "homeWidth":I
    :cond_20
    const/16 v37, 0x0

    goto/16 :goto_5

    .line 1038
    .restart local v37    # "showTitle":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_c

    .line 1039
    if-eqz v37, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v46, v0

    mul-int/lit8 v25, v46, 0x2

    .line 1040
    .local v25, "itemPaddingSize":I
    :goto_16
    const/16 v46, 0x0

    sub-int v47, v6, v25

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1041
    const/16 v46, 0x0

    sub-int v47, v26, v25

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    const/high16 v47, -0x80000000

    move/from16 v0, v47

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1046
    .local v38, "tabWidth":I
    const/16 v46, 0x0

    sub-int v47, v6, v38

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1047
    const/16 v46, 0x0

    sub-int v47, v26, v38

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v26

    goto/16 :goto_6

    .line 1039
    .end local v25    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v25, v0

    goto :goto_16

    .line 1060
    .restart local v17    # "customView":Landroid/view/View;
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1076
    .restart local v5    # "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    .restart local v23    # "horizontalMargin":I
    .restart local v42    # "verticalMargin":I
    :cond_23
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    const/16 v47, -0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_24

    const/high16 v14, 0x40000000    # 2.0f

    .restart local v14    # "customNavHeightMode":I
    :goto_17
    goto/16 :goto_8

    .end local v14    # "customNavHeightMode":I
    :cond_24
    const/high16 v14, -0x80000000

    goto :goto_17

    .line 1082
    .end local v18    # "height":I
    .restart local v13    # "customNavHeight":I
    .restart local v14    # "customNavHeightMode":I
    :cond_25
    const/high16 v16, -0x80000000

    goto/16 :goto_9

    .restart local v16    # "customNavWidthMode":I
    :cond_26
    move/from16 v46, v6

    .line 1084
    goto/16 :goto_a

    .line 1087
    .restart local v15    # "customNavWidth":I
    :cond_27
    const/16 v46, 0x13

    goto/16 :goto_b

    .line 1103
    .restart local v20    # "hgrav":I
    :cond_28
    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_c

    .line 1133
    .end local v5    # "ablp":Lcom/tencent/qrom/app/ActionBar$LayoutParams;
    .end local v13    # "customNavHeight":I
    .end local v14    # "customNavHeightMode":I
    .end local v15    # "customNavWidth":I
    .end local v16    # "customNavWidthMode":I
    .end local v20    # "hgrav":I
    .end local v23    # "horizontalMargin":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v42    # "verticalMargin":I
    .restart local v29    # "maxWidth":I
    .restart local v39    # "tagWidth":I
    :cond_29
    div-int/lit8 v47, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v46

    const/16 v48, 0x8

    move/from16 v0, v46

    move/from16 v1, v48

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v46

    :goto_18
    sub-int v46, v47, v46

    sub-int v46, v46, v34

    sub-int v46, v46, v35

    mul-int/lit8 v29, v46, 0x2

    goto/16 :goto_d

    :cond_2a
    const/16 v46, 0x0

    goto :goto_18

    .line 1138
    :cond_2b
    div-int/lit8 v47, v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    if-eqz v46, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v46

    const/16 v48, 0x8

    move/from16 v0, v46

    move/from16 v1, v48

    if-eq v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v46

    :goto_19
    sub-int v46, v47, v46

    sub-int v46, v46, v34

    sub-int v46, v46, v35

    mul-int/lit8 v39, v46, 0x2

    goto/16 :goto_e

    :cond_2c
    const/16 v46, 0x0

    goto :goto_19

    .line 1142
    :cond_2d
    const/4 v11, 0x0

    goto/16 :goto_f

    .line 1148
    :cond_2e
    const/16 v32, 0x0

    goto/16 :goto_10

    .line 1154
    :cond_2f
    const/4 v11, 0x0

    goto/16 :goto_11

    .line 1155
    .restart local v11    # "closeWidth":I
    :cond_30
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 1178
    .end local v11    # "closeWidth":I
    .end local v29    # "maxWidth":I
    .end local v39    # "tagWidth":I
    .restart local v24    # "i":I
    .restart local v30    # "measuredHeight":I
    :cond_31
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1183
    .end local v24    # "i":I
    .end local v30    # "measuredHeight":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_3

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v48

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-virtual/range {v46 .. v50}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1180
    :cond_32
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_1a

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1356
    move-object v1, p1

    check-cast v1, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;

    .line 1358
    .local v1, "state":Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1360
    iget v2, v1, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1362
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1363
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1364
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1368
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1371
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1342
    invoke-super {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1343
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1345
    .local v0, "state":Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1346
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/qrom/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1351
    return-object v0
.end method

.method public qromGetBackOnclickEnabled()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsBackClick:Z

    return v0
.end method

.method public qromSetBackOnclickEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1526
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsBackClick:Z

    .line 1527
    return-void
.end method

.method public setActionbarViewActivity(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "fatherActivity"    # Landroid/app/Activity;
    .param p2, "sendMessage"    # Z

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;

    .line 164
    iput-boolean p2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->homeSendMessage:Z

    .line 166
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 167
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 168
    .local v1, "out":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7a01012a

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 174
    .local v0, "bRipple":Z
    if-eqz v0, :cond_2

    .line 175
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 176
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeBGStyleRes:I

    invoke-static {v3, v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    .end local v0    # "bRipple":Z
    .end local v1    # "out":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0    # "bRipple":Z
    .restart local v1    # "out":Landroid/util/TypedValue;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeBGStyleRes:I

    invoke-static {v3, v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeBGStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setActionbarViewDialog(Lcom/tencent/qrom/app/QromDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/tencent/qrom/app/QromDialog;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mQromDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 196
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .param p1, "collapsable"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 927
    return-void
.end method

.method public setContextView(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 923
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 459
    iget v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move v2, v3

    .line 461
    .local v2, "showCustom":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 462
    iput-boolean v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUserTitle:Z

    .line 466
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 467
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 469
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 470
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 471
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 476
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 477
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_3

    .line 478
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 479
    .local v0, "height":I
    if-lez v0, :cond_3

    .line 480
    iput v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContentHeight:I

    .line 485
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void

    .line 459
    .end local v2    # "showCustom":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 8
    .param p1, "options"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 559
    iget v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v6, v0, :cond_5

    .line 560
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 562
    and-int/lit8 v6, v0, 0x1f

    if-eqz v6, :cond_d

    .line 563
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_6

    move v3, v4

    .line 564
    .local v3, "showHome":Z
    :goto_1
    if-eqz v3, :cond_7

    .line 565
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 566
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 567
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 574
    :cond_0
    :goto_2
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_1

    .line 575
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_8

    move v2, v4

    .line 581
    .local v2, "setUp":Z
    :goto_3
    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 586
    .end local v2    # "setUp":Z
    :cond_1
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2

    .line 587
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_9

    .line 588
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initTitle()V

    .line 594
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    and-int/lit8 v6, v0, 0x6

    if-eqz v6, :cond_3

    .line 596
    iget v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    move v1, v4

    .line 597
    .local v1, "homeAsUp":Z
    :goto_5
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_b

    if-eqz v1, :cond_b

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 600
    .end local v1    # "homeAsUp":Z
    :cond_3
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 601
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_c

    .line 602
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 607
    :cond_4
    :goto_7
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->requestLayout()V

    .line 614
    .end local v3    # "showHome":Z
    :goto_8
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 615
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 624
    :goto_9
    return-void

    .line 559
    .end local v0    # "flagsChanged":I
    :cond_5
    iget v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v6

    goto :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_6
    move v3, v5

    .line 563
    goto :goto_1

    .line 571
    .restart local v3    # "showHome":Z
    :cond_7
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v2, v5

    .line 575
    goto :goto_3

    .line 590
    :cond_9
    iget-object v6, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    move v1, v5

    .line 596
    goto :goto_5

    .restart local v1    # "homeAsUp":Z
    :cond_b
    move v4, v5

    .line 597
    goto :goto_6

    .line 604
    .end local v1    # "homeAsUp":Z
    :cond_c
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 609
    .end local v3    # "showHome":Z
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->invalidate()V

    goto :goto_8

    .line 616
    :cond_e
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_f

    .line 617
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0e014a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 620
    :cond_f
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0e0149

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public setEmbeddedTabView(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 338
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .line 342
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 343
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 344
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 345
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 346
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    invoke-virtual {p1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 350
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 342
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 546
    if-nez p1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    :goto_0
    return-void

    .line 548
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e0149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIsTransPopup(Z)V
    .locals 1
    .param p1, "isTransPopup"    # Z

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setIsTransPopup(Z)V

    .line 1567
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 354
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    .line 357
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 358
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    :cond_2
    move-object v0, p1

    .line 361
    check-cast v0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 362
    .local v0, "builder":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 363
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mOptionsMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMenuConfigFlag:Z

    if-eqz v4, :cond_0

    .line 365
    :cond_3
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_4

    .line 366
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 367
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    .line 368
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 371
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_5

    .line 372
    new-instance v4, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 373
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 376
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7a090085

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 378
    new-instance v4, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarView;Lcom/tencent/qrom/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 382
    :cond_5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 384
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_7

    .line 386
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 390
    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->configPresenters(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 391
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 392
    .local v2, "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 393
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    if-eq v3, p0, :cond_6

    .line 394
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 400
    .end local v2    # "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    :cond_7
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v8}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 402
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 405
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 407
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 408
    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->configPresenters(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 409
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 410
    .restart local v2    # "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_a

    .line 411
    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 412
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_8

    .line 413
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 416
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0d0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 417
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_9

    .line 418
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 422
    :cond_9
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 426
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_a
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuConfigFlag(Z)V
    .locals 0
    .param p1, "isConfig"    # Z

    .prologue
    .line 1604
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMenuConfigFlag:Z

    .line 1605
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 627
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    .line 628
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 629
    packed-switch v0, :pswitch_data_0

    .line 636
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 643
    :cond_1
    :goto_1
    iput p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I

    .line 644
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->requestLayout()V

    .line 646
    :cond_2
    return-void

    .line 631
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 629
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 636
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOverflowButtonState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 1535
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowButtonState(Z)V

    .line 1537
    return-void
.end method

.method public setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V

    .line 1550
    :cond_0
    return-void
.end method

.method public setOverflowDelay(Z)V
    .locals 1
    .param p1, "isDelay"    # Z

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setOverflowDelay(Z)V

    .line 1593
    :cond_0
    return-void
.end method

.method public setPopupMenuMarks([Z)V
    .locals 1
    .param p1, "isMarks"    # [Z

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMarksPointFlag:Z

    .line 1574
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupMenuMarks([Z)V

    .line 1576
    :cond_0
    return-void
.end method

.method public setPopupTextColors([I)V
    .locals 1
    .param p1, "textColors"    # [I

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMarksPointFlag:Z

    .line 1583
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setPopupTextColors([I)V

    .line 1585
    :cond_0
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3
    .param p1, "splitActionBar"    # Z

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    :cond_0
    if-eqz p1, :cond_4

    .line 315
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 322
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 323
    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 325
    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 327
    :cond_3
    return-void

    .line 319
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 323
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_5
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 531
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 532
    invoke-direct {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->initSubTitle()V

    .line 533
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 538
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    .end local v0    # "visible":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 535
    goto :goto_0

    :cond_3
    move v0, v2

    .line 536
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 538
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUserTitle:Z

    .line 499
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 500
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->firstMeasureTitle:Z

    .line 501
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->requestLayout()V

    .line 502
    return-void
.end method

.method public setTopOverflowButtonState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setTopOverflowButtonState(Z)V

    .line 1543
    return-void
.end method

.method public setTopOverflowDelay(Z)V
    .locals 1
    .param p1, "isDelay"    # Z

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->setTopOverflowDelay(Z)V

    .line 1599
    :cond_0
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 289
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 514
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public startMiniMode()Z
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 891
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 900
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarView;->isMiniMode:Z

    .line 901
    return v3
.end method
