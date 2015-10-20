.class Landroid/widget/QromSearchView$1;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromSearchView;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/widget/QromSearchView$1;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Landroid/widget/QromSearchView$1;->this$0:Landroid/widget/QromSearchView;

    invoke-virtual {v1}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 179
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 180
    sget-object v1, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    iget-object v2, p0, Landroid/widget/QromSearchView$1;->this$0:Landroid/widget/QromSearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V

    .line 182
    :cond_0
    return-void
.end method
