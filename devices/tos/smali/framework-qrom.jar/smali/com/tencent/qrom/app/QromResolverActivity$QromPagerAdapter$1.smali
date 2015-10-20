.class Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;
.super Ljava/lang/Object;
.source "QromResolverActivity.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
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
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 474
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->pagerCount:I
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->access$200(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v5, v5, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I
    invoke-static {v5}, Lcom/tencent/qrom/app/QromResolverActivity;->access$300(Lcom/tencent/qrom/app/QromResolverActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mListInfo:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->access$400(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, -0x1

    if-eq p3, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mListInfo:Ljava/util/List;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->access$400(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x6

    if-nez v4, :cond_3

    const/4 v4, 0x5

    if-ne p3, v4, :cond_3

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$300(Lcom/tencent/qrom/app/QromResolverActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->mListInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->access$400(Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 476
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.resolversettings"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v4, "intentType"

    iget-object v5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v5, v5, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mIntentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/qrom/app/QromResolverActivity;->access$500(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v4, "topReNames"

    iget-object v5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v5, v5, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mTopReNames:[Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/qrom/app/QromResolverActivity;->access$600(Lcom/tencent/qrom/app/QromResolverActivity;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v4, "intentRawAction"

    iget-object v5, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v5, v5, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/qrom/app/QromResolverActivity;->access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 483
    :try_start_0
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-virtual {v4, v2}, Lcom/tencent/qrom/app/QromResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->finish()V

    .line 497
    :goto_1
    return-void

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    const-string v5, "Not found"

    invoke-static {v4, v5, v0}, Lcom/tencent/qrom/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/tencent/qrom/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/Toast;->show()V

    .line 486
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    invoke-virtual {v4, p3}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 492
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    invoke-virtual {v4, p3}, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 493
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$700(Lcom/tencent/qrom/app/QromResolverActivity;)Lcom/tencent/qrom/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAlwaysCheck:Lcom/tencent/qrom/widget/CheckBox;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$700(Lcom/tencent/qrom/app/QromResolverActivity;)Lcom/tencent/qrom/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 494
    .local v0, "alwaysCheck":Z
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-virtual {v4, v3, v2, v0}, Lcom/tencent/qrom/app/QromResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 495
    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter$1;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;

    iget-object v4, v4, Lcom/tencent/qrom/app/QromResolverActivity$QromPagerAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->finish()V

    goto :goto_1
.end method
