.class public abstract Lcom/tencent/qrom/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mEdit:Landroid/widget/EditText;

.field protected mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/tencent/qrom/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/tencent/qrom/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/tencent/qrom/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 64
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 11
    .param p1, "visibility"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/16 v8, 0xc8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 149
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 152
    :cond_0
    if-nez p1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 155
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 159
    :cond_1
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 160
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    sget-object v3, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 163
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 165
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 168
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 189
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 174
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v6, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    sget-object v3, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_4

    .line 178
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 179
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 180
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 181
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 185
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 245
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initEdit()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 68
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    const v1, 0x7a090141

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 71
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 75
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 76
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isOverflowButtonShowing()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowButtonShowing()Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 249
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 253
    sub-int/2addr p2, p4

    .line 255
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    const v4, 0x7a0100be

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->requestLayout()V

    .line 107
    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 260
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 261
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 263
    .local v1, "childTop":I
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 265
    return v2
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 270
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 271
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 273
    .local v1, "childTop":I
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 275
    return v2
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/tencent/qrom/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView$1;-><init>(Lcom/tencent/qrom/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 127
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->requestLayout()V

    .line 128
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 115
    return-void
.end method

.method public setSplitView(Lcom/tencent/qrom/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "splitView"    # Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitView:Lcom/tencent/qrom/internal/widget/ActionBarContainer;

    .line 136
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 123
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
