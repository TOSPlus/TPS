.class Lcom/tencent/qrom/app/QromDialog$1;
.super Ljava/lang/Object;
.source "QromDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromDialog;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog$1;->this$0:Lcom/tencent/qrom/app/QromDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog$1;->this$0:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->dismissDialog()V

    .line 145
    return-void
.end method
