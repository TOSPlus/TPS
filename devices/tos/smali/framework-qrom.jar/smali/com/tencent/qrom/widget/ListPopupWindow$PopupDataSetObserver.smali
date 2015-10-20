.class Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListPopupWindow$1;

    .prologue
    .line 1309
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 1316
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->dismiss()V

    .line 1321
    return-void
.end method
