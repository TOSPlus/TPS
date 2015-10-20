.class Landroid/widget/QromTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 766
    iput-object p1, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p2, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 768
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Landroid/widget/QromTabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    .line 771
    iget-object v4, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-virtual {v4}, Landroid/widget/QromTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 772
    .local v0, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 774
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/QromTabHost;->access$2000(Landroid/widget/QromTabHost;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static {v5}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, "tabIndicator":Landroid/view/View;
    const v4, 0x7a09003e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 778
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iput-object v2, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->mView:Landroid/view/View;

    .line 782
    return-object v2
.end method

.method public getIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getTextColor(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 795
    const/4 v1, 0x0

    .line 798
    :goto_0
    return v1

    .line 797
    :cond_0
    const v1, 0x7a09003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 798
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_0
.end method

.method public getTextColors(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 810
    if-nez p1, :cond_0

    .line 811
    const/4 v1, 0x0

    .line 814
    :goto_0
    return-object v1

    .line 813
    :cond_0
    const v1, 0x7a09003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 814
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 802
    if-nez p1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 805
    :cond_0
    const v1, 0x7a09003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 806
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextColors(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 818
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    const v1, 0x7a09003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 822
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public supportTextFade()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    return v0
.end method
