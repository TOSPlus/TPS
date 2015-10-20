.class Lcom/tencent/qrom/widget/FloatView$5;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/FloatView;->setSlideOutAnimator(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FloatView;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$subtitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FloatView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView$5;->this$0:Lcom/tencent/qrom/widget/FloatView;

    iput-object p2, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$5;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$600(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$5;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mDefaultTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$700(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$5;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mDefaultSubTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$800(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$5;->val$subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$5;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FloatView;->setSlideInAnimator()V

    .line 1145
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1134
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1129
    return-void
.end method
