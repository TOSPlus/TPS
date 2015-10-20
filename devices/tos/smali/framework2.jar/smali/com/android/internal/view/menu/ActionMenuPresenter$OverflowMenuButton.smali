.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 589
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 590
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 597
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 661
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 663
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 651
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 653
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 656
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 657
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 630
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return v1

    .line 634
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
