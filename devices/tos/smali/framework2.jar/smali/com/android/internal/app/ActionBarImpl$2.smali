.class Lcom/android/internal/app/ActionBarImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$502(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$2;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 149
    return-void
.end method
