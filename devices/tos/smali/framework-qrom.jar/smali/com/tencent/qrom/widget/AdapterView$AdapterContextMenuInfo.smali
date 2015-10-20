.class public Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 404
    iput p2, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 405
    iput-wide p3, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 406
    return-void
.end method
