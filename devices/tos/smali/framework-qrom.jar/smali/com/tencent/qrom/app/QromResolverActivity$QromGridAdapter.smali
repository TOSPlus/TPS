.class Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;,
        Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gridInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mPage:I

.field final synthetic this$0:Lcom/tencent/qrom/app/QromResolverActivity;

.field private totalInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity;ILjava/util/List;Landroid/content/Intent;)V
    .locals 3
    .param p2, "page"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 581
    .local p3, "listInfo":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;>;"
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 582
    iput-object p4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->mIntent:Landroid/content/Intent;

    .line 583
    iput p2, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->mPage:I

    .line 584
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->totalInfo:Ljava/util/List;

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    .line 586
    mul-int/lit8 v0, p2, 0x6

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p2, 0x6

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_0

    .line 587
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 591
    :cond_0
    return-void

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 605
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "holder":Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 614
    new-instance v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    invoke-direct {v0, p0, v7}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;-><init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;Lcom/tencent/qrom/app/QromResolverActivity$1;)V

    .line 615
    .restart local v0    # "holder":Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7a03001b

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 616
    const v3, 0x7a09015c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 617
    const v3, 0x7a09015d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 618
    const v3, 0x7a090164

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->settingView:Landroid/widget/ImageView;

    .line 619
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 624
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$100(Lcom/tencent/qrom/app/QromResolverActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->mPage:I

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->totalInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->totalInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    iget v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->mPage:I

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->totalInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    .line 626
    :cond_2
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->settingView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    :goto_1
    return-object p2

    .line 621
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    check-cast v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
    goto :goto_0

    .line 631
    :cond_4
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->settingView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->gridInfo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .line 635
    .local v2, "info":Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;
    iget-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    .line 636
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromResolverActivity;->access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "true"

    iget-object v4, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mDataBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromResolverActivity;->access$000(Lcom/tencent/qrom/app/QromResolverActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "screenshot"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_7

    .line 639
    iget-object v3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    iget-object v4, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/QromResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 640
    iget-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayBitmap:Landroid/graphics/Bitmap;

    .line 641
    iput-object v7, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 648
    :cond_5
    :goto_2
    iget-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v3, Lcom/tencent/qrom/app/QromResolverHiIcon;->HiIconName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 650
    iget-object v3, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/tencent/qrom/app/QromResolverHiIcon;->HiIconName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 651
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    sget-object v4, Lcom/tencent/qrom/app/QromResolverHiIcon;->HiIconRes:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    .end local v1    # "i":I
    :cond_6
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 645
    :cond_7
    new-instance v3, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;

    invoke-direct {v3, p0, v7}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;-><init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;Lcom/tencent/qrom/app/QromResolverActivity$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 654
    .restart local v1    # "i":I
    :cond_8
    iget-object v3, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
