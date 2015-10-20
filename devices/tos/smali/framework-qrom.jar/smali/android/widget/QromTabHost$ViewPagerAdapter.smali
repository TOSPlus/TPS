.class Landroid/widget/QromTabHost$ViewPagerAdapter;
.super Lcom/tencent/qrom/support/v4/view/PagerAdapter;
.source "QromTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method public constructor <init>(Landroid/widget/QromTabHost;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Lcom/tencent/qrom/support/v4/view/PagerAdapter;-><init>()V

    .line 1229
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1233
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 1238
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1240
    :cond_0
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1241
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 1245
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1248
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1252
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 1253
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1255
    :cond_0
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static {v1}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/QromTabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/QromTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1256
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1257
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1259
    :cond_1
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1264
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
