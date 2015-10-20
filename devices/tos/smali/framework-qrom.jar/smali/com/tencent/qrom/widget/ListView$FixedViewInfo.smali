.class public Lcom/tencent/qrom/widget/ListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/tencent/qrom/widget/ListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView$FixedViewInfo;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
