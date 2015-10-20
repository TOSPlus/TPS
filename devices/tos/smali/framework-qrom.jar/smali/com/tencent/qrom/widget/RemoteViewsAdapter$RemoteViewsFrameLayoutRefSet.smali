.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation


# instance fields
.field private mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewToLinkedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    .line 337
    return-void
.end method


# virtual methods
.method public add(ILcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "layout"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 347
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 353
    .local v1, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void

    .line 350
    .end local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 351
    .restart local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 399
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 400
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 364
    if-nez p2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 367
    .local v1, "pos":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 370
    .local v3, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 371
    .local v2, "ref":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;
    invoke-static {v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1200(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 372
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 373
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 376
    .end local v2    # "ref":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 378
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeView(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 1
    .param p1, "rvfl"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    return-void
.end method
