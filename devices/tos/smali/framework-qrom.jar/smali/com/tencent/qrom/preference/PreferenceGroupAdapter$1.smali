.class Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/preference/PreferenceGroupAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;->this$0:Lcom/tencent/qrom/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;->this$0:Lcom/tencent/qrom/preference/PreferenceGroupAdapter;

    # invokes: Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->access$100(Lcom/tencent/qrom/preference/PreferenceGroupAdapter;)V

    .line 89
    return-void
.end method
