.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop$1;->this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop$1;->this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 655
    return-void
.end method
