.class public Lcom/tencent/qrom/app/QromListFragment;
.super Landroid/app/Fragment;
.source "QromListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Lcom/tencent/qrom/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/tencent/qrom/app/QromListFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/QromListFragment$1;-><init>(Lcom/tencent/qrom/app/QromListFragment;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/tencent/qrom/app/QromListFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/QromListFragment$2;-><init>(Lcom/tencent/qrom/app/QromListFragment;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .line 178
    return-void
.end method

.method private ensureList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    if-eqz v3, :cond_0

    .line 437
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 390
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 391
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_1
    instance-of v3, v2, Lcom/tencent/qrom/widget/ListView;

    if-eqz v3, :cond_4

    .line 394
    check-cast v2, Lcom/tencent/qrom/widget/ListView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 423
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mListShown:Z

    .line 424
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromListFragment;->mOnClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 425
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 426
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 427
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 428
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 396
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0x7a090129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 397
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 398
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyView:Landroid/view/View;

    .line 402
    :goto_3
    const v3, 0x7a09012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    .line 403
    const v3, 0x7a09012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    .line 404
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 405
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Lcom/tencent/qrom/widget/ListView;

    if-nez v3, :cond_6

    .line 406
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 410
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 411
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    if-nez v3, :cond_7

    .line 412
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_7
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 417
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 418
    :cond_8
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 419
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 432
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 433
    invoke-direct {p0, v5, v5}, Lcom/tencent/qrom/app/QromListFragment;->setListShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 343
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 344
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 376
    :goto_0
    return-void

    .line 350
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromListFragment;->mListShown:Z

    .line 351
    if-eqz p1, :cond_3

    .line 352
    if-eqz p2, :cond_2

    .line 353
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 359
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 364
    :cond_3
    if-eqz p2, :cond_4

    .line 365
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 371
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 286
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 278
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 270
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const v0, 0x7a03002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mListShown:Z

    .line 217
    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyView:Landroid/view/View;

    .line 218
    iput-object v2, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 220
    return-void
.end method

.method public onListItemClick(Lcom/tencent/qrom/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 234
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 207
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 296
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 303
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/QromListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 304
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 241
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Lcom/tencent/qrom/app/QromListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 242
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 244
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v3, v2}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 245
    iget-object v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v3, p1}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/app/QromListFragment;->setListShown(ZZ)V

    .line 252
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 240
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/QromListFragment;->setListShown(ZZ)V

    .line 322
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/QromListFragment;->setListShown(ZZ)V

    .line 330
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromListFragment;->ensureList()V

    .line 262
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 263
    return-void
.end method
