.class Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;
.super Lcom/tencent/qrom/support/v4/view/PagerAdapter;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromPagerAdapter"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pagerCount:I

.field private pagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/widget/QromGridView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/app/QromResolverActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/Context;ILjava/util/List;Landroid/content/Intent;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pagerCount"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "listInfo":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;>;"
    const/4 v4, 0x0

    .line 437
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-direct {p0}, Lcom/tencent/qrom/support/v4/view/PagerAdapter;-><init>()V

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagers:Ljava/util/List;

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 440
    const v2, 0x7a03001a

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/QromGridView;

    .line 441
    .local v0, "gridView":Lcom/tencent/qrom/widget/QromGridView;
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setNumColumns(I)V

    .line 442
    invoke-virtual {v0, v4}, Lcom/tencent/qrom/widget/QromGridView;->setIsNeedBounce(Z)V

    .line 443
    new-instance v2, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    invoke-direct {v2, p1, v1, p4, p5}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;ILjava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/QromGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    invoke-virtual {v0, v4}, Lcom/tencent/qrom/widget/QromGridView;->setVerticalScrollBarEnabled(Z)V

    .line 445
    iget-object v2, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 447
    .end local v0    # "gridView":Lcom/tencent/qrom/widget/QromGridView;
    :cond_1
    iput p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagerCount:I

    .line 448
    iput-object p5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mIntent:Landroid/content/Intent;

    .line 449
    iput-object p4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mListInfo:Ljava/util/List;

    .line 450
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    .prologue
    .line 430
    iget v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagerCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mListInfo:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 464
    check-cast p1, Lcom/tencent/qrom/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/tencent/qrom/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 465
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagerCount:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 469
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/QromGridView;

    .line 470
    .local v0, "view":Lcom/tencent/qrom/widget/QromGridView;
    new-instance v1, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;-><init>(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromGridView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 500
    return-object v0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 511
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$800(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 524
    :goto_0
    return-object v2

    .line 515
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$800(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$300(Lcom/tencent/qrom/app/QromResolverActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .line 517
    .local v1, "dri":Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 519
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    iget-object v3, v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 522
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 517
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 459
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qrom/app/QromResolverActivity;->access$800(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qrom/app/QromResolverActivity;->access$800(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I
    invoke-static {v1}, Lcom/tencent/qrom/app/QromResolverActivity;->access$300(Lcom/tencent/qrom/app/QromResolverActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
