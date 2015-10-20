.class Lcom/tencent/qrom/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/DatePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tencent/qrom/app/DatePickerDialog$1;->this$0:Lcom/tencent/qrom/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog$1;->this$0:Lcom/tencent/qrom/app/DatePickerDialog;

    # invokes: Lcom/tencent/qrom/app/DatePickerDialog;->tryNotifyDateSet()V
    invoke-static {v0}, Lcom/tencent/qrom/app/DatePickerDialog;->access$000(Lcom/tencent/qrom/app/DatePickerDialog;)V

    .line 132
    return-void
.end method
