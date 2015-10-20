.class Lcom/tencent/qrom/widget/FloatView$2;
.super Ljava/util/TimerTask;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/FloatView;->dismissDelayed(J)V
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
    .line 328
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView$2;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$2;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FloatView;->dismissFloatView()V

    .line 331
    return-void
.end method
