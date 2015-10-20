.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
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
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7a0f00f1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 671
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 672
    const/4 v4, 0x0

    const v5, 0x7a0100bd

    invoke-direct {p0, p2, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 673
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0a001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 674
    .local v3, "isActionBarSplitTheme":Z
    if-eqz v3, :cond_1

    .line 675
    sget-object v4, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    invoke-virtual {p2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 676
    .local v0, "array":Landroid/content/res/TypedArray;
    const/16 v4, 0x16

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 678
    .local v2, "buttonStyleId":I
    if-ne v2, v8, :cond_3

    .line 679
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0202d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 685
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "buttonStyleId":I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 686
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 687
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 688
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 689
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0d005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    rsub-int/lit8 v4, v4, 0x0

    invoke-virtual {p0, v6, v6, v4, v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setPadding(IIII)V

    .line 694
    const-string v4, "OverflowMenuButton"

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 697
    .local v1, "bRipple":Z
    if-eqz v1, :cond_2

    .line 698
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_4

    .line 699
    invoke-static {p2}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :cond_2
    :goto_1
    return-void

    .line 680
    .end local v1    # "bRipple":Z
    .restart local v0    # "array":Landroid/content/res/TypedArray;
    .restart local v2    # "buttonStyleId":I
    :cond_3
    const v4, 0x7a0f00f2

    if-ne v2, v4, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0202d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 702
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "buttonStyleId":I
    .restart local v1    # "bRipple":Z
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 710
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    :goto_0
    return v3

    .line 712
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 713
    new-instance v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;)V

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsOverflowDelay:Z
    invoke-static {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
