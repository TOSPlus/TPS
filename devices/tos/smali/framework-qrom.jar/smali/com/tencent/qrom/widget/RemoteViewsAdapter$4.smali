.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

.field final synthetic val$position:I

.field final synthetic val$rv:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    iput p2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1900(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    .line 1083
    return-void
.end method
