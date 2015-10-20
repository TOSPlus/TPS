.class public Landroid/widget/QromTabHost$TabSpec;
.super Ljava/lang/Object;
.source "QromTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

.field private mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;

.field private mTabHost:Landroid/widget/QromTabHost;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tabHost"    # Landroid/widget/QromTabHost;

    .prologue
    .line 636
    iput-object p1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p2, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 638
    iput-object p3, p0, Landroid/widget/QromTabHost$TabSpec;->mTabHost:Landroid/widget/QromTabHost;

    .line 639
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/widget/QromTabHost;
    .param p4, "x3"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 627
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromTabHost$TabSpec;-><init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$ContentStrategy;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost$TabSpec;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost$TabSpec;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Landroid/widget/QromTabHost$TabSpec;
    .locals 4
    .param p1, "viewId"    # I

    .prologue
    const/4 v3, 0x0

    .line 669
    iget-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Landroid/widget/QromTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {v0, v1, p1, v3}, Landroid/widget/QromTabHost$ViewIdContentStrategy;-><init>(Landroid/widget/QromTabHost;ILandroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    .line 676
    :goto_0
    return-object p0

    .line 674
    :cond_0
    new-instance v0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/widget/QromTabHost$ViewIdContentStrategy2;-><init>(Landroid/widget/QromTabHost;ILjava/lang/String;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    goto :goto_0
.end method

.method public setContent(Landroid/app/Fragment;)Landroid/widget/QromTabHost$TabSpec;
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 704
    new-instance v0, Landroid/widget/QromTabHost$FragmentContentStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    iget-object v3, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/QromTabHost$TabSpec;->mTabHost:Landroid/widget/QromTabHost;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/QromTabHost$FragmentContentStrategy;-><init>(Landroid/widget/QromTabHost;Landroid/app/Fragment;Ljava/lang/String;Landroid/widget/QromTabHost;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    .line 705
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Landroid/widget/QromTabHost$TabSpec;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 698
    new-instance v0, Landroid/widget/QromTabHost$IntentContentStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/QromTabHost$IntentContentStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    .line 699
    return-object p0
.end method

.method public setContent(Landroid/widget/QromTabHost$TabContentFactory;)Landroid/widget/QromTabHost$TabSpec;
    .locals 3
    .param p1, "contentFactory"    # Landroid/widget/QromTabHost$TabContentFactory;

    .prologue
    .line 684
    iget-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/widget/QromTabHost$FactoryContentStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/QromTabHost$FactoryContentStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/widget/QromTabHost$TabContentFactory;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    .line 691
    :goto_0
    return-object p0

    .line 689
    :cond_0
    new-instance v0, Landroid/widget/QromTabHost$FactoryContentStrategy2;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, p0, Landroid/widget/QromTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/QromTabHost$FactoryContentStrategy2;-><init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost$TabContentFactory;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mContentStrategy:Landroid/widget/QromTabHost$ContentStrategy;

    goto :goto_0
.end method

.method public setIndicator(Landroid/view/View;)Landroid/widget/QromTabHost$TabSpec;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 661
    new-instance v0, Landroid/widget/QromTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/QromTabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Landroid/view/View;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;

    .line 662
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Landroid/widget/QromTabHost$TabSpec;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 645
    new-instance v0, Landroid/widget/QromTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/QromTabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;

    .line 646
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/QromTabHost$TabSpec;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 653
    new-instance v0, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/QromTabHost$TabSpec;->this$0:Landroid/widget/QromTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/widget/QromTabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/QromTabHost$1;)V

    iput-object v0, p0, Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;

    .line 654
    return-object p0
.end method
