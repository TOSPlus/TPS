.class Lcom/tencent/qrom/widget/Switch$1;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/Switch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/Switch;

.field final synthetic val$checkedState:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/tencent/qrom/widget/Switch$1;->this$0:Lcom/tencent/qrom/widget/Switch;

    iput-boolean p2, p0, Lcom/tencent/qrom/widget/Switch$1;->val$checkedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 767
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/tencent/qrom/widget/Switch$1;->this$0:Lcom/tencent/qrom/widget/Switch;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/Switch$1;->val$checkedState:Z

    # invokes: Lcom/tencent/qrom/widget/Switch;->setCheckedAnimationEnd(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/Switch;->access$000(Lcom/tencent/qrom/widget/Switch;Z)V

    .line 762
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 757
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 753
    return-void
.end method
