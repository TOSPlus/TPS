.class Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$600(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$600(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 748
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 753
    if-nez p2, :cond_0

    .line 754
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/ActionBar$Tab;

    const/4 v2, 0x1

    # invokes: Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->createTabView(Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;
    invoke-static {v1, v0, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->access$700(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;Lcom/tencent/qrom/app/ActionBar$Tab;Z)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 758
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 756
    check-cast v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    goto :goto_0
.end method
