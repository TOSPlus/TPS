.class Landroid/app/QromActivity$QromContentView$2;
.super Ljava/lang/Object;
.source "QromActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/QromActivity$QromContentView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/QromActivity$QromContentView;


# direct methods
.method constructor <init>(Landroid/app/QromActivity$QromContentView;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Landroid/app/QromActivity$QromContentView$2;->this$1:Landroid/app/QromActivity$QromContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 886
    iget-object v0, p0, Landroid/app/QromActivity$QromContentView$2;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/app/QromActivity$QromContentView;->access$200(Landroid/app/QromActivity$QromContentView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/app/QromActivity$QromContentView$2;->this$1:Landroid/app/QromActivity$QromContentView;

    # getter for: Landroid/app/QromActivity$QromContentView;->mActionModeView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v1}, Landroid/app/QromActivity$QromContentView;->access$100(Landroid/app/QromActivity$QromContentView;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 889
    return-void
.end method
