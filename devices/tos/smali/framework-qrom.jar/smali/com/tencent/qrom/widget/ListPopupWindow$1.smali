.class Lcom/tencent/qrom/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$1;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$1;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1030
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$1;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 1033
    :cond_0
    return-void
.end method
