.class public abstract Lcom/tencent/qrom/support/v4/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/support/v4/app/FragmentManager$OnBackStackChangedListener;,
        Lcom/tencent/qrom/support/v4/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 345
    sput-boolean p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 346
    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Lcom/tencent/qrom/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Lcom/tencent/qrom/support/v4/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Lcom/tencent/qrom/support/v4/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/Fragment;
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public openTransaction()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/FragmentManager;->beginTransaction()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/qrom/support/v4/app/Fragment;)V
.end method

.method public abstract removeOnBackStackChangedListener(Lcom/tencent/qrom/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/Fragment$SavedState;
.end method
