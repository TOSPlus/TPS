.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$3;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$3;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$3;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 997
    return-void
.end method
