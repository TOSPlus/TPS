.class Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 835
    iput-object p1, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 837
    iput-object p3, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 838
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 829
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 841
    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-virtual {v8}, Landroid/widget/QromTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 842
    .local v1, "context":Landroid/content/Context;
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 844
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabLayoutId:I
    invoke-static {v8}, Landroid/widget/QromTabHost;->access$2000(Landroid/widget/QromTabHost;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static {v9}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 847
    .local v5, "tabIndicator":Landroid/view/View;
    const v8, 0x7a09003e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 848
    .local v6, "tv":Landroid/widget/TextView;
    const v8, 0x7a090035

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 851
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    move v2, v0

    .line 852
    .local v2, "exclusive":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 854
    .local v0, "bindIcon":Z
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    if-eqz v0, :cond_1

    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 857
    iget-object v8, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    :cond_1
    iput-object v5, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mView:Landroid/view/View;

    .line 863
    return-object v5

    .end local v0    # "bindIcon":Z
    .end local v2    # "exclusive":Z
    :cond_2
    move v2, v7

    .line 851
    goto :goto_0

    .restart local v2    # "exclusive":Z
    :cond_3
    move v0, v7

    .line 852
    goto :goto_1
.end method

.method public getIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getTextColor(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method public getTextColors(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 879
    return-void
.end method

.method public setTextColors(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 886
    return-void
.end method

.method public supportTextFade()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    return v0
.end method
