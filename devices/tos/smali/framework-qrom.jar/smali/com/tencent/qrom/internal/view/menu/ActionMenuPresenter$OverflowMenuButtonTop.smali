.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButtonTop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 623
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 624
    const/4 v1, 0x0

    const v2, 0x7a0100bd

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 625
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setClickable(Z)V

    .line 626
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setFocusable(Z)V

    .line 627
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setVisibility(I)V

    .line 628
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setEnabled(Z)V

    .line 629
    const-string v1, "OverflowMenuButton"

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 632
    .local v0, "bRipple":Z
    if-eqz v0, :cond_0

    .line 633
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 634
    invoke-static {p2}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-static {p2}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 645
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return v3

    .line 649
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->playSoundEffect(I)V

    .line 650
    new-instance v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop$1;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;)V

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTopOverflowDelay:Z
    invoke-static {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
