.class Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcom/tencent/qrom/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lcom/tencent/qrom/app/ActionBar$Tab;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    .line 613
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .line 614
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 615
    iput-object p3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTab:Lcom/tencent/qrom/app/ActionBar$Tab;

    .line 617
    if-eqz p4, :cond_0

    .line 618
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 622
    return-void
.end method


# virtual methods
.method public bindTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/tencent/qrom/app/ActionBar$Tab;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTab:Lcom/tencent/qrom/app/ActionBar$Tab;

    .line 650
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 651
    return-void
.end method

.method public getTab()Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTab:Lcom/tencent/qrom/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 655
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 658
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 662
    :cond_0
    return-void
.end method

.method public qromGetTextColor()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0
.end method

.method public qromGetTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public qromSetTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public qromSetTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 665
    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTab:Lcom/tencent/qrom/app/ActionBar$Tab;

    .line 666
    .local v5, "tab":Lcom/tencent/qrom/app/ActionBar$Tab;
    invoke-virtual {v5}, Lcom/tencent/qrom/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 667
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 669
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 670
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 673
    :cond_1
    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 674
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    :cond_2
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 676
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    :cond_3
    :goto_0
    return-void

    .line 680
    :cond_4
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 681
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 682
    iput-object v10, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 685
    :cond_5
    invoke-virtual {v5}, Lcom/tencent/qrom/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 686
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lcom/tencent/qrom/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 688
    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_a

    .line 689
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 690
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 691
    .local v3, "iconView":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 693
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 694
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    invoke-virtual {p0, v3, v12}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 696
    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 698
    .end local v3    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    :cond_7
    :goto_1
    if-eqz v6, :cond_b

    .line 706
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 707
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10102f5

    invoke-direct {v7, v8, v10, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 709
    .local v7, "textView":Landroid/widget/TextView;
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 710
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 712
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 713
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 715
    iput-object v7, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 717
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    :cond_9
    :goto_2
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 725
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/tencent/qrom/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 700
    :cond_a
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 701
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 719
    :cond_b
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 720
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v8, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
