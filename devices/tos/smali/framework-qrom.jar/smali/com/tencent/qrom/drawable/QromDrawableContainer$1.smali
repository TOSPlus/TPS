.class Lcom/tencent/qrom/drawable/QromDrawableContainer$1;
.super Ljava/lang/Object;
.source "QromDrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/drawable/QromDrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/drawable/QromDrawableContainer;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/drawable/QromDrawableContainer;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$1;->this$0:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$1;->this$0:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->animate(Z)V

    .line 372
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromDrawableContainer$1;->this$0:Lcom/tencent/qrom/drawable/QromDrawableContainer;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromDrawableContainer;->invalidateSelf()V

    .line 373
    return-void
.end method
