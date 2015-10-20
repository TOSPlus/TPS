.class Lcom/tencent/qrom/widget/Toast$TN$1;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/Toast$TN;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/Toast$TN;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/tencent/qrom/widget/Toast$TN$1;->this$0:Lcom/tencent/qrom/widget/Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/qrom/widget/Toast$TN$1;->this$0:Lcom/tencent/qrom/widget/Toast$TN;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/Toast$TN;->handleShow()V

    .line 322
    return-void
.end method
