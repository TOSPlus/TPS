.class Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "TencentResolverActivity.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 841
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$000(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 842
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 843
    const/4 v1, 0x1

    return v1
.end method
