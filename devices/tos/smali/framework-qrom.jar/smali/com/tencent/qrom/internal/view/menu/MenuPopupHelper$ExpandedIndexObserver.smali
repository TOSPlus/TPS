.class Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    .param p2, "x1"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$500(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 488
    return-void
.end method
