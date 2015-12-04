.class public Lcom/tencent/qrom/internal/app/ActionBarImpl;
.super Lcom/tencent/qrom/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;,
        Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActionBarImpl"


# instance fields
.field mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionModeSimple:I

.field private mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

.field private mActivity:Landroid/app/QromActivity;

.field private mBarHideListener:Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

.field private mBarShowListener:Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;

.field mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

.field private mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field private mCurrentModeAnim:Landroid/animation/Animator;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Lcom/tencent/qrom/app/QromDialog;

.field private mFloatView:Lcom/tencent/qrom/widget/FloatView;

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field final mHideTopListener:Landroid/animation/Animator$AnimatorListener;

.field private mImageType:I

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModeFinishListener:Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

.field public mOverflowButtonState:Z

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field final mShowTopListener:Landroid/animation/Animator$AnimatorListener;

.field private mSplitBlurListener:Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

.field private final mSplitContextHideAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private final mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private final mSplitShowAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

.field private mStatusBarOverlay:Z

.field private mTabHasTitle:Z

.field private mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field mWasHiddenBeforeMode:Z

.field final qromSplitShowListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/app/QromActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/QromActivity;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;-><init>(Landroid/app/QromActivity;Z)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/app/QromActivity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/QromActivity;
    .param p2, "isStatusBarOverlay"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 261
    invoke-direct {p0}, Lcom/tencent/qrom/app/ActionBar;-><init>()V

    .line 82
    iput-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    .line 83
    iput-boolean v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mStatusBarOverlay:Z

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 131
    iput-boolean v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    .line 134
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitShowAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 149
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitContextHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    iput-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    .line 190
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 211
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 226
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 244
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 846
    iput v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mImageType:I

    .line 847
    iput v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionModeSimple:I

    .line 1139
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->qromSplitShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 262
    iput-boolean p2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mStatusBarOverlay:Z

    .line 263
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    .line 264
    invoke-virtual {p1}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 265
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->init(Landroid/view/View;)I

    .line 267
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    invoke-virtual {v2}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 270
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    .line 271
    iput-boolean v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    .line 272
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/app/QromDialog;)V
    .locals 4
    .param p1, "dialog"    # Lcom/tencent/qrom/app/QromDialog;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Lcom/tencent/qrom/app/ActionBar;-><init>()V

    .line 82
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    .line 83
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mStatusBarOverlay:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 131
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    .line 134
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitShowAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 149
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitContextHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    .line 190
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 211
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 226
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 244
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 846
    iput v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mImageType:I

    .line 847
    iput v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionModeSimple:I

    .line 1139
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->qromSplitShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 275
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 276
    invoke-virtual {p1}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->init(Landroid/view/View;)I

    .line 278
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7a0a0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7a0d0030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPadding(IIII)V

    .line 282
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public constructor <init>(Lcom/tencent/qrom/widget/FloatView;)V
    .locals 3
    .param p1, "floatView"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Lcom/tencent/qrom/app/ActionBar;-><init>()V

    .line 82
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    .line 83
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mStatusBarOverlay:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 131
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    .line 134
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$1;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitShowAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 149
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$2;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$3;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitContextHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    .line 190
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$4;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 211
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$5;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 226
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$6;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 244
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$7;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowTopListener:Landroid/animation/Animator$AnimatorListener;

    .line 846
    iput v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mImageType:I

    .line 847
    iput v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionModeSimple:I

    .line 1139
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$8;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->qromSplitShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 286
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mFloatView:Lcom/tencent/qrom/widget/FloatView;

    .line 287
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->init(Landroid/view/View;)I

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarShowListener:Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitBlurListener:Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mModeFinishListener:Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/internal/app/ActionBarImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarHideListener:Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

    return-object v0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 746
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 749
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 750
    return-void
.end method

.method private configureTab(Lcom/tencent/qrom/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 867
    move-object v3, p1

    check-cast v3, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    .line 868
    .local v3, "tabi":Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/tencent/qrom/app/ActionBar$TabListener;

    move-result-object v0

    .line 870
    .local v0, "callback":Lcom/tencent/qrom/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 871
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 874
    :cond_0
    invoke-virtual {v3, p2}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 875
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 877
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 878
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 879
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 878
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 378
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x1

    .line 351
    .local v0, "tabMode":I
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mStatusBarOverlay:Z

    if-eqz v3, :cond_2

    .line 352
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    if-eqz v3, :cond_1

    .line 353
    const/4 v0, 0x4

    .line 365
    :goto_1
    new-instance v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    .line 368
    .local v1, "tabScroller":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v3, :cond_4

    .line 369
    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    .line 376
    :goto_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setContextView(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V

    .line 377
    iput-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 355
    .end local v1    # "tabScroller":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    .line 358
    :cond_2
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    if-eqz v3, :cond_3

    .line 359
    const/4 v0, 0x2

    goto :goto_1

    .line 361
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 372
    .restart local v1    # "tabScroller":Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTabContainer(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    goto :goto_2

    .line 372
    :cond_5
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private init(Landroid/view/View;)I
    .locals 4
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 294
    const v0, 0x7a0900e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    .line 295
    const v0, 0x7a0900e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 297
    const v0, 0x7a0900e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    .line 299
    const v0, 0x7a0900e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    .line 302
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 319
    :goto_0
    return v1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewDialog(Lcom/tencent/qrom/app/QromDialog;)V

    .line 308
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setContextView(Lcom/tencent/qrom/internal/widget/ActionBarContextView;)V

    .line 309
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setSplitView(Lcom/tencent/qrom/internal/widget/ActionBarContainer;)V

    .line 310
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSplitView(Lcom/tencent/qrom/internal/widget/ActionBarContainer;)V

    .line 311
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 316
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7a0a0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 311
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 331
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    .line 333
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTabContainer(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 339
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 340
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-boolean v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 343
    return-void

    .line 335
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTabContainer(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    .line 336
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 338
    goto :goto_1

    .line 340
    .restart local v0    # "isInTabMode":Z
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    move v1, v2

    .line 342
    goto :goto_3
.end method


# virtual methods
.method public actionModeManualFinish()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 863
    :cond_0
    return-void
.end method

.method public addOnMenuVisibilityListener(Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->addTab(Lcom/tencent/qrom/app/ActionBar$Tab;Z)V

    .line 886
    return-void
.end method

.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 890
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->addTab(Lcom/tencent/qrom/app/ActionBar$Tab;IZ)V

    .line 891
    return-void
.end method

.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 906
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->addTab(Lcom/tencent/qrom/app/ActionBar$Tab;IZ)V

    .line 907
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->configureTab(Lcom/tencent/qrom/app/ActionBar$Tab;I)V

    .line 908
    if-eqz p3, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 911
    :cond_0
    return-void
.end method

.method public addTab(Lcom/tencent/qrom/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 896
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->addTab(Lcom/tencent/qrom/app/ActionBar$Tab;Z)V

    .line 897
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->configureTab(Lcom/tencent/qrom/app/ActionBar$Tab;I)V

    .line 898
    if-eqz p2, :cond_0

    .line 899
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 901
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 11
    .param p1, "toActionMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/16 v4, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1302
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 1303
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 1305
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1306
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7a0d0010

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1307
    .local v1, "animaHeight":I
    if-eqz p1, :cond_5

    .line 1308
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->show(Z)V

    .line 1309
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1310
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const-string v6, "translationY"

    new-array v7, v7, [F

    neg-int v8, v1

    int-to-float v8, v8

    aput v8, v7, v5

    aput v10, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1312
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    .line 1313
    iget v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-eq v3, v9, :cond_4

    .line 1314
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1315
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    int-to-float v6, v1

    invoke-virtual {v3, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1316
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v6, "translationY"

    new-array v7, v9, [F

    aput v10, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1321
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitShowAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1339
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-eqz p1, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->animateToVisibility(I)V

    .line 1340
    iget-object v6, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_8

    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 1341
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1342
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_9

    :goto_4
    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    .line 1344
    :cond_3
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1345
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1346
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1347
    return-void

    .line 1318
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->playSplitMenuInAnimation()V

    goto :goto_0

    .line 1323
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const-string v6, "translationY"

    new-array v7, v7, [F

    aput v10, v7, v5

    neg-int v8, v1

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1325
    .restart local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    .line 1326
    iget v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-eq v3, v9, :cond_6

    .line 1327
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v10}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1328
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v6, "translationY"

    new-array v7, v9, [F

    int-to-float v8, v1

    aput v8, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1329
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1331
    :cond_6
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitContextHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1332
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->splitActionbarIsHide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1333
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->splitActionbar_show()V

    goto/16 :goto_1

    :cond_7
    move v3, v5

    .line 1339
    goto :goto_2

    :cond_8
    move v3, v4

    .line 1340
    goto :goto_3

    :cond_9
    move v4, v5

    .line 1342
    goto :goto_4
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 383
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 384
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 386
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 411
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 420
    :cond_0
    return-void

    .line 414
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    .line 416
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 417
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public enableTabClick(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 571
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->enableTabClick(Z)V

    .line 572
    return-void
.end method

.method public exitMiniMode()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->exitMiniMode()Z

    move-result v0

    return v0
.end method

.method public getActionBarHome()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getActionBarHome()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public getActionBarView()Lcom/tencent/qrom/internal/widget/ActionBarView;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    return-object v0
.end method

.method public getBackgroundResId()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getPrimaryBackgroundResId()I

    move-result v0

    return v0
.end method

.method public getBottomBarHeight()I
    .locals 3

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1736
    .local v0, "height":I
    return v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getCloseView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCloseView(Z)Landroid/view/View;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getCloseView()Landroid/view/View;

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getCloseView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getEditView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getEditView(Z)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEditView(Z)Landroid/widget/EditText;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getEditView()Landroid/widget/EditText;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getEditView()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMultiChoiceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getMultiChoiceView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMultiChoiceView(Z)Landroid/view/View;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getMultiChoiceView()Lcom/tencent/qrom/widget/ToggleButton;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getMultiChoiceView()Lcom/tencent/qrom/widget/ToggleButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1674
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1672
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1670
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getOverflowButton(Z)Landroid/view/View;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1660
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1664
    :cond_0
    :goto_0
    return v0

    .line 1662
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1660
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleView(Z)Landroid/widget/TextView;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public getTabAt(I)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 1350
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1351
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1352
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1353
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x7a0100c0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1355
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1357
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 1358
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 1363
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 1360
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView(Z)Landroid/widget/TextView;
    .locals 1
    .param p1, "isActionMode"    # Z

    .prologue
    .line 654
    if-eqz p1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public hide()V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1043
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1092
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v2, :cond_8

    .line 1054
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v11}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1055
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarHideNoAnim:Z

    if-eqz v2, :cond_3

    .line 1056
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1058
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v10}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 1059
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1060
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v10, [F

    aput v8, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1062
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1063
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v8, v4, v9

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1067
    :cond_4
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarAnimTrans:Z

    if-eqz v2, :cond_5

    .line 1068
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    invoke-virtual {v2}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 1069
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v8, v4, v9

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0d0030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1073
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v10, [F

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1076
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1077
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v11}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1078
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarHideNoAnim:Z

    if-eqz v2, :cond_6

    .line 1079
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1080
    iput-boolean v9, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarHideNoAnim:Z

    .line 1082
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v10, [F

    aput v8, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1083
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1084
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v10, [F

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1086
    :cond_7
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1087
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1088
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1090
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    :cond_8
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method public isMultiMode()Z
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 915
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7a0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 326
    return-void
.end method

.method public qromGetBackOnclickEnabled()Z
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->qromGetBackOnclickEnabled()Z

    move-result v0

    return v0
.end method

.method public qromSetActionBarTabHasTitle(Z)V
    .locals 0
    .param p1, "hasTitle"    # Z

    .prologue
    .line 1754
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabHasTitle:Z

    .line 1755
    return-void
.end method

.method public qromSetActionModeBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->qromSetActionModeBackOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1750
    return-void
.end method

.method public qromSetBackOnclickEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->qromSetBackOnclickEnabled(Z)V

    .line 1742
    return-void
.end method

.method public qromSetPageScroll(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 465
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->qromSetPageScroll(IF)V

    .line 468
    :cond_0
    return-void
.end method

.method public qromSetScrollEnd()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->qromSetScrollEnd()V

    .line 475
    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->cleanupTabs()V

    .line 739
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public removeTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;

    .prologue
    .line 920
    invoke-virtual {p1}, Lcom/tencent/qrom/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 921
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 925
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 932
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 933
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    .line 934
    .local v2, "removedTab":Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 935
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 938
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 939
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 940
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 930
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 943
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 944
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 950
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 951
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qrom/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 977
    .end local p1    # "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 955
    .restart local p1    # "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    invoke-virtual {v2}, Landroid/app/QromActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 958
    .local v0, "trans":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 959
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 960
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/tencent/qrom/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qrom/app/ActionBar$TabListener;->onTabReselected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 961
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/tencent/qrom/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 974
    .end local p1    # "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 975
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 964
    .restart local p1    # "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/qrom/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 965
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    .line 966
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/tencent/qrom/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qrom/app/ActionBar$TabListener;->onTabUnselected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 968
    :cond_6
    check-cast p1, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    .end local p1    # "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    .line 969
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 970
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/tencent/qrom/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSelectedTab:Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qrom/app/ActionBar$TabListener;->onTabSelected(Lcom/tencent/qrom/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setActionBarAnimTrans(Z)V
    .locals 0
    .param p1, "animTrans"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarAnimTrans:Z

    .line 593
    return-void
.end method

.method public setActionBarBGColor(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 645
    return-void
.end method

.method public setActionBarHideListener(Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarHideListener:Lcom/tencent/qrom/app/ActionBar$ActionBarHideListener;

    .line 583
    return-void
.end method

.method public setActionBarHideNoAnim(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarHideNoAnim:Z

    .line 598
    return-void
.end method

.method public setActionBarShowListener(Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mBarShowListener:Lcom/tencent/qrom/app/ActionBar$ActionBarShowListener;

    .line 578
    return-void
.end method

.method public setActionModeBGColor(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setBackgroundResource(I)V

    .line 650
    return-void
.end method

.method public setActionModeCallback(Lcom/tencent/qrom/app/ActionBar$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/tencent/qrom/app/ActionBar$Callback;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCallBack:Lcom/tencent/qrom/app/ActionBar$Callback;

    .line 188
    return-void
.end method

.method public setActionModeFinishListener(Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mModeFinishListener:Lcom/tencent/qrom/app/ActionBar$ActionModeFinishListener;

    .line 588
    return-void
.end method

.method public setActionModeSimple(I)V
    .locals 0
    .param p1, "modeType"    # I

    .prologue
    .line 856
    iput p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionModeSimple:I

    .line 857
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 771
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1646
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/tencent/qrom/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/tencent/qrom/app/ActionBar$LayoutParams;

    .prologue
    .line 1650
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1652
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 439
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 762
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 765
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 766
    .local v0, "current":I
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 767
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 449
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 450
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 434
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 435
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 444
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 445
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 429
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEmbededTabEnable(Z)V
    .locals 0
    .param p1, "tabEnable"    # Z

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 1179
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewActivity(Landroid/app/Activity;Z)V

    .line 456
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewDialog(Lcom/tencent/qrom/app/QromDialog;)V

    .line 458
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 459
    return-void
.end method

.method public setHomeButtonEnabledQQ(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHomeButtonIconEnabled(Z)V

    .line 1151
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewActivity(Landroid/app/Activity;Z)V

    .line 1152
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewDialog(Lcom/tencent/qrom/app/QromDialog;)V

    .line 1153
    return-void
.end method

.method public setHomeButtonIconEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1157
    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayShowHomeEnabled(Z)V

    .line 1160
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 1161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewActivity(Landroid/app/Activity;Z)V

    .line 1164
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setActionbarViewDialog(Lcom/tencent/qrom/app/QromDialog;)V

    .line 1165
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1715
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1719
    return-void
.end method

.method public setIsTransPopup(ZZ)V
    .locals 1
    .param p1, "isActionMode"    # Z
    .param p2, "isTransPopup"    # Z

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setIsTransPopup(Z)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setIsTransPopup(Z)V

    goto :goto_0
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/tencent/qrom/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lcom/tencent/qrom/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1656
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1723
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1727
    return-void
.end method

.method public setMenuConfigFlag(Z)V
    .locals 1
    .param p1, "isConfig"    # Z

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setMenuConfigFlag(Z)V

    .line 566
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1685
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 1686
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1693
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 1694
    packed-switch p1, :pswitch_data_1

    .line 1704
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 1705
    return-void

    .line 1688
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 1689
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 1690
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1696
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 1697
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1698
    iget v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v2, v4, :cond_0

    .line 1699
    iget v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 1700
    iput v4, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1694
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOverflowButtonState(ZZ)V
    .locals 1
    .param p1, "isActionMode"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setOverflowButtonState(Z)V

    .line 696
    :goto_0
    if-eqz p2, :cond_1

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    .line 700
    :goto_1
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setOverflowButtonState(Z)V

    goto :goto_0

    .line 699
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    goto :goto_1
.end method

.method public setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;
    .param p2, "isActionMode"    # Z

    .prologue
    .line 488
    if-eqz p2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V

    goto :goto_0
.end method

.method public setOverflowDelay(ZZ)V
    .locals 1
    .param p1, "isActionMode"    # Z
    .param p2, "isDelay"    # Z

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setOverflowDelay(Z)V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setOverflowDelay(Z)V

    goto :goto_0
.end method

.method public setPopupMenuMarks(Z[Z)V
    .locals 1
    .param p1, "isActionMode"    # Z
    .param p2, "isMarks"    # [Z

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setPopupMenuMarks([Z)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPopupMenuMarks([Z)V

    goto :goto_0
.end method

.method public setPopupTextColors(Z[I)V
    .locals 1
    .param p1, "isActionMode"    # Z
    .param p2, "textColors"    # [I

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setPopupTextColors([I)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPopupTextColors([I)V

    goto :goto_0
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 732
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 735
    :goto_0
    return-void

    .line 729
    :pswitch_2
    const-string v0, "ActionBarImpl"

    const-string v1, "the current mode is NAVIGATION_MODE_STANDARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 397
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 400
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 784
    :cond_0
    return-void
.end method

.method public setSplitBlurListener(Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitBlurListener:Lcom/tencent/qrom/app/ActionBar$SplitBlurListener;

    .line 483
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 778
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 758
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 754
    return-void
.end method

.method public setTopOverflowButtonState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTopOverflowButtonState(Z)V

    .line 705
    if-eqz p1, :cond_0

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mOverflowButtonState:Z

    goto :goto_0
.end method

.method public setTopOverflowDelay(Z)V
    .locals 1
    .param p1, "isDelay"    # Z

    .prologue
    .line 558
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTopOverflowDelay(Z)V

    .line 559
    return-void
.end method

.method public setUserCloseImageType(I)V
    .locals 0
    .param p1, "imageType"    # I

    .prologue
    .line 851
    iput p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mImageType:I

    .line 852
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->show(Z)V

    .line 992
    return-void
.end method

.method show(Z)V
    .locals 12
    .param p1, "markHiddenBeforeMode"    # Z

    .prologue
    const/4 v6, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 995
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 999
    if-eqz p1, :cond_1

    iput-boolean v8, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    .line 1039
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1004
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v2, :cond_6

    .line 1005
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1006
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1007
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v10, [F

    aput v11, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1009
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1010
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    aput v9, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1014
    :cond_3
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionBarAnimTrans:Z

    if-eqz v2, :cond_4

    .line 1015
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActivity:Landroid/app/QromActivity;

    invoke-virtual {v2}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 1016
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v9, v4, v8

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0d0030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1021
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1022
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v10, [F

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1024
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, v10, :cond_5

    .line 1025
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1026
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1027
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1028
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v10, [F

    aput v11, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1029
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v10, [F

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1031
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1032
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1033
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1035
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v11}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1036
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v9}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1037
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method public splitActionbarIsHide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1196
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitActionbar_Init(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1184
    if-nez p1, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1189
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1190
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 1192
    :cond_1
    return-void
.end method

.method public splitActionbar_hide()V
    .locals 8

    .prologue
    .line 1231
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 1232
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 1234
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1241
    .local v1, "animaHeight":I
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1242
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1243
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    int-to-float v7, v1

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1246
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitHideAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1247
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1248
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1249
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public splitActionbar_show()V
    .locals 8

    .prologue
    .line 1206
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 1207
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 1209
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1227
    :cond_1
    :goto_0
    return-void

    .line 1215
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0d0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1217
    .local v1, "animaHeight":I
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 1218
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1219
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    neg-int v7, v1

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1222
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->qromSplitShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1223
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1224
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1225
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 6
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, "wasHidden":Z
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v2, :cond_0

    .line 810
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    .line 811
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 816
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionModeSimple:I

    if-eqz v2, :cond_1

    .line 818
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 819
    .local v0, "mode":Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 820
    iput-boolean v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    .line 821
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 822
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    move-object v2, v0

    .line 844
    :goto_0
    return-object v2

    .line 828
    .end local v0    # "mode":Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->killMode()V

    .line 829
    new-instance v0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 830
    .restart local v0    # "mode":Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 831
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    .line 832
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 833
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    iget v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mImageType:I

    invoke-virtual {v2, v0, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;I)V

    .line 834
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 835
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, v4, :cond_3

    .line 837
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 839
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 840
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    move-object v2, v0

    .line 841
    goto :goto_0

    :cond_4
    move v2, v3

    .line 831
    goto :goto_1

    .line 844
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startMiniMode()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->startMiniMode()Z

    move-result v0

    return v0
.end method

.method public topActionbar_hide()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1120
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1121
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 1124
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1126
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 1127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1128
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v6, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1129
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget-object v5, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1130
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideTopListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1131
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1132
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1136
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mHideTopListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public topActionbar_show()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1096
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 1099
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1101
    iget-boolean v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1103
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v7}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 1104
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1105
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1106
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1107
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1108
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowTopListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1109
    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1110
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1116
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v8}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1113
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContainerView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1114
    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mShowTopListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method
