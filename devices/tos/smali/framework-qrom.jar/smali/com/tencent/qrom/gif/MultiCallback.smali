.class public Lcom/tencent/qrom/gif/MultiCallback;
.super Ljava/lang/Object;
.source "MultiCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    }
.end annotation


# instance fields
.field private final mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .line 74
    .local v2, "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    invoke-virtual {v2}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 75
    .local v1, "item":Landroid/view/View;
    if-nez v1, :cond_0

    .line 77
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    invoke-direct {v4, p1}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .line 27
    .local v1, "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    invoke-virtual {v1}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 28
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    .end local v1    # "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .line 91
    .local v2, "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    invoke-virtual {v2}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 92
    .local v1, "item":Landroid/view/View;
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_1

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    :cond_2
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .line 41
    .local v1, "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    invoke-virtual {v1}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 42
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 39
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v1    # "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .line 55
    .local v1, "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    invoke-virtual {v1}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 56
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v1    # "reference":Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
