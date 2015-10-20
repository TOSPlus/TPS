.class final Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TencentResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitialHighlight:I

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 567
    iput-object p4, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 568
    iput-object p5, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 569
    iput p6, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 570
    iput-object p2, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mContext:Landroid/content/Context;

    .line 572
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 574
    invoke-direct {p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 575
    return-void
.end method

.method private final bindView(Lcom/tencent/qrom/app/DefaultAppChooseView;Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)V
    .locals 3
    .param p1, "view"    # Lcom/tencent/qrom/app/DefaultAppChooseView;
    .param p2, "info"    # Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .prologue
    .line 829
    iget-object v0, p2, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->setText(Ljava/lang/String;)V

    .line 830
    iget-object v0, p2, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;

    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 833
    :cond_0
    iget-object v0, p2, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 17
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 733
    .local v13, "roActivityName":Ljava/lang/CharSequence;
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 737
    :cond_0
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 738
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_3

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 745
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_2
    return-void

    .line 747
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    const/4 v2, 0x1

    # setter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$402(Lcom/tencent/qrom/app/TencentResolverActivity;Z)Z

    .line 748
    const/4 v15, 0x0

    .line 749
    .local v15, "usePkg":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 750
    .local v14, "startApp":Ljava/lang/CharSequence;
    if-nez v14, :cond_4

    .line 751
    const/4 v15, 0x1

    .line 753
    :cond_4
    if-nez v15, :cond_7

    .line 755
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 756
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_6

    .line 758
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 759
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 760
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_5

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 761
    :cond_5
    const/4 v15, 0x1

    .line 768
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 770
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_7
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_2

    .line 771
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 772
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 777
    :cond_8
    if-eqz v15, :cond_a

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 764
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 782
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v5}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 25

    .prologue
    .line 595
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    .line 598
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-virtual {v8}, Lcom/tencent/qrom/app/TencentResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x10000

    invoke-interface {v2, v3, v6, v8}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 606
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 607
    .local v9, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 637
    :cond_1
    if-eqz v9, :cond_16

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "N":I
    if-lez v14, :cond_16

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_3

    .line 641
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 642
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 643
    .local v20, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 649
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 650
    .local v12, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_c

    .line 651
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 656
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v12, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, v12, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_b

    .line 657
    :cond_4
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_b

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v2, v9, :cond_5

    .line 659
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 661
    :cond_5
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 662
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 600
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v14    # "N":I
    .end local v18    # "i":I
    :catch_0
    move-exception v23

    .line 601
    .local v23, "re":Landroid/os/RemoteException;
    const-string v2, "TencentResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling getLastChosenActivity\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    .end local v23    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v8, 0x10000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$200(Lcom/tencent/qrom/app/TencentResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x40

    :goto_3
    or-int/2addr v2, v8

    invoke-virtual {v3, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 618
    .restart local v9    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_1

    .line 619
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .restart local v18    # "i":I
    :goto_4
    if-ltz v18, :cond_1

    .line 620
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    .line 621
    .local v16, "ai":Landroid/content/pm/ActivityInfo;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-gez v2, :cond_7

    .line 622
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 624
    :cond_7
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v16

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v2, v3, v6, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v17

    .line 626
    .local v17, "granted":I
    if-eqz v17, :cond_9

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v2, v9, :cond_8

    .line 629
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 631
    :cond_8
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 619
    :cond_9
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 609
    .end local v9    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v17    # "granted":I
    .end local v18    # "i":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 650
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "N":I
    .restart local v18    # "i":I
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 666
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    const/4 v2, 0x1

    if-le v14, v2, :cond_d

    .line 667
    new-instance v22, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 668
    .local v22, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 672
    .end local v22    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_12

    .line 673
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_12

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v7, v2, v18

    .line 675
    .local v7, "ii":Landroid/content/Intent;
    if-nez v7, :cond_e

    .line 673
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 678
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 679
    .restart local v16    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v16, :cond_f

    .line 680
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 683
    :cond_f
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 684
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 685
    instance-of v2, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_10

    move-object/from16 v21, v7

    .line 686
    check-cast v21, Landroid/content/pm/LabeledIntent;

    .line 687
    .local v21, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 688
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 689
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 690
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 692
    .end local v21    # "li":Landroid/content/pm/LabeledIntent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 693
    .local v5, "appName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 694
    .local v15, "activityName":Ljava/lang/CharSequence;
    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 697
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v2, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 704
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "appName":Ljava/lang/CharSequence;
    .end local v7    # "ii":Landroid/content/Intent;
    .end local v15    # "activityName":Ljava/lang/CharSequence;
    .end local v16    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 705
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 706
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 707
    .local v13, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mShowExtended:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$402(Lcom/tencent/qrom/app/TencentResolverActivity;Z)Z

    .line 708
    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    if-ge v0, v14, :cond_15

    .line 709
    if-nez v13, :cond_13

    .line 710
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 712
    :cond_13
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 713
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 714
    .local v24, "riLabel":Ljava/lang/CharSequence;
    if-nez v24, :cond_14

    .line 715
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 720
    :cond_14
    add-int/lit8 v11, v18, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 721
    move-object v12, v4

    .line 722
    move-object/from16 v13, v24

    .line 723
    move/from16 v10, v18

    .line 708
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 726
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "riLabel":Ljava/lang/CharSequence;
    :cond_15
    add-int/lit8 v11, v14, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 728
    .end local v10    # "start":I
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "r0Label":Ljava/lang/CharSequence;
    .end local v14    # "N":I
    .end local v18    # "i":I
    :cond_16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInitialHighlight()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 812
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 817
    if-nez p2, :cond_0

    .line 818
    new-instance v0, Lcom/tencent/qrom/app/DefaultAppChooseView;

    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7a030083

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/DefaultAppChooseView;-><init>(Landroid/content/Context;I)V

    .line 824
    .local v0, "view":Lcom/tencent/qrom/app/DefaultAppChooseView;
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->bindView(Lcom/tencent/qrom/app/DefaultAppChooseView;Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)V

    .line 825
    return-object v0

    .end local v0    # "view":Lcom/tencent/qrom/app/DefaultAppChooseView;
    :cond_0
    move-object v0, p2

    .line 821
    check-cast v0, Lcom/tencent/qrom/app/DefaultAppChooseView;

    .restart local v0    # "view":Lcom/tencent/qrom/app/DefaultAppChooseView;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    .line 579
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 580
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 581
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 582
    .local v0, "newItemCount":I
    if-nez v0, :cond_0

    .line 584
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->finish()V

    .line 586
    :cond_0
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 794
    iget-object v3, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .line 796
    .local v1, "dri":Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 797
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 798
    iget-object v3, v1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 799
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 800
    return-object v2

    .line 796
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
