.class Landroid/widget/QromEditText$1;
.super Ljava/lang/Object;
.source "QromEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromEditText;->qromInitDeleteStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromEditText;


# direct methods
.method constructor <init>(Landroid/widget/QromEditText;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/QromEditText$1;->this$0:Landroid/widget/QromEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 102
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/QromEditText$1;->this$0:Landroid/widget/QromEditText;

    invoke-virtual {v0}, Landroid/widget/QromEditText;->qromSetDrawable()V

    .line 91
    return-void
.end method
