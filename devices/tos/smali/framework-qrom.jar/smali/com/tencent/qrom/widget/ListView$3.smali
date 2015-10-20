.class Lcom/tencent/qrom/widget/ListView$3;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/ListView;->removeViewWithAnimator(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0

    .prologue
    .line 4454
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView$3;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 4470
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 4465
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListView$3;->this$0:Lcom/tencent/qrom/widget/ListView;

    # invokes: Lcom/tencent/qrom/widget/ListView;->finalizeRemove()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListView;->access$700(Lcom/tencent/qrom/widget/ListView;)V

    .line 4466
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 4461
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 4457
    return-void
.end method
