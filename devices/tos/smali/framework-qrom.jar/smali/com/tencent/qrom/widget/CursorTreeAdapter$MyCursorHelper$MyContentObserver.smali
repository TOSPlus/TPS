.class Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    .line 494
    iget-object v0, p1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    # getter for: Lcom/tencent/qrom/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->access$100(Lcom/tencent/qrom/widget/CursorTreeAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 495
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    # getter for: Lcom/tencent/qrom/widget/CursorTreeAdapter;->mAutoRequery:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->access$200(Lcom/tencent/qrom/widget/CursorTreeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    # getter for: Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    # getter for: Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    # setter for: Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 509
    :cond_0
    return-void
.end method
