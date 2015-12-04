.class public abstract Lcom/tencent/qrom/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/ActionBar$LayoutParams;,
        Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;,
        Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;,
        Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;,
        Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;,
        Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;,
        Lcom/tencent/qrom/app/ActionBar$TabListener;,
        Lcom/tencent/qrom/app/ActionBar$Tab;,
        Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;,
        Lcom/tencent/qrom/app/ActionBar$OnNavigationListener;,
        Lcom/tencent/qrom/app/ActionBar$Callback;
    }
.end annotation


# static fields
.field public static final ACTIONBAR_TAB_OVERLAY:I = 0x3

.field public static final ACTIONBAR_TAB_OVERLAY_SECOND:I = 0x4

.field public static final ACTIONBAR_TAB_STANDARD:I = 0x1

.field public static final ACTIONBAR_TAB_STANDARD_SECOND:I = 0x2

.field public static final ACTIONMODE_DEFAULT:I = 0x0

.field public static final ACTIONMODE_SIMPLE:I = 0x1

.field public static final DISPLAY_DEFAULT_IMAGE:I = 0x0

.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USER_IMAGE:I = 0x1

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# instance fields
.field protected mActionBarAnimTrans:Z

.field protected mActionBarHideNoAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-boolean v0, p0, Lcom/tencent/qrom/app/ActionBar;->mActionBarAnimTrans:Z

    .line 1039
    iput-boolean v0, p0, Lcom/tencent/qrom/app/ActionBar;->mActionBarHideNoAnim:Z

    .line 1096
    return-void
.end method


# virtual methods
.method public actionModeManualFinish()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public abstract addOnMenuVisibilityListener(Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Lcom/tencent/qrom/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Lcom/tencent/qrom/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Lcom/tencent/qrom/app/ActionBar$Tab;Z)V
.end method

.method public abstract enableTabClick(Z)V
.end method

.method public exitMiniMode()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarHome()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionBarView()Lcom/tencent/qrom/internal/widget/ActionBarView;
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundResId()I
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getBottomBarHeight()I
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseView(Z)Landroid/view/View;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getEditView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditView(Z)Landroid/widget/EditText;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public getMultiChoiceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiChoiceView(Z)Landroid/view/View;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 681
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getOverflowButton(Z)Landroid/view/View;
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Lcom/tencent/qrom/app/ActionBar$Tab;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getSubtitleView(Z)Landroid/widget/TextView;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTabAt(I)Lcom/tencent/qrom/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleView(Z)Landroid/widget/TextView;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract newTab()Lcom/tencent/qrom/app/ActionBar$Tab;
.end method

.method public qromGetBackOnclickEnabled()Z
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public qromSetActionBarTabHasTitle(Z)V
    .locals 0
    .param p1, "hasTitle"    # Z

    .prologue
    .line 749
    return-void
.end method

.method public qromSetActionModeBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 746
    return-void
.end method

.method public qromSetBackOnclickEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 740
    return-void
.end method

.method public qromSetCustomListHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 659
    return-void
.end method

.method public qromSetPageScroll(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 669
    return-void
.end method

.method public qromSetScrollEnd()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
.end method

.method public abstract setActionBarAnimTrans(Z)V
.end method

.method public setActionBarBGColor(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 690
    return-void
.end method

.method public abstract setActionBarHideListener(Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;)V
.end method

.method public abstract setActionBarHideNoAnim(Z)V
.end method

.method public abstract setActionBarShowListener(Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;)V
.end method

.method public setActionMenuItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 627
    return-void
.end method

.method public setActionModeBGColor(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 693
    return-void
.end method

.method public setActionModeCallback(Lcom/tencent/qrom/app/ActionBar$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/tencent/qrom/app/ActionBar$Callback;

    .prologue
    .line 661
    return-void
.end method

.method public abstract setActionModeFinishListener(Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;)V
.end method

.method public setActionModeSimple(I)V
    .locals 0
    .param p1, "modeType"    # I

    .prologue
    .line 634
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Lcom/tencent/qrom/app/ActionBar$LayoutParams;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setEmbededTabEnable(Z)V
    .locals 0
    .param p1, "tabEnable"    # Z

    .prologue
    .line 630
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 792
    return-void
.end method

.method public setHomeButtonEnabledQQ(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 625
    return-void
.end method

.method public setHomeButtonIconEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 626
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setIsTransPopup(ZZ)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/tencent/qrom/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setMenuConfigFlag(Z)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public setOverflowButtonState(ZZ)V
    .locals 0
    .param p1, "isActionMode"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 723
    return-void
.end method

.method public abstract setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;Z)V
.end method

.method public abstract setOverflowDelay(ZZ)V
.end method

.method public abstract setPopupMenuMarks(Z[Z)V
.end method

.method public abstract setPopupTextColors(Z[I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 737
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 454
    return-void
.end method

.method public abstract setSplitBlurListener(Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;)V
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 444
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTopOverflowButtonState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 726
    return-void
.end method

.method public abstract setTopOverflowDelay(Z)V
.end method

.method public setUserCloseImageType(I)V
    .locals 0
    .param p1, "imageType"    # I

    .prologue
    .line 633
    return-void
.end method

.method public abstract show()V
.end method

.method public splitActionbarIsHide()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public splitActionbar_Init(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 629
    return-void
.end method

.method public splitActionbar_hide()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public splitActionbar_show()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public startMiniMode()Z
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public abstract topActionbar_hide()V
.end method

.method public abstract topActionbar_show()V
.end method
