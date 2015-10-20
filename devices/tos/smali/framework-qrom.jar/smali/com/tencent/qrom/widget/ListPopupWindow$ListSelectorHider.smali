.class Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;
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
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListPopupWindow$1;

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->clearListSelection()V

    .line 1327
    return-void
.end method
