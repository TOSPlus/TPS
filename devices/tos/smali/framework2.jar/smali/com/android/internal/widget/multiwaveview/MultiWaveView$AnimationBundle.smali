.class Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p2, "x1"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 142
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 144
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->clear()V

    .line 147
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspend"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->mSuspended:Z

    .line 160
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 132
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 134
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 136
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 151
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 153
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$AnimationBundle;->clear()V

    .line 156
    return-void
.end method
