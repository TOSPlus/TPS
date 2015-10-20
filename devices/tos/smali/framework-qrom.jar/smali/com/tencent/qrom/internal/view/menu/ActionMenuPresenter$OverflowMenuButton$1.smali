.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 718
    return-void
.end method
