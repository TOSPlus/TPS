.class Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListPopupWindow$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    iget v1, v1, Lcom/tencent/qrom/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$1000(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1335
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 1337
    :cond_0
    return-void
.end method
