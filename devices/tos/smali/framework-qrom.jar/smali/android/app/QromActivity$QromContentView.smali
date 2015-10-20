.class public final Landroid/app/QromActivity$QromContentView;
.super Landroid/widget/FrameLayout;
.source "QromActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QromContentView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private qrommOriginalView:Landroid/view/View;

.field final synthetic this$0:Landroid/app/QromActivity;


# direct methods
.method public constructor <init>(Landroid/app/QromActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    .line 711
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/QromActivity$QromContentView;->qrommOriginalView:Landroid/view/View;

    .line 712
    return-void
.end method

.method static synthetic access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity$QromContentView;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/QromActivity$QromContentView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity$QromContentView;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/QromActivity$QromContentView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity$QromContentView;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/QromActivity$QromContentView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity$QromContentView;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/QromActivity$QromContentView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/app/QromActivity$QromContentView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 702
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private qromStartActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x1

    .line 779
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView;->qrommOriginalView:Landroid/view/View;

    .line 780
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_0

    .line 781
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 783
    :cond_0
    new-instance v3, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;

    invoke-direct {v3, p0, p2}, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;-><init>(Landroid/app/QromActivity$QromContentView;Landroid/view/ActionMode$Callback;)V

    .line 784
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v2, 0x0

    .line 785
    .local v2, "mode":Landroid/view/ActionMode;
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->qrommOriginalView:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-nez v5, :cond_1

    .line 786
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v5}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v5}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 788
    :try_start_0
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v5}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 794
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 795
    iput-object v2, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    .line 831
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v4}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v4}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 833
    :try_start_1
    iget-object v4, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v4}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v4, v5}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 838
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    return-object v4

    .line 797
    :cond_4
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-nez v5, :cond_5

    .line 798
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v5}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 799
    new-instance v5, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 800
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const v8, 0x7a0100d1

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 802
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 803
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setLayoutInsetDecor(Z)V

    .line 804
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 805
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 806
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 808
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 809
    .local v1, "heightValue":Landroid/util/TypedValue;
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102eb

    invoke-virtual {v5, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 810
    iget v5, v1, Landroid/util/TypedValue;->data:I

    iget-object v6, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 812
    .local v0, "height":I
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 813
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 814
    new-instance v5, Landroid/app/QromActivity$QromContentView$1;

    invoke-direct {v5, p0}, Landroid/app/QromActivity$QromContentView$1;-><init>(Landroid/app/QromActivity$QromContentView;)V

    iput-object v5, p0, Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 822
    .end local v0    # "height":I
    .end local v1    # "heightValue":Landroid/util/TypedValue;
    :cond_5
    invoke-virtual {p0}, Landroid/app/QromActivity$QromContentView;->qromMakeSureContextView()V

    .line 824
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_2

    .line 825
    iget-object v5, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    .line 826
    new-instance v2, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;

    .end local v2    # "mode":Landroid/view/ActionMode;
    invoke-virtual {p0}, Landroid/app/QromActivity$QromContentView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_6

    :goto_3
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 828
    .restart local v2    # "mode":Landroid/view/ActionMode;
    invoke-virtual {p0, v2, p2}, Landroid/app/QromActivity$QromContentView;->qromActionModPopWindow(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)V

    goto/16 :goto_1

    .line 826
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 834
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 789
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method


# virtual methods
.method qromActionModPopWindow(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 747
    .local v0, "creatValue":Z
    invoke-virtual {p0}, Landroid/app/QromActivity$QromContentView;->qromGetOriginalView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 750
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    .line 769
    :goto_0
    return-void

    .line 754
    :cond_0
    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 756
    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 757
    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 758
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    .line 759
    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/app/QromActivity$QromContentView;->post(Ljava/lang/Runnable;)Z

    .line 763
    :cond_1
    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 766
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public qromGetOriginalView()Landroid/view/View;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->qrommOriginalView:Landroid/view/View;

    return-object v0
.end method

.method qromMakeSureContextView()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->qrommOriginalView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v1, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 776
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 13
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 849
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_0

    .line 850
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->finish()V

    .line 853
    :cond_0
    new-instance v6, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;

    invoke-direct {v6, p0, p1}, Landroid/app/QromActivity$QromContentView$ActionModeCallbackWrapper;-><init>(Landroid/app/QromActivity$QromContentView;Landroid/view/ActionMode$Callback;)V

    .line 854
    .local v6, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v4, 0x0

    .line 855
    .local v4, "mode":Landroid/view/ActionMode;
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 857
    :try_start_0
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 862
    :cond_1
    :goto_0
    if-eqz v4, :cond_5

    .line 863
    iput-object v4, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    .line 919
    :cond_2
    :goto_1
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 921
    :try_start_1
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    iget-object v8, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v7, v8}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 927
    :cond_3
    :goto_2
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .line 928
    .local v1, "hasOverlayActionMode":Z
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    # getter for: Landroid/app/QromActivity;->mActionModeOverLayBgIsBlur:Z
    invoke-static {v7}, Landroid/app/QromActivity;->access$300(Landroid/app/QromActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 930
    :try_start_2
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v8, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v9, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v8, v9}, Landroid/app/QromActivity;->takeSplitActionBarBlur(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v8

    # setter for: Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Landroid/app/QromActivity;->access$402(Landroid/app/QromActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 931
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    # getter for: Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Landroid/app/QromActivity;->access$400(Landroid/app/QromActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    # getter for: Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Landroid/app/QromActivity;->access$400(Landroid/app/QromActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 932
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v7, v7, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    # getter for: Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Landroid/app/QromActivity;->access$400(Landroid/app/QromActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 938
    :cond_4
    :goto_3
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    return-object v7

    .line 865
    .end local v1    # "hasOverlayActionMode":Z
    :cond_5
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-nez v7, :cond_6

    .line 866
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    invoke-virtual {v7}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 867
    new-instance v7, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v10, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 868
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v10, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    const v11, 0x7a0100d1

    invoke-direct {v7, v10, v12, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 870
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 871
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInsetDecor(Z)V

    .line 872
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 874
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 875
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 877
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 878
    .local v3, "heightValue":Landroid/util/TypedValue;
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 880
    iget v7, v3, Landroid/util/TypedValue;->data:I

    iget-object v10, p0, Landroid/app/QromActivity$QromContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 882
    .local v2, "height":I
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 883
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 884
    new-instance v7, Landroid/app/QromActivity$QromContentView$2;

    invoke-direct {v7, p0}, Landroid/app/QromActivity$QromContentView$2;-><init>(Landroid/app/QromActivity$QromContentView;)V

    iput-object v7, p0, Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 900
    .end local v2    # "height":I
    .end local v3    # "heightValue":Landroid/util/TypedValue;
    :cond_6
    :goto_4
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_2

    .line 901
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    .line 902
    new-instance v4, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;

    .end local v4    # "mode":Landroid/view/ActionMode;
    invoke-virtual {p0}, Landroid/app/QromActivity$QromContentView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_9

    move v7, v8

    :goto_5
    invoke-direct {v4, v10, v11, v6, v7}, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 904
    .restart local v4    # "mode":Landroid/view/ActionMode;
    invoke-virtual {v4}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 905
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 906
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 907
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v9}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 908
    iput-object v4, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    .line 909
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_7

    .line 910
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/app/QromActivity$QromContentView;->post(Ljava/lang/Runnable;)Z

    .line 912
    :cond_7
    iget-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_1

    .line 892
    :cond_8
    const v7, 0x1020310

    invoke-virtual {p0, v7}, Landroid/app/QromActivity$QromContentView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 894
    .local v5, "stub":Landroid/view/ViewStub;
    if-eqz v5, :cond_6

    .line 895
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iput-object v7, p0, Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    goto :goto_4

    .end local v4    # "mode":Landroid/view/ActionMode;
    .end local v5    # "stub":Landroid/view/ViewStub;
    :cond_9
    move v7, v9

    .line 902
    goto :goto_5

    .line 915
    .restart local v4    # "mode":Landroid/view/ActionMode;
    :cond_a
    iput-object v12, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_1

    .line 934
    .restart local v1    # "hasOverlayActionMode":Z
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hasOverlayActionMode":Z
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .line 858
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 844
    invoke-direct {p0, p1, p2}, Landroid/app/QromActivity$QromContentView;->qromStartActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 715
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 716
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 718
    .local v0, "action":I
    iget-object v2, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 719
    if-ne v0, v1, :cond_0

    .line 720
    iget-object v2, p0, Landroid/app/QromActivity$QromContentView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 734
    .end local v0    # "action":I
    :cond_0
    :goto_0
    return v1

    .line 726
    .restart local v0    # "action":I
    :cond_1
    iget-object v2, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v2, v2, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v2, v2, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 727
    if-ne v0, v1, :cond_0

    .line 728
    iget-object v2, p0, Landroid/app/QromActivity$QromContentView;->this$0:Landroid/app/QromActivity;

    iget-object v2, v2, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 734
    .end local v0    # "action":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
