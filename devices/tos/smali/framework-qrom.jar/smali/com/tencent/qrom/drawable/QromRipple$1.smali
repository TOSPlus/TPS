.class Lcom/tencent/qrom/drawable/QromRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QromRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/drawable/QromRipple;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromRipple;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRipple$1;->this$0:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple$1;->this$0:Lcom/tencent/qrom/drawable/QromRipple;

    # invokes: Lcom/tencent/qrom/drawable/QromRipple;->removeSelf()V
    invoke-static {v0}, Lcom/tencent/qrom/drawable/QromRipple;->access$100(Lcom/tencent/qrom/drawable/QromRipple;)V

    .line 444
    return-void
.end method
