.class Lcom/tencent/qrom/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;)V
    .locals 0
    .param p1, "client"    # Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorFilter;->mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    .line 42
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorFilter;->mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "resultValue":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorFilter;->mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v2, p1}, Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 54
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 56
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 61
    :goto_0
    return-object v1

    .line 58
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 59
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorFilter;->mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v1}, Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 68
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorFilter;->mClient:Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v2, v1}, Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 71
    :cond_0
    return-void
.end method
