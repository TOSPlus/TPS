.class Lcom/tencent/qrom/app/TencentResolverActivity$3;
.super Ljava/lang/Object;
.source "TencentResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$3;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$3;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$3;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$100(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->startSelected(IZ)V

    .line 171
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$3;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->dismiss()V

    .line 172
    return-void
.end method
