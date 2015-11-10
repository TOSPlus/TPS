.class Lcom/tencent/qrom/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/TimePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/qrom/app/TimePickerDialog$1;->this$0:Lcom/tencent/qrom/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog$1;->this$0:Lcom/tencent/qrom/app/TimePickerDialog;

    # invokes: Lcom/tencent/qrom/app/TimePickerDialog;->tryNotifyTimeSet()V
    invoke-static {v0}, Lcom/tencent/qrom/app/TimePickerDialog;->access$000(Lcom/tencent/qrom/app/TimePickerDialog;)V

    .line 123
    return-void
.end method
