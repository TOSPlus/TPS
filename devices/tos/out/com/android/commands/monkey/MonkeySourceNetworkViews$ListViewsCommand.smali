.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewsCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 17
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v11}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 166
    .local v9, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v9, :cond_11

    .line 167
    new-instance v11, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v12, 0x0

    const-string v13, "No accessibility event has occured yet"

    invoke-direct {v11, v12, v13}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 184
    :goto_10
    return-object v11

    .line 169
    :cond_11
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "packageName":Ljava/lang/String;
    :try_start_19
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v11, v10, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 174
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 175
    .local v7, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v4, "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 177
    .local v5, "fields":[Ljava/lang/reflect/Field;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_38
    if-ge v6, v8, :cond_59

    aget-object v3, v1, v6

    .line 178
    .local v3, "field":Ljava/lang/reflect/Field;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 180
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_59
    new-instance v11, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_63} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_63} :catch_6e

    goto :goto_10

    .line 181
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "fieldBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "len$":I
    :catch_64
    move-exception v2

    .line 182
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v11, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v12, 0x0

    const-string v13, "Unable to retrieve application info from PackageManager"

    invoke-direct {v11, v12, v13}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_10

    .line 183
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_6e
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v11, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v12, 0x0

    const-string v13, "Error retrieving class information"

    invoke-direct {v11, v12, v13}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_10
.end method
