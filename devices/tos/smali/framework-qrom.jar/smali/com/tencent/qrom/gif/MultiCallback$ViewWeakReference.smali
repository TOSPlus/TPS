.class final Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "MultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/MultiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "r"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p0, p1, :cond_1

    .line 113
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 109
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 119
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
