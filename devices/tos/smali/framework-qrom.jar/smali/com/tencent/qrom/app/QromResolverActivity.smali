.class public Lcom/tencent/qrom/app/QromResolverActivity;
.super Lcom/tencent/qrom/app/AlertActivity;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/QromResolverActivity$1;,
        Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;,
        Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;,
        Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;,
        Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;
    }
.end annotation


# static fields
.field private static final SINGLE_COUNT:I = 0x6

.field private static final SINGLE_LINE_HEIGHT:I = 0x6a

.field private static final TOP_COUNT:I = 0x5

.field private static final TWO_LINE_HEIGHT:I = 0xde


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;

.field private mBothQQFlag:Z

.field private mDataBundle:Landroid/os/Bundle;

.field private mIntentType:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolverFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResolverSP:Landroid/content/SharedPreferences;

.field private mTopReNames:[Ljava/lang/String;

.field private whichPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/tencent/qrom/app/AlertActivity;-><init>()V

    .line 689
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/app/QromResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mBothQQFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/QromResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/app/QromResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mIntentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/app/QromResolverActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mTopReNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/app/QromResolverActivity;)Lcom/tencent/qrom/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
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
    .line 738
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 739
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_0
    return-void

    .line 743
    :cond_1
    const/4 v14, 0x0

    .line 744
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 745
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 746
    const/4 v14, 0x1

    .line 748
    :cond_2
    if-nez v14, :cond_5

    .line 750
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 752
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 754
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 755
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 756
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 757
    :cond_3
    const/4 v14, 0x1

    .line 764
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 766
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_5
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 767
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 768
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 770
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 760
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 774
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private sortResolver(Ljava/util/List;Landroid/content/pm/ResolveInfo$DisplayNameComparator;)V
    .locals 11
    .param p2, "comparator"    # Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo$DisplayNameComparator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 840
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 841
    .local v8, "topMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v7, "topList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v4, "restList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 844
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v6, "tempPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 846
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v9, "com.tencent.qqlite"

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "com.tencent.mobileqq"

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 850
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mBothQQFlag:Z

    .line 853
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 854
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v9, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mBothQQFlag:Z

    if-eqz v9, :cond_7

    .line 855
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 856
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 858
    :cond_2
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 859
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 861
    :cond_3
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.tencent.mobileqq"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 862
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 864
    :cond_4
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.tencent.qqlite"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 865
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 867
    :cond_5
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 868
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 871
    :cond_6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 875
    :cond_7
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 876
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 878
    :cond_8
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 879
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 881
    :cond_9
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 882
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 884
    :cond_a
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 885
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 887
    :cond_b
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 888
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 891
    :cond_c
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 895
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-static {v4, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v9, 0x5

    if-ge v0, v9, :cond_f

    .line 898
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 902
    :cond_f
    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 903
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 905
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 906
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 907
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 908
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 909
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 911
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 913
    .local v3, "listSize":I
    const/4 v9, 0x5

    if-le v3, v9, :cond_10

    const/4 v3, 0x5

    .end local v3    # "listSize":I
    :cond_10
    new-array v9, v3, [Ljava/lang/String;

    iput-object v9, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mTopReNames:[Ljava/lang/String;

    .line 914
    const/4 v0, 0x0

    :goto_3
    iget-object v9, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mTopReNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_11

    .line 915
    iget-object v10, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mTopReNames:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v9, v10, v0

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 917
    :cond_11
    return-void
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 805
    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/QromResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 810
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 806
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getSP()Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/tencent/qrom/app/QromResolverActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 834
    :goto_0
    const-string v3, "resolver_config"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 835
    .local v2, "sp":Landroid/content/SharedPreferences;
    return-object v2

    .line 829
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConfigExist()Z
    .locals 4

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 816
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v2, "com.android.settings"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 822
    :goto_0
    const-string v2, "resolver_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    .line 817
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 819
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 820
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 784
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 786
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 799
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 790
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 791
    .local v1, "iconRes":I
    if-eqz v1, :cond_2

    .line 792
    iget-object v2, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/tencent/qrom/app/QromResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 793
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 799
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0e0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qrom/app/QromResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 42
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super/range {p0 .. p1}, Lcom/tencent/qrom/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->setBottomDialog(Z)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mIntentType:Ljava/lang/String;

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAlertParams:Lcom/tencent/qrom/app/AlertController$AlertParams;

    move-object/from16 v23, v0

    .line 129
    .local v23, "ap":Lcom/tencent/qrom/app/AlertController$AlertParams;
    const-string v3, ""

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    if-eqz p6, :cond_0

    .line 132
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/LayoutInflater;

    .line 134
    .local v27, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7a090033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;

    const v4, 0x7a0e0187

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/CheckBox;->setText(I)V

    .line 138
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    if-nez p5, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x10000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;

    if-eqz v3, :cond_3

    const/16 v3, 0x40

    :goto_0
    or-int/2addr v3, v6

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    .line 144
    :cond_1
    if-eqz p5, :cond_14

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v21

    .local v21, "N":I
    if-lez v21, :cond_14

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v13, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v24, 0x1

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 149
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 156
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget v3, v13, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v13, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v4, :cond_4

    .line 158
    :cond_2
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 159
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 139
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v13    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v21    # "N":I
    .end local v24    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 148
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "N":I
    .restart local v24    # "i":I
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 164
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_9

    .line 165
    new-instance v36, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 168
    .local v36, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->isConfigExist()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getSP()Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mResolverSP:Landroid/content/SharedPreferences;

    .line 170
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v38, "tempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    .line 172
    const/16 v24, 0x0

    :goto_3
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_8

    .line 173
    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ResolveInfo;

    .line 174
    .local v28, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mResolverSP:Landroid/content/SharedPreferences;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mResolverSP:Landroid/content/SharedPreferences;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 176
    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_6
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 180
    :cond_7
    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 183
    .end local v28    # "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v21

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/QromResolverActivity;->sortResolver(Ljava/util/List;Landroid/content/pm/ResolveInfo$DisplayNameComparator;)V

    .line 203
    .end local v36    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    .end local v38    # "tempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    .line 206
    if-eqz p4, :cond_f

    .line 207
    const/16 v24, 0x0

    :goto_6
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_f

    .line 208
    aget-object v8, p4, v24

    .line 209
    .local v8, "ii":Landroid/content/Intent;
    if-nez v8, :cond_c

    .line 207
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 188
    .end local v8    # "ii":Landroid/content/Intent;
    .restart local v36    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_a
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v21

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/QromResolverActivity;->sortResolver(Ljava/util/List;Landroid/content/pm/ResolveInfo$DisplayNameComparator;)V

    .line 190
    const/4 v3, 0x5

    move/from16 v0, v21

    if-le v0, v3, :cond_9

    .line 191
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .restart local v38    # "tempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    .line 193
    const/16 v24, 0x0

    :goto_8
    const/4 v3, 0x5

    move/from16 v0, v24

    if-ge v0, v3, :cond_b

    .line 194
    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 196
    :cond_b
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    .line 197
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v21

    goto :goto_5

    .line 212
    .end local v36    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    .end local v38    # "tempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "ii":Landroid/content/Intent;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 214
    .local v22, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v22, :cond_d

    .line 215
    const-string v3, "QromResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 219
    :cond_d
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 220
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    instance-of v3, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_e

    move-object/from16 v30, v8

    .line 222
    check-cast v30, Landroid/content/pm/LabeledIntent;

    .line 223
    .local v30, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 224
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 225
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 226
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->icon:I

    .line 228
    .end local v30    # "li":Landroid/content/pm/LabeledIntent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    new-instance v3, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 235
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "ii":Landroid/content/Intent;
    .end local v22    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_f
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    .line 236
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 237
    .restart local v13    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v11, 0x0

    .line 238
    .local v11, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 239
    .local v14, "r0Label":Ljava/lang/CharSequence;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v21

    .line 240
    const/16 v24, 0x1

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 241
    if-nez v14, :cond_10

    .line 242
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 244
    :cond_10
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 245
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v37

    .line 246
    .local v37, "riLabel":Ljava/lang/CharSequence;
    if-nez v37, :cond_11

    .line 247
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 249
    :cond_11
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 240
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 252
    :cond_12
    add-int/lit8 v12, v24, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v14}, Lcom/tencent/qrom/app/QromResolverActivity;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 253
    move-object v13, v5

    .line 254
    move-object/from16 v14, v37

    .line 255
    move/from16 v11, v24

    goto :goto_a

    .line 258
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v37    # "riLabel":Ljava/lang/CharSequence;
    :cond_13
    add-int/lit8 v12, v21, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v14}, Lcom/tencent/qrom/app/QromResolverActivity;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 262
    .end local v11    # "start":I
    .end local v13    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v14    # "r0Label":Ljava/lang/CharSequence;
    .end local v21    # "N":I
    .end local v24    # "i":I
    :cond_14
    const/16 v34, 0x0

    .line 264
    .local v34, "pageCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 265
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    new-instance v15, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    if-nez v3, :cond_18

    const/16 v29, 0x0

    .line 269
    .local v29, "itemCount":I
    :goto_b
    if-lez v29, :cond_1e

    .line 270
    rem-int/lit8 v3, v29, 0x6

    if-nez v3, :cond_19

    .line 271
    div-int/lit8 v18, v29, 0x6

    .line 276
    .end local v34    # "pageCount":I
    .local v18, "pageCount":I
    :goto_c
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/LayoutInflater;

    .line 277
    .restart local v27    # "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7a030019

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v39

    .line 278
    .local v39, "vg":Landroid/view/View;
    const v3, 0x7a09015e

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/tencent/qrom/support/v4/view/ViewPager;

    .line 279
    .local v40, "viewPager":Lcom/tencent/qrom/support/v4/view/ViewPager;
    const v3, 0x7a09015f

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    .line 280
    .local v41, "viewPoints":Landroid/widget/LinearLayout;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v33, "mainPagers":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v35, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x3

    move/from16 v0, v29

    if-gt v0, v3, :cond_1a

    .line 286
    const/4 v3, 0x1

    const/high16 v4, 0x42d40000    # 106.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, v35

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 292
    :goto_d
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v15, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p0

    move-object/from16 v20, p2

    invoke-direct/range {v15 .. v20}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/Context;ILjava/util/List;Landroid/content/Intent;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setAdapter(Lcom/tencent/qrom/support/v4/view/PagerAdapter;)V

    .line 295
    move/from16 v0, v18

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v26, v0

    .line 296
    .local v26, "imageViews":[Landroid/widget/ImageView;
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    .line 297
    new-instance v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v25, "imageView":Landroid/widget/ImageView;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v31, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v24, :cond_17

    .line 301
    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 303
    :cond_17
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    if-nez v24, :cond_1b

    .line 305
    const v3, 0x7a0200b4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 310
    :goto_f
    aput-object v25, v26, v24

    .line 311
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 267
    .end local v18    # "pageCount":I
    .end local v24    # "i":I
    .end local v25    # "imageView":Landroid/widget/ImageView;
    .end local v26    # "imageViews":[Landroid/widget/ImageView;
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .end local v29    # "itemCount":I
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "mainPagers":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v35    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "vg":Landroid/view/View;
    .end local v40    # "viewPager":Lcom/tencent/qrom/support/v4/view/ViewPager;
    .end local v41    # "viewPoints":Landroid/widget/LinearLayout;
    .restart local v34    # "pageCount":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v29

    goto/16 :goto_b

    .line 273
    .restart local v29    # "itemCount":I
    :cond_19
    div-int/lit8 v3, v29, 0x6

    add-int/lit8 v18, v3, 0x1

    .end local v34    # "pageCount":I
    .restart local v18    # "pageCount":I
    goto/16 :goto_c

    .line 289
    .restart local v27    # "inflater":Landroid/view/LayoutInflater;
    .restart local v33    # "mainPagers":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v35    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v39    # "vg":Landroid/view/View;
    .restart local v40    # "viewPager":Lcom/tencent/qrom/support/v4/view/ViewPager;
    .restart local v41    # "viewPoints":Landroid/widget/LinearLayout;
    :cond_1a
    const/4 v3, 0x1

    const/high16 v4, 0x435e0000    # 222.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, v35

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_d

    .line 307
    .restart local v24    # "i":I
    .restart local v25    # "imageView":Landroid/widget/ImageView;
    .restart local v26    # "imageViews":[Landroid/widget/ImageView;
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1b
    const v3, 0x7a0200b5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 314
    .end local v25    # "imageView":Landroid/widget/ImageView;
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    const/4 v3, 0x1

    move/from16 v0, v18

    if-gt v0, v3, :cond_1d

    if-eqz v41, :cond_1d

    .line 315
    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    :cond_1d
    new-instance v3, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v3, v0, v1, v2}, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;-><init>(Lcom/tencent/qrom/app/QromResolverActivity;I[Landroid/widget/ImageView;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 319
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 320
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 321
    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 323
    const/4 v3, 0x0

    move-object/from16 v0, v23

    iput v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 324
    const/4 v3, 0x0

    move-object/from16 v0, v23

    iput v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 325
    const/4 v3, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 337
    .end local v24    # "i":I
    .end local v26    # "imageViews":[Landroid/widget/ImageView;
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .end local v33    # "mainPagers":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v35    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "vg":Landroid/view/View;
    .end local v40    # "viewPager":Lcom/tencent/qrom/support/v4/view/ViewPager;
    .end local v41    # "viewPoints":Landroid/widget/LinearLayout;
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->setupAlert()V

    .line 338
    return-void

    .line 329
    .end local v18    # "pageCount":I
    .restart local v34    # "pageCount":I
    :cond_1e
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v32, "mTextView":Landroid/widget/TextView;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 333
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    const v3, 0x7a0e0188

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 335
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move/from16 v18, v34

    .end local v34    # "pageCount":I
    .restart local v18    # "pageCount":I
    goto :goto_10
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 24
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 341
    if-eqz p3, :cond_b

    .line 343
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 349
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 350
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 351
    .local v7, "cat":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v7    # "cat":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    const/high16 v22, 0xfff0000

    and-int v7, v21, v22

    .line 357
    .local v7, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 358
    .local v9, "data":Landroid/net/Uri;
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_2

    .line 359
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 362
    :try_start_0
    invoke-virtual {v11, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 373
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_3

    const-string v21, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 376
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 381
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_5

    .line 382
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 383
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 384
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v21

    if-ltz v21, :cond_4

    .line 385
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v18

    .line 386
    .local v18, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    if-ltz v18, :cond_9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "port":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v16

    .line 393
    .local v16, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v16, :cond_7

    .line 394
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 395
    .local v17, "path":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 396
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 397
    .local v15, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 398
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 406
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v15    # "p":Landroid/os/PatternMatcher;
    .end local v16    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    .line 408
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 409
    .local v20, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 410
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity;->mList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    .line 412
    .local v19, "r":Landroid/content/pm/ResolveInfo;
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v20, v12

    .line 414
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v6, :cond_8

    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 410
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 363
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v19    # "r":Landroid/content/pm/ResolveInfo;
    .end local v20    # "set":[Landroid/content/ComponentName;
    .restart local v14    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 364
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v21, "QromResolverActivity"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 386
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18    # "port":I
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 416
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v12    # "i":I
    .restart local v20    # "set":[Landroid/content/ComponentName;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/QromResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 421
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v7    # "cat":I
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "data":Landroid/net/Uri;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v20    # "set":[Landroid/content/ComponentName;
    :cond_b
    if-eqz p2, :cond_c

    .line 423
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :cond_c
    :goto_4
    return-void

    .line 424
    :catch_1
    move-exception v10

    .line 425
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
