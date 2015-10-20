.class Lcom/tencent/qrom/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/preference/SwitchPreference;Lcom/tencent/qrom/preference/SwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/preference/SwitchPreference;
    .param p2, "x1"    # Lcom/tencent/qrom/preference/SwitchPreference$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/tencent/qrom/preference/SwitchPreference$Listener;-><init>(Lcom/tencent/qrom/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 75
    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-virtual {v3, p2}, Lcom/tencent/qrom/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    iget-object v4, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-virtual {v4}, Lcom/tencent/qrom/preference/SwitchPreference;->getPreferenceClickListener()Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    move-result-object v4

    # setter for: Lcom/tencent/qrom/preference/SwitchPreference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    invoke-static {v3, v4}, Lcom/tencent/qrom/preference/SwitchPreference;->access$102(Lcom/tencent/qrom/preference/SwitchPreference;Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;)Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    .line 85
    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    # getter for: Lcom/tencent/qrom/preference/SwitchPreference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    invoke-static {v3}, Lcom/tencent/qrom/preference/SwitchPreference;->access$100(Lcom/tencent/qrom/preference/SwitchPreference;)Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    # getter for: Lcom/tencent/qrom/preference/SwitchPreference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    invoke-static {v3}, Lcom/tencent/qrom/preference/SwitchPreference;->access$100(Lcom/tencent/qrom/preference/SwitchPreference;)Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-interface {v3, v4}, Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/tencent/qrom/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/tencent/qrom/preference/SwitchPreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v1

    .line 90
    .local v1, "preferenceManager":Lcom/tencent/qrom/preference/PreferenceManager;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/tencent/qrom/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    .line 92
    .local v0, "listener":Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;
    const/4 v2, 0x0

    .line 93
    .local v2, "preferenceScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/preference/SwitchPreference$Listener;->this$0:Lcom/tencent/qrom/preference/SwitchPreference;

    invoke-interface {v0, v2, v3}, Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/tencent/qrom/preference/PreferenceScreen;Lcom/tencent/qrom/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method
