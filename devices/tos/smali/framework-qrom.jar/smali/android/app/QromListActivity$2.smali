.class Landroid/app/QromListActivity$2;
.super Ljava/lang/Object;
.source "QromListActivity.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/QromListActivity;


# direct methods
.method constructor <init>(Landroid/app/QromListActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Landroid/app/QromListActivity$2;->this$0:Landroid/app/QromListActivity;

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
    .line 325
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/app/QromListActivity$2;->this$0:Landroid/app/QromListActivity;

    move-object v1, p1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/QromListActivity;->onListItemClick(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;IJ)V

    .line 326
    return-void
.end method
