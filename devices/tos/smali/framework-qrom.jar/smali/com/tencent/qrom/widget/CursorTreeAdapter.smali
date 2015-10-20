.class public abstract Lcom/tencent/qrom/widget/CursorTreeAdapter;
.super Lcom/tencent/qrom/widget/BaseExpandableListAdapter;
.source "CursorTreeAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/CursorTreeAdapter$1;,
        Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field mChildrenCursorHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCursorFilter:Lcom/tencent/qrom/widget/CursorFilter;

.field mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tencent/qrom/widget/BaseExpandableListAdapter;-><init>()V

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/qrom/widget/BaseExpandableListAdapter;-><init>()V

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/CursorTreeAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/CursorTreeAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/CursorTreeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/CursorTreeAdapter;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mAutoRequery:Z

    return v0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 85
    iput-object p2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    .line 87
    iput-boolean p3, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mAutoRequery:Z

    .line 89
    new-instance v0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Lcom/tencent/qrom/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 91
    return-void
.end method

.method private declared-synchronized releaseCursorHelpers()V
    .locals 2

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 293
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 293
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method protected abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 388
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 348
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized deactivateChildrenCursorHelper(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 339
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 340
    .local v0, "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 341
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 339
    .end local v0    # "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getChild(II)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 242
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v1

    .line 244
    .local v1, "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v1, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 245
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 246
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_0
    if-nez p4, :cond_1

    .line 251
    iget-object v3, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, p3, p5}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, "v":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v0, p3}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 256
    return-object v2

    .line 253
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    move-object v2, p4

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 182
    .local v0, "helper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end method

.method declared-synchronized getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "requestCursor"    # Z

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    .line 106
    .local v1, "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    if-nez v1, :cond_1

    .line 107
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 114
    :goto_0
    monitor-exit p0

    return-object v2

    .line 109
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    .end local v1    # "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-direct {v1, p0, v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Lcom/tencent/qrom/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    .line 111
    .restart local v1    # "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 114
    goto :goto_0

    .line 104
    .end local v1    # "cursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mCursorFilter:Lcom/tencent/qrom/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/tencent/qrom/widget/CursorFilter;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/CursorFilter;-><init>(Lcom/tencent/qrom/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mCursorFilter:Lcom/tencent/qrom/widget/CursorFilter;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mCursorFilter:Lcom/tencent/qrom/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 200
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 202
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    if-nez p3, :cond_1

    .line 207
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p2, p4}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 212
    return-object v1

    .line 209
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    move-object v1, p3

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    .line 303
    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0
    .param p1, "releaseCursors"    # Z

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 319
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 324
    invoke-super {p0}, Lcom/tencent/qrom/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 325
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    .line 330
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childrenCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 168
    .local v0, "childrenCursorHelper":Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v0, p2, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 169
    return-void
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 381
    return-void
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter;->mGroupCursorHelper:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 145
    return-void
.end method
