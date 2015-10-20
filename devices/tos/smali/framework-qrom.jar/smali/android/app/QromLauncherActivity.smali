.class public abstract Landroid/app/QromLauncherActivity;
.super Landroid/app/QromListActivity;
.source "QromLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QromLauncherActivity$IconResizer;,
        Landroid/app/QromLauncherActivity$ActivityAdapter;,
        Landroid/app/QromLauncherActivity$ListItem;
    }
.end annotation


# instance fields
.field mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

.field mIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/QromListActivity;-><init>()V

    .line 250
    return-void
.end method

.method private updateAlertTitle()V
    .locals 2

    .prologue
    .line 366
    const v1, 0x7a090062

    invoke-virtual {p0, v1}, Landroid/app/QromLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    .local v0, "alertTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/app/QromLauncherActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_0
    return-void
.end method

.method private updateButtonText()V
    .locals 2

    .prologue
    .line 373
    const v1, 0x7a09006a

    invoke-virtual {p0, v1}, Landroid/app/QromLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 374
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 375
    new-instance v1, Landroid/app/QromLauncherActivity$1;

    invoke-direct {v1, p0}, Landroid/app/QromLauncherActivity$1;-><init>(Landroid/app/QromLauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, Landroid/app/QromLauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/QromLauncherActivity$ActivityAdapter;

    .line 416
    .local v0, "adapter":Landroid/app/QromLauncherActivity$ActivityAdapter;
    invoke-virtual {v0, p1}, Landroid/app/QromLauncherActivity$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected itemForPosition(I)Landroid/app/QromLauncherActivity$ListItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 425
    iget-object v0, p0, Landroid/app/QromLauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/QromLauncherActivity$ActivityAdapter;

    .line 426
    .local v0, "adapter":Landroid/app/QromLauncherActivity$ActivityAdapter;
    invoke-virtual {v0, p1}, Landroid/app/QromLauncherActivity$ActivityAdapter;->itemForPosition(I)Landroid/app/QromLauncherActivity$ListItem;

    move-result-object v1

    return-object v1
.end method

.method public makeListItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/QromLauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v5, p0, Landroid/app/QromLauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/app/QromLauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Landroid/app/QromLauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/QromLauncherActivity$ListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 455
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 456
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 457
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/app/QromLauncherActivity$ListItem;

    iget-object v6, p0, Landroid/app/QromLauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Landroid/app/QromLauncherActivity$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/QromLauncherActivity$IconResizer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-super {p0, p1}, Landroid/app/QromListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Landroid/app/QromLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/QromLauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 346
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/QromLauncherActivity;->requestWindowFeature(I)Z

    .line 347
    invoke-virtual {p0, v2}, Landroid/app/QromLauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 348
    invoke-virtual {p0}, Landroid/app/QromLauncherActivity;->onSetContentView()V

    .line 350
    new-instance v0, Landroid/app/QromLauncherActivity$IconResizer;

    invoke-direct {v0, p0}, Landroid/app/QromLauncherActivity$IconResizer;-><init>(Landroid/app/QromLauncherActivity;)V

    iput-object v0, p0, Landroid/app/QromLauncherActivity;->mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/QromLauncherActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/QromLauncherActivity;->mIntent:Landroid/content/Intent;

    .line 353
    iget-object v0, p0, Landroid/app/QromLauncherActivity;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 354
    new-instance v0, Landroid/app/QromLauncherActivity$ActivityAdapter;

    iget-object v1, p0, Landroid/app/QromLauncherActivity;->mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

    invoke-direct {v0, p0, v1}, Landroid/app/QromLauncherActivity$ActivityAdapter;-><init>(Landroid/app/QromLauncherActivity;Landroid/app/QromLauncherActivity$IconResizer;)V

    iput-object v0, p0, Landroid/app/QromLauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 356
    iget-object v0, p0, Landroid/app/QromLauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/QromLauncherActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    invoke-virtual {p0}, Landroid/app/QromLauncherActivity;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/ListView;->setTextFilterEnabled(Z)V

    .line 359
    invoke-direct {p0}, Landroid/app/QromLauncherActivity;->updateAlertTitle()V

    .line 360
    invoke-direct {p0}, Landroid/app/QromLauncherActivity;->updateButtonText()V

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/QromLauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 363
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 405
    invoke-virtual {p0, p3}, Landroid/app/QromLauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/QromLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Landroid/app/QromLauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onSetContentView()V
    .locals 1

    .prologue
    .line 400
    const v0, 0x7a03000b    # 1.7004794E35f

    invoke-virtual {p0, v0}, Landroid/app/QromLauncherActivity;->setContentView(I)V

    .line 401
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "titleId"    # I

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/QromListActivity;->setTitle(I)V

    .line 392
    invoke-direct {p0}, Landroid/app/QromLauncherActivity;->updateAlertTitle()V

    .line 393
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/QromListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    invoke-direct {p0}, Landroid/app/QromLauncherActivity;->updateAlertTitle()V

    .line 387
    return-void
.end method
