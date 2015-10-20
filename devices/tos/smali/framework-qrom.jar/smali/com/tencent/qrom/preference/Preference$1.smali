.class Lcom/tencent/qrom/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/preference/Preference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/Preference;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/preference/Preference;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/tencent/qrom/preference/Preference$1;->this$0:Lcom/tencent/qrom/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/tencent/qrom/preference/Preference$1;->this$0:Lcom/tencent/qrom/preference/Preference;

    # getter for: Lcom/tencent/qrom/preference/Preference;->mRightIconClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;
    invoke-static {v0}, Lcom/tencent/qrom/preference/Preference;->access$000(Lcom/tencent/qrom/preference/Preference;)Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/Preference$1;->this$0:Lcom/tencent/qrom/preference/Preference;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/preference/Preference$OnPreferenceRightIconClickListener;->onPreferenceRightIconClick(Lcom/tencent/qrom/preference/Preference;)Z

    .line 681
    return-void
.end method
