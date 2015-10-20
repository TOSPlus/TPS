.class Lcom/tencent/qrom/drawable/QromRippleBackground$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QromRippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/drawable/QromRippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromRippleBackground;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$2;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground$2;->this$0:Lcom/tencent/qrom/drawable/QromRippleBackground;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/drawable/QromRippleBackground;->mHardwareAnimating:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->access$302(Lcom/tencent/qrom/drawable/QromRippleBackground;Z)Z

    .line 318
    return-void
.end method
