.class public Landroid/app/QromListActivity;
.super Landroid/app/QromActivity;
.source "QromListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/tencent/qrom/widget/ListView;

.field private mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/app/QromActivity;-><init>()V

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/QromListActivity;->mHandler:Landroid/os/Handler;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/QromListActivity;->mFinishedStart:Z

    .line 190
    new-instance v0, Landroid/app/QromListActivity$1;

    invoke-direct {v0, p0}, Landroid/app/QromListActivity$1;-><init>(Landroid/app/QromListActivity;)V

    iput-object v0, p0, Landroid/app/QromListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 322
    new-instance v0, Landroid/app/QromListActivity$2;

    invoke-direct {v0, p0}, Landroid/app/QromListActivity$2;-><init>(Landroid/app/QromListActivity;)V

    iput-object v0, p0, Landroid/app/QromListActivity;->mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    const v0, 0x7a03002f

    invoke-virtual {p0, v0}, Landroid/app/QromListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/app/QromListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/app/QromListActivity;->ensureList()V

    .line 305
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 239
    invoke-super {p0}, Landroid/app/QromActivity;->onContentChanged()V

    .line 240
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/QromListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/QromListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    iput-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 243
    const v1, 0x7a0f001d

    invoke-virtual {p0}, Landroid/app/QromListActivity;->getThemeResId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 245
    iget-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 247
    :cond_0
    iget-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    if-eqz v0, :cond_2

    .line 253
    iget-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 255
    :cond_2
    iget-object v1, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Landroid/app/QromListActivity;->mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 256
    iget-boolean v1, p0, Landroid/app/QromListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, p0, Landroid/app/QromListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/QromListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    :cond_3
    iget-object v1, p0, Landroid/app/QromListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/app/QromListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    iput-boolean v3, p0, Landroid/app/QromListActivity;->mFinishedStart:Z

    .line 261
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/QromListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/QromListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    invoke-super {p0}, Landroid/app/QromActivity;->onDestroy()V

    .line 229
    return-void
.end method

.method protected onListItemClick(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 208
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/app/QromListActivity;->ensureList()V

    .line 219
    invoke-super {p0, p1}, Landroid/app/QromActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    invoke-direct {p0}, Landroid/app/QromListActivity;->ensureList()V

    .line 269
    iput-object p1, p0, Landroid/app/QromListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 270
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    :cond_0
    monitor-exit p0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 283
    iget-object v0, p0, Landroid/app/QromListActivity;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 284
    return-void
.end method
