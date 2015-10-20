.class Lcom/tencent/qrom/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/preference/ListPreference;->onPrepareDialogBuilder(Lcom/tencent/qrom/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/tencent/qrom/preference/ListPreference$1;->this$0:Lcom/tencent/qrom/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference$1;->this$0:Lcom/tencent/qrom/preference/ListPreference;

    # setter for: Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/tencent/qrom/preference/ListPreference;->access$002(Lcom/tencent/qrom/preference/ListPreference;I)I

    .line 257
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference$1;->this$0:Lcom/tencent/qrom/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 259
    return-void
.end method
