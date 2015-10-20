.class Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 332
    return-void
.end method
