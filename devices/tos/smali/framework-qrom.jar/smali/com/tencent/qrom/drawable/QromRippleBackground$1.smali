.class Lcom/tencent/qrom/drawable/QromRippleBackground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QromRippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/drawable/QromRippleBackground;->exitSoftware(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

.field final synthetic val$outerDuration:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromRippleBackground;I)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    iput p2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->val$outerDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 275
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    .line 259
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    const-string v2, "outerOpacity"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 261
    .local v0, "outerFadeOutAnim":Landroid/animation/ObjectAnimator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    .line 262
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 264
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->val$outerDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    # getter for: Lcom/tencent/qrom/drawable/QromRippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;
    invoke-static {}, Lcom/tencent/qrom/drawable/QromRippleBackground;->access$000()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    # getter for: Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;
    invoke-static {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->access$100(Lcom/tencent/qrom/drawable/QromRippleBackground;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$1;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    # setter for: Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;
    invoke-static {v1, v0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->access$202(Lcom/tencent/qrom/drawable/QromRippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 270
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 271
    return-void
.end method
