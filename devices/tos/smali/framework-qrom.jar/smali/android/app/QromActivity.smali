.class public Landroid/app/QromActivity;
.super Landroid/app/Activity;
.source "QromActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QromActivity$DialogMenuCallback;,
        Landroid/app/QromActivity$QromContentView;,
        Landroid/app/QromActivity$PopupViewContainer;,
        Landroid/app/QromActivity$ManagedDialog;
    }
.end annotation


# static fields
.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final STATUSBAR_COLOR_BLACK:Ljava/lang/String; = "white"

.field public static final STATUSBAR_COLOR_WHITE:Ljava/lang/String; = "black"

.field private static final TAG:Ljava/lang/String; = "QromActivity"


# instance fields
.field mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

.field mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

.field private mActionModeOverLayBgIsBlur:Z

.field mActivityView:Landroid/view/View;

.field private mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

.field mContentParent:Landroid/view/ViewGroup;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Landroid/app/QromActivity$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;

.field private mHoloStatusBar:Z

.field private mLinearMode:Z

.field mListMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/QromActivity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field mMenuCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

.field mPhoneWindowContent:Landroid/view/ViewGroup;

.field mPopupMenuShow:Z

.field mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

.field mQromRootView:Landroid/app/QromActivity$QromContentView;

.field private mStatusBarOverlay:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleReady:Z

.field private mTopScreenBlurBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .line 125
    iput-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    .line 127
    iput-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    .line 128
    iput-object v0, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    .line 129
    iput-object v0, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    .line 130
    iput-object v0, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    .line 132
    iput-boolean v3, p0, Landroid/app/QromActivity;->mTitleReady:Z

    .line 136
    iput-boolean v3, p0, Landroid/app/QromActivity;->mActionModeOverLayBgIsBlur:Z

    .line 137
    iput-object v0, p0, Landroid/app/QromActivity;->mTopScreenBlurBitmap:Landroid/graphics/Bitmap;

    .line 138
    iput-object v0, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    .line 504
    new-instance v0, Landroid/app/QromActivity$1;

    invoke-direct {v0, p0}, Landroid/app/QromActivity$1;-><init>(Landroid/app/QromActivity;)V

    iput-object v0, p0, Landroid/app/QromActivity;->mMenuCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    .line 611
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    const v1, 0x7a030041

    const v2, 0x7a0f002c

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v0, p0, Landroid/app/QromActivity;->mListMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    .line 615
    iput-boolean v3, p0, Landroid/app/QromActivity;->mPopupMenuShow:Z

    .line 697
    new-instance v0, Landroid/app/QromActivity$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Landroid/app/QromActivity$DialogMenuCallback;-><init>(Landroid/app/QromActivity;I)V

    iput-object v0, p0, Landroid/app/QromActivity;->mContextMenuCallback:Landroid/app/QromActivity$DialogMenuCallback;

    .line 983
    return-void
.end method

.method static synthetic access$000(Landroid/app/QromActivity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/QromActivity;

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/QromActivity;->closePopupMenu()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/QromActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity;

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/app/QromActivity;->mActionModeOverLayBgIsBlur:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/QromActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromActivity;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/QromActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/QromActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    iput-object p1, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private closePopupMenu()V
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 564
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v1, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/QromActivity;->mPopupMenuShow:Z

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 571
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/QromActivity;->mPopupMenuShow:Z

    .line 573
    :cond_2
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0
.end method

.method private createPopupLayout()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 589
    .local v3, "wm":Landroid/view/WindowManager;
    if-nez v3, :cond_0

    .line 591
    const/4 v1, 0x0

    .line 609
    :goto_0
    return-object v1

    .line 593
    :cond_0
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 594
    .local v2, "width":I
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 595
    .local v0, "height":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 596
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 597
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 598
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 599
    invoke-virtual {p0}, Landroid/app/QromActivity;->getPopupViewContainer()Landroid/app/QromActivity$PopupViewContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/QromActivity$PopupViewContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 600
    const v4, 0x821002

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 605
    const/16 v4, 0x51

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 606
    const v4, 0x3f19999a    # 0.6f

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 607
    const v4, 0x7a0f00f0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method private createQromDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1090
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/QromActivity;->onCreateQromDialog(ILandroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    .line 1091
    .local v0, "dialog":Lcom/tencent/qrom/app/QromDialog;
    if-nez v0, :cond_0

    .line 1092
    const/4 v0, 0x0

    .line 1095
    .end local v0    # "dialog":Lcom/tencent/qrom/app/QromDialog;
    :goto_0
    return-object v0

    .line 1094
    .restart local v0    # "dialog":Lcom/tencent/qrom/app/QromDialog;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/app/QromDialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    .line 689
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/QromActivity;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 691
    iget-object v0, p0, Landroid/app/QromActivity;->mContextMenuHelper:Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/app/QromActivity;->mContextMenuHelper:Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/QromActivity;->mContextMenuHelper:Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :cond_0
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 5

    .prologue
    .line 1039
    const/4 v1, 0x0

    .line 1041
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-direct {p0}, Landroid/app/QromActivity;->qromGetPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/QromActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1047
    :goto_0
    return-object v2

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1045
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/app/QromActivity;->getQromContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 364
    .local v0, "qromContentView":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-nez v1, :cond_0

    .line 365
    new-instance v1, Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-boolean v2, p0, Landroid/app/QromActivity;->mStatusBarOverlay:Z

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;-><init>(Landroid/app/QromActivity;Z)V

    iput-object v1, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .line 367
    :cond_0
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/app/QromActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 371
    :cond_1
    return-void
.end method

.method private missingQromDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private qromGenerateContentParent()V
    .locals 15

    .prologue
    .line 159
    iget-object v10, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_9

    .line 161
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Landroid/app/QromActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 162
    .local v5, "layoutinflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    .line 163
    .local v3, "hasOverlayActionbar":Z
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    .line 164
    .local v2, "hasOverlayActionMode":Z
    iget-boolean v10, p0, Landroid/app/QromActivity;->mLinearMode:Z

    if-nez v10, :cond_2

    .line 165
    if-eqz v3, :cond_0

    .line 166
    const v10, 0x7a03001e

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    .line 177
    :goto_0
    iget-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    if-nez v10, :cond_3

    .line 179
    new-instance v10, Landroid/util/AndroidRuntimeException;

    const-string v11, "qromAddContentView qromActionbar creat fail"

    invoke-direct {v10, v11}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 167
    :cond_0
    if-eqz v2, :cond_1

    .line 168
    const v10, 0x7a03001f

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    goto :goto_0

    .line 170
    :cond_1
    const v10, 0x7a03001c

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    goto :goto_0

    .line 174
    :cond_2
    const v10, 0x7a03001d

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    goto :goto_0

    .line 181
    :cond_3
    iget-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    const v11, 0x1020002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    .line 182
    iget-object v10, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_4

    .line 184
    new-instance v10, Landroid/util/AndroidRuntimeException;

    const-string v11, "qromAddContentView no contenParent"

    invoke-direct {v10, v11}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    :cond_4
    iget-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    const v11, 0x7a0900e6

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/tencent/qrom/internal/widget/ActionBarView;

    iput-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    .line 187
    iget-object v11, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7a0a0018

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7a0d0003

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    :goto_1
    invoke-virtual {v11, v10}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setContentHeight(I)V

    .line 190
    iget-object v11, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    const/4 v12, 0x0

    iget-boolean v10, p0, Landroid/app/QromActivity;->mStatusBarOverlay:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7a0d0030

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPadding(IIII)V

    .line 192
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-nez v10, :cond_7

    .line 194
    new-instance v10, Landroid/util/AndroidRuntimeException;

    const-string v11, "qromAddContentView no mActionBarView"

    invoke-direct {v10, v11}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 187
    :cond_5
    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7a0d006c

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    goto :goto_1

    .line 190
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 198
    :cond_7
    sget-object v10, Lcom/tencent/qrom/R$styleable;->Theme:[I

    invoke-virtual {p0, v10}, Landroid/app/QromActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v10, 0x5d

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 200
    .local v9, "withActionBar":Z
    const-string v10, "QromActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "withActionBar = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez v9, :cond_8

    .line 202
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setVisibility(I)V

    .line 211
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "hasOverlayActionMode":Z
    .end local v3    # "hasOverlayActionbar":Z
    .end local v5    # "layoutinflater":Landroid/view/LayoutInflater;
    .end local v9    # "withActionBar":Z
    :cond_8
    :goto_3
    iget-object v10, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    if-nez v10, :cond_a

    .line 212
    new-instance v10, Landroid/app/QromActivity$QromContentView;

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Landroid/app/QromActivity$QromContentView;-><init>(Landroid/app/QromActivity;Landroid/content/Context;)V

    iput-object v10, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    .line 213
    iget-object v10, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    if-nez v10, :cond_b

    .line 214
    new-instance v10, Landroid/util/AndroidRuntimeException;

    const-string v11, "qromAddContentView mQromRootView creat fail"

    invoke-direct {v10, v11}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 208
    :cond_9
    iget-object v10, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 217
    :cond_a
    iget-object v10, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    invoke-virtual {v10}, Landroid/app/QromActivity$QromContentView;->removeAllViews()V

    .line 219
    :cond_b
    iget-object v10, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    iget-object v11, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/app/QromActivity$QromContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v10, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    if-nez v10, :cond_c

    .line 222
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    .line 223
    iget-object v10, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    if-nez v10, :cond_c

    .line 224
    new-instance v10, Landroid/util/AndroidRuntimeException;

    const-string v11, "qromAddContentView contentView creat fail"

    invoke-direct {v10, v11}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 227
    :cond_c
    iget-object v10, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    iget-object v10, p0, Landroid/app/QromActivity;->mPhoneWindowContent:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, "splitActionBar":Z
    const/4 v8, 0x0

    .line 233
    .local v8, "splitWhenNarrow":Z
    invoke-direct {p0}, Landroid/app/QromActivity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 234
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_d

    .line 235
    iget v10, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_e

    const/4 v8, 0x1

    .line 237
    :cond_d
    :goto_4
    if-eqz v8, :cond_f

    .line 238
    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7a0a0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 243
    :goto_5
    iget-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    const v11, 0x7a0900e9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    .line 245
    .local v7, "splitView":Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    if-eqz v7, :cond_10

    .line 246
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10, v7}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setSplitView(Lcom/tencent/qrom/internal/widget/ActionBarContainer;)V

    .line 247
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10, v6}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 248
    iget-object v10, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10, v8}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 249
    iget-object v10, p0, Landroid/app/QromActivity;->mActivityView:Landroid/view/View;

    const v11, 0x7a0900e8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 251
    .local v1, "cab":Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-virtual {v1, v7}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSplitView(Lcom/tencent/qrom/internal/widget/ActionBarContainer;)V

    .line 252
    invoke-virtual {v1, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 253
    invoke-virtual {v1, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 258
    .end local v1    # "cab":Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    :goto_6
    return-void

    .line 235
    .end local v7    # "splitView":Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    .line 241
    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    .line 255
    .restart local v7    # "splitView":Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    :cond_10
    const-string v10, "QromActivity"

    const-string v11, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private qromGetPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 1050
    invoke-virtual {p0}, Landroid/app/QromActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1051
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0, p0}, Landroid/app/QromActivity;->resetIPackageManager(Landroid/content/Context;)V

    .line 1053
    invoke-virtual {p0}, Landroid/app/QromActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1055
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 306
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Landroid/app/QromActivity;->qromGenerateContentParent()V

    .line 309
    :cond_0
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 314
    :cond_1
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 315
    return-void
.end method

.method public changeQromStatusBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1287
    const-string v0, "black"

    return-object v0
.end method

.method public closeContextMenu()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 682
    iget-object v0, p0, Landroid/app/QromActivity;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/app/QromActivity;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 684
    invoke-direct {p0}, Landroid/app/QromActivity;->dismissContextMenu()V

    .line 686
    :cond_0
    return-void
.end method

.method public final dismissQromDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1145
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1146
    invoke-direct {p0, p1}, Landroid/app/QromActivity;->missingQromDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 1149
    :cond_0
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/QromActivity$ManagedDialog;

    .line 1150
    .local v0, "md":Landroid/app/QromActivity$ManagedDialog;
    if-nez v0, :cond_1

    .line 1151
    invoke-direct {p0, p1}, Landroid/app/QromActivity;->missingQromDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 1153
    :cond_1
    iget-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 1154
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 555
    iget-object v0, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    invoke-virtual {v0, p1}, Landroid/app/QromActivity$QromContentView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method filterMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/app/QromActivity;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/app/QromActivity;->mMenuCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;)V

    .line 438
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/app/QromActivity;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 441
    :cond_0
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/app/QromActivity;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/QromActivity;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 446
    :cond_0
    iget-object v0, p0, Landroid/app/QromActivity;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/app/QromActivity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 395
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/QromActivity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 401
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/QromActivity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 398
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/QromActivity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method getPopupViewContainer()Landroid/app/QromActivity$PopupViewContainer;
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Landroid/app/QromActivity$PopupViewContainer;

    invoke-direct {v0, p0, p0}, Landroid/app/QromActivity$PopupViewContainer;-><init>(Landroid/app/QromActivity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    .line 581
    iget-object v0, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    const v1, 0x7a0202a4

    invoke-virtual {v0, v1}, Landroid/app/QromActivity$PopupViewContainer;->setBackgroundResource(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/app/QromActivity;->mPopupViewContainer:Landroid/app/QromActivity$PopupViewContainer;

    return-object v0
.end method

.method public getQromActionBar()Lcom/tencent/qrom/app/ActionBar;
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 374
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    return-object v0
.end method

.method public final getQromContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Landroid/app/QromActivity;->qromGenerateContentParent()V

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 675
    invoke-virtual {p0}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/app/QromActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/QromActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 677
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 452
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 453
    invoke-virtual {p0}, Landroid/app/QromActivity;->setStatusBarOverlay()V

    .line 456
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/QromActivity;->requestWindowFeature(I)Z

    .line 457
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 458
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 422
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onCreateQromDialog(I)Lcom/tencent/qrom/app/QromDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateQromDialog(ILandroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1179
    invoke-virtual {p0, p1}, Landroid/app/QromActivity;->onCreateQromDialog(I)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1102
    iget-object v4, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 1103
    iget-object v4, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1104
    .local v3, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1105
    iget-object v4, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/QromActivity$ManagedDialog;

    .line 1106
    .local v2, "md":Landroid/app/QromActivity$ManagedDialog;
    iget-object v4, v2, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/QromDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1107
    iget-object v4, v2, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 1104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    .end local v2    # "md":Landroid/app/QromActivity$ManagedDialog;
    :cond_1
    iput-object v5, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1112
    .end local v1    # "i":I
    .end local v3    # "numDialogs":I
    :cond_2
    iget-boolean v4, p0, Landroid/app/QromActivity;->mActionModeOverLayBgIsBlur:Z

    if-eqz v4, :cond_3

    .line 1114
    :try_start_0
    iget-object v4, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1115
    iget-object v4, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1116
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/QromActivity;->mBottomScreenBlurBitmap:Landroid/graphics/Bitmap;

    .line 1117
    const-string v4, "maczhang"

    const-string v5, "onDestroy() mBottomScreenBlurBitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_3
    :goto_1
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 323
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 324
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 528
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 522
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/app/QromActivity;->mPopupMenuShow:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->isMultiMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/QromActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 533
    packed-switch p1, :pswitch_data_0

    .line 549
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 535
    :pswitch_0
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isOverflowButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/app/QromActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/QromActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 546
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_1

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 377
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 378
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 379
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 385
    :cond_0
    :goto_0
    return v2

    .line 382
    :cond_1
    const-string v0, "QromActivity"

    const-string v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 388
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 389
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 390
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 500
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMarksPointFlag:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Landroid/app/QromActivity;->closePopupMenu()V

    .line 503
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Landroid/app/QromActivity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/QromActivity;->mTitleReady:Z

    .line 331
    invoke-virtual {p0}, Landroid/app/QromActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/QromActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 333
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 426
    invoke-virtual {p0, p3}, Landroid/app/QromActivity;->filterMenu(Landroid/view/Menu;)V

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareQromDialog(ILcom/tencent/qrom/app/QromDialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Lcom/tencent/qrom/app/QromDialog;

    .prologue
    .line 1183
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/qrom/app/QromDialog;->setBottomButtonsStartAnimation(Z)V

    .line 1184
    invoke-virtual {p2, p0}, Lcom/tencent/qrom/app/QromDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1185
    return-void
.end method

.method protected onPrepareQromDialog(ILcom/tencent/qrom/app/QromDialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Lcom/tencent/qrom/app/QromDialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1188
    invoke-virtual {p0, p1, p2}, Landroid/app/QromActivity;->onPrepareQromDialog(ILcom/tencent/qrom/app/QromDialog;)V

    .line 1189
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, "isThemeChanged":Z
    const-string v6, "persist.sys.theme"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 464
    .local v3, "isDefaultTheme":Z
    if-nez v3, :cond_0

    .line 465
    invoke-direct {p0}, Landroid/app/QromActivity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 466
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    .line 467
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qrom/theme/QromThemeApkChangedInfo;->themeChangeEnable(Ljava/lang/String;)Z

    move-result v4

    .line 473
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/QromActivity;->invalidateOptionsMenu()V

    .line 474
    invoke-virtual {p0}, Landroid/app/QromActivity;->getQromActionBar()Lcom/tencent/qrom/app/ActionBar;

    move-result-object v5

    .line 475
    .local v5, "mActionBar":Lcom/tencent/qrom/app/ActionBar;
    if-eqz v5, :cond_5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-le v6, v7, :cond_5

    .line 476
    iget-boolean v6, p0, Landroid/app/QromActivity;->mHoloStatusBar:Z

    if-eqz v6, :cond_3

    .line 477
    const-string v6, "black"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    .line 496
    :cond_1
    :goto_1
    return-void

    .line 469
    .end local v5    # "mActionBar":Lcom/tencent/qrom/app/ActionBar;
    .restart local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 480
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "mActionBar":Lcom/tencent/qrom/app/ActionBar;
    :cond_3
    invoke-virtual {p0}, Landroid/app/QromActivity;->getQromActionBar()Lcom/tencent/qrom/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/qrom/app/ActionBar;->getBackgroundResId()I

    move-result v1

    .line 481
    .local v1, "id":I
    const v6, 0x7a020005

    if-ne v1, v6, :cond_4

    .line 482
    const-string v6, "white"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    goto :goto_1

    .line 483
    :cond_4
    const v6, 0x7a0202a5

    if-ne v1, v6, :cond_1

    .line 484
    const-string v6, "black"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    goto :goto_1

    .line 487
    .end local v1    # "id":I
    :cond_5
    invoke-virtual {p0}, Landroid/app/QromActivity;->changeQromStatusBarColor()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v6, "black"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 489
    const-string v6, "black"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    goto :goto_1

    .line 490
    :cond_6
    if-eqz v0, :cond_7

    const-string v6, "white"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 491
    const-string v6, "white"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    goto :goto_1

    .line 493
    :cond_7
    const-string v6, "black"

    invoke-virtual {p0, v6, v4}, Landroid/app/QromActivity;->sendStatusBarBroadcast(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 433
    invoke-direct {p0}, Landroid/app/QromActivity;->closePopupMenu()V

    .line 434
    invoke-virtual {p0}, Landroid/app/QromActivity;->closeContextMenu()V

    .line 435
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 338
    iget-boolean v1, p0, Landroid/app/QromActivity;->mTitleReady:Z

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 340
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 348
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 411
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromActivity;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/widget/ActionBarView;->mIsMarksPointFlag:Z

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/app/QromActivity;->invalidateOptionsMenu()V

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/app/QromActivity;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeQromDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1162
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1163
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/QromActivity$ManagedDialog;

    .line 1164
    .local v0, "md":Landroid/app/QromActivity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 1165
    iget-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 1166
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1169
    .end local v0    # "md":Landroid/app/QromActivity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public resetIPackageManager(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1059
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/content/ContextWrapper;

    if-eqz v13, :cond_0

    .line 1060
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 1065
    .local v4, "contextImpl":Landroid/content/Context;
    :try_start_0
    const-string v13, "android.app.ActivityThread"

    invoke-static {v13}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1066
    .local v1, "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "sPackageManager"

    invoke-static {v1, v13}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1067
    .local v6, "field1":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v6, v14}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 1068
    const-string v13, "android.app.ContextImpl"

    invoke-static {v13}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1069
    .local v2, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "mPackageManager"

    invoke-static {v2, v13}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1070
    .local v7, "field2":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    invoke-static {v4, v7, v13}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 1071
    const-string v13, "android.os.ServiceManager"

    invoke-static {v13}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1072
    .local v3, "clazz3":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "sServiceManager"

    invoke-static {v3, v13}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1073
    .local v8, "field3":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Lcom/tencent/qrom/utils/ReflectUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 1074
    const-string v13, "sCache"

    const/4 v14, 0x0

    invoke-static {v13, v14, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1075
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz v9, :cond_0

    .line 1076
    const-string v13, "package"

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    .line 1077
    .local v12, "oldValue":Landroid/os/IBinder;
    if-eqz v12, :cond_0

    .line 1078
    const-string v13, "getService"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v3, v13, v14}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1079
    .local v10, "method1":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "package"

    aput-object v16, v14, v15

    invoke-static {v10, v13, v14}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 1080
    .local v11, "newValue":Landroid/os/IBinder;
    if-eqz v11, :cond_0

    .line 1081
    const-string v13, "package"

    invoke-virtual {v9, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v1    # "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazz3":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contextImpl":Landroid/content/Context;
    .end local v6    # "field1":Ljava/lang/reflect/Field;
    .end local v7    # "field2":Ljava/lang/reflect/Field;
    .end local v8    # "field3":Ljava/lang/reflect/Field;
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v10    # "method1":Ljava/lang/reflect/Method;
    .end local v11    # "newValue":Landroid/os/IBinder;
    .end local v12    # "oldValue":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1085
    .restart local v4    # "contextImpl":Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 1086
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStatusBarBroadcast(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "isThemeChanged"    # Z

    .prologue
    .line 1191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1192
    .local v0, "status_intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const-string v1, "qrom.systemui.statusbar.theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    const-string v1, "color"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const-string v1, "isThemeChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1197
    const-string v1, "windowType"

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-string v1, "windowFlag"

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    invoke-virtual {p0, v0}, Landroid/app/QromActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1200
    return-void
.end method

.method public setActionModeOverLayBgBlur(Z)V
    .locals 0
    .param p1, "isBlur"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Landroid/app/QromActivity;->mActionModeOverLayBgIsBlur:Z

    .line 1207
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 271
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 272
    invoke-direct {p0}, Landroid/app/QromActivity;->qromGenerateContentParent()V

    .line 276
    :goto_0
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 277
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 281
    :cond_0
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 282
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 286
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/QromActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 291
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 292
    invoke-direct {p0}, Landroid/app/QromActivity;->qromGenerateContentParent()V

    .line 296
    :goto_0
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 301
    :cond_0
    invoke-direct {p0}, Landroid/app/QromActivity;->initActionBar()V

    .line 302
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Landroid/app/QromActivity;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setHoloStatusBar()V
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/QromActivity;->mHoloStatusBar:Z

    .line 1292
    return-void
.end method

.method public setLinearMode(Z)V
    .locals 0
    .param p1, "linearMode"    # Z

    .prologue
    .line 1282
    iput-boolean p1, p0, Landroid/app/QromActivity;->mLinearMode:Z

    .line 1283
    return-void
.end method

.method public setStatusBarOverlay()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/QromActivity;->mStatusBarOverlay:Z

    .line 1204
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Landroid/app/QromActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/QromActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/app/QromActivity;->mTitle:Ljava/lang/CharSequence;

    .line 353
    invoke-virtual {p0}, Landroid/app/QromActivity;->getTitleColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/QromActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public final showQromDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/QromActivity;->showQromDialog(ILandroid/os/Bundle;)Z

    .line 1173
    return-void
.end method

.method public final showQromDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1125
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1126
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1128
    :cond_0
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/QromActivity$ManagedDialog;

    .line 1129
    .local v0, "md":Landroid/app/QromActivity$ManagedDialog;
    if-nez v0, :cond_2

    .line 1130
    new-instance v0, Landroid/app/QromActivity$ManagedDialog;

    .end local v0    # "md":Landroid/app/QromActivity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/QromActivity$ManagedDialog;-><init>(Landroid/app/QromActivity$1;)V

    .line 1131
    .restart local v0    # "md":Landroid/app/QromActivity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/QromActivity;->createQromDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 1132
    iget-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-nez v1, :cond_1

    .line 1133
    const/4 v1, 0x0

    .line 1141
    :goto_0
    return v1

    .line 1135
    :cond_1
    iget-object v1, p0, Landroid/app/QromActivity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    :cond_2
    iput-object p2, v0, Landroid/app/QromActivity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1139
    iget-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/QromActivity;->onPrepareQromDialog(ILcom/tencent/qrom/app/QromDialog;Landroid/os/Bundle;)V

    .line 1140
    iget-object v1, v0, Landroid/app/QromActivity$ManagedDialog;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->show()V

    .line 1141
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/app/QromActivity;->mQromRootView:Landroid/app/QromActivity$QromContentView;

    invoke-virtual {v0, p1}, Landroid/app/QromActivity$QromContentView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public takeActionBarBlur(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1247
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    .line 1248
    .local v17, "view":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1249
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->buildDrawingCache()V

    .line 1250
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1251
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1252
    .local v14, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1253
    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 1255
    .local v15, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1256
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 1257
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7a0d0030

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v5, v2, v3

    .line 1258
    .local v5, "topHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1259
    .local v16, "topDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1261
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1262
    .local v6, "matrix":Landroid/graphics/Matrix;
    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1264
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1266
    .local v8, "bitmap2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1267
    .local v11, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1268
    const/16 v2, 0x1f

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 1269
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 1270
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->destroyDrawingCache()V

    .line 1272
    new-instance v10, Lcom/tencent/qrom/gaussblur/JNIBlur;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    .line 1273
    .local v10, "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    const/4 v2, 0x1

    invoke-virtual {v10, v8, v2}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1277
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    .end local v5    # "topHeight":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v10    # "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v13    # "height":I
    .end local v14    # "rect":Landroid/graphics/Rect;
    .end local v15    # "statusBarHeight":I
    .end local v16    # "topDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "view":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1275
    :catch_0
    move-exception v12

    .line 1276
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1277
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public takeSplitActionBarBlur(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1211
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    .line 1212
    .local v17, "view":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1213
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->buildDrawingCache()V

    .line 1214
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1215
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1216
    .local v15, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1217
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1219
    .local v16, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1220
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 1221
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1222
    .local v5, "bottomHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/QromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0202a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1223
    .local v11, "bottomDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1225
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1226
    .local v6, "matrix":Landroid/graphics/Matrix;
    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1228
    const/4 v2, 0x0

    sub-int v3, v14, v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1230
    .local v8, "bitmap2":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1231
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1232
    const/16 v2, 0x1f

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 1233
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 1234
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->destroyDrawingCache()V

    .line 1236
    new-instance v10, Lcom/tencent/qrom/gaussblur/JNIBlur;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    .line 1237
    .local v10, "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    const/4 v2, 0x1

    invoke-virtual {v10, v8, v2}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1241
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    .end local v5    # "bottomHeight":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v10    # "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    .end local v11    # "bottomDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "height":I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v16    # "statusBarHeight":I
    .end local v17    # "view":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1239
    :catch_0
    move-exception v13

    .line 1240
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1241
    const/4 v9, 0x0

    goto :goto_0
.end method
