.class public Lcom/android/internal/telephony/ContactsSecurityInjector;
.super Ljava/lang/Object;
.source "ContactsSecurityInjector.java"


# static fields
.field private static sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

.field private static sDeleteWhere:Ljava/lang/reflect/Field;

.field private static sDeleteWhereArgs:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    .line 27
    sput-object v0, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beforeDispatchMMSSMSIntent(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 87
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-eq v6, v9, :cond_0

    move v6, v7

    .line 140
    :goto_0
    return v6

    .line 91
    :cond_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 92
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "action":Ljava/lang/String;
    const-string v6, "android.provider.Telephony.SMS_DELIVER"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 99
    .local v2, "compatible":Z
    const/4 v3, 0x0

    .line 100
    .local v3, "deleteWhere":Ljava/lang/String;
    const/4 v4, 0x0

    .line 103
    .local v4, "deleteWhereArgs":[Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    if-nez v6, :cond_2

    .line 104
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "mDeleteWhere"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    .line 107
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    if-nez v6, :cond_3

    .line 108
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "mDeleteWhereArgs"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    .line 111
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_4

    .line 112
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhere:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 116
    sget-object v6, Lcom/android/internal/telephony/ContactsSecurityInjector;->sDeleteWhereArgs:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 119
    const/4 v2, 0x1

    .line 126
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {p0, p2}, Lcom/android/internal/telephony/ContactsSecurityInjector;->processMMSSMSBlock(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    :try_start_1
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v8

    .line 132
    goto :goto_0

    .line 122
    :catch_0
    move-exception v5

    .line 123
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 134
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "compatible":Z
    .end local v3    # "deleteWhere":Ljava/lang/String;
    .end local v4    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_5
    move v6, v7

    .line 140
    goto/16 :goto_0
.end method

.method public static beforeDispatchMMSSMSIntent(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 35
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 39
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 40
    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 45
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 49
    .local v1, "compatible":Z
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 51
    const-string v6, "acknowledgeLastIncomingSms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 52
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    .line 55
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_4

    .line 56
    sget-object v5, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v1, 0x1

    .line 64
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/ContactsSecurityInjector;->processMMSSMSBlock(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/ContactsSecurityInjector;->sAcknowledgeLastIncomingSms:Ljava/lang/reflect/Method;

    .line 68
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 67
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 70
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 72
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static callProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 164
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 166
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 177
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "result":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 180
    .restart local v2    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v2

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static processMMSSMSBlock(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "mmssms_intent"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string v3, "content://com.tencent.contactssecurity.providers.ContactsSecurityProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    const-string v4, "process_number_mmssms_block"

    .line 151
    const/4 v5, 0x0

    .line 148
    invoke-static {p0, v3, v4, v5, v0}, Lcom/android/internal/telephony/ContactsSecurityInjector;->callProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 156
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    return v2
.end method
