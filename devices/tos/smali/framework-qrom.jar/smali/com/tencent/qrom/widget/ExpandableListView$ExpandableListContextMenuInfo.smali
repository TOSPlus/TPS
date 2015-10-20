.class public Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1100
    iput-wide p2, p0, Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1101
    iput-wide p4, p0, Lcom/tencent/qrom/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1102
    return-void
.end method
