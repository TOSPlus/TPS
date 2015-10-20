.class Lcom/tencent/qrom/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/DateTimePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/DateTimePickerDialog;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog$1;->this$0:Lcom/tencent/qrom/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog$1;->this$0:Lcom/tencent/qrom/app/DateTimePickerDialog;

    # invokes: Lcom/tencent/qrom/app/DateTimePickerDialog;->tryNotifyDateSet()V
    invoke-static {v0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->access$000(Lcom/tencent/qrom/app/DateTimePickerDialog;)V

    .line 114
    return-void
.end method
