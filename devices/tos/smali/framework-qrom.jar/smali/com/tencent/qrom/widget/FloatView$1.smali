.class Lcom/tencent/qrom/widget/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FloatView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FloatView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView$1;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$1;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FloatView;->dismissFloatView()V

    .line 112
    return-void
.end method
