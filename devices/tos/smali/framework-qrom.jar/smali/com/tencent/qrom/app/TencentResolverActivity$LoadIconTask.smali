.class Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "TencentResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .prologue
    .line 851
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 852
    .local v0, "info":Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    iget-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 855
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 848
    check-cast p1, [Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->doInBackground([Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$000(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 861
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 848
    check-cast p1, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;->onPostExecute(Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
