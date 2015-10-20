.class Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
.super Ljava/lang/Object;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/CursorTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;,
        Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
    }
.end annotation


# instance fields
.field private mContentObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

.field private mDataValid:Z

.field private mRowIDColumn:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/CursorTreeAdapter;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 414
    .local v0, "cursorPresent":Z
    :goto_0
    iput-object p2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 415
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 416
    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 417
    new-instance v1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;-><init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 418
    new-instance v1, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Lcom/tencent/qrom/widget/CursorTreeAdapter$1;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 423
    :cond_0
    return-void

    .line 413
    .end local v0    # "cursorPresent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 416
    .restart local v0    # "cursorPresent":Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    return p1
.end method


# virtual methods
.method changeCursor(Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "releaseCursors"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 461
    iput-object p1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 462
    if-eqz p1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 465
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 468
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 473
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Lcom/tencent/qrom/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method deactivate()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 483
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 484
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method getId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 438
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 445
    :cond_0
    return-wide v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveTo(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/tencent/qrom/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
