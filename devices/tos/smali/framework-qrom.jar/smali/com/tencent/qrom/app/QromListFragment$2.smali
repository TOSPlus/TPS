.class Lcom/tencent/qrom/app/QromListFragment$2;
.super Ljava/lang/Object;
.source "QromListFragment.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromListFragment;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromListFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/tencent/qrom/app/QromListFragment$2;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment$2;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromListFragment;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, p3, v0

    .line 164
    .local v3, "pos":I
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment$2;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    move-object v1, p1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromListFragment;->onListItemClick(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;IJ)V

    .line 165
    return-void
.end method
