.class Lcom/tencent/qrom/widget/AutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView;->setOnDismissListener(Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

.field final synthetic val$dismissListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$1;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    iput-object p2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$1;->val$dismissListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$1;->val$dismissListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;

    invoke-interface {v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;->onDismiss()V

    .line 599
    return-void
.end method
