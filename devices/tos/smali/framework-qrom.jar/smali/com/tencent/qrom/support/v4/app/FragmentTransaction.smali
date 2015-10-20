.class public abstract Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(ILcom/tencent/qrom/support/v4/app/Fragment;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(Lcom/tencent/qrom/support/v4/app/Fragment;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract attach(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract detach(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract hide(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILcom/tencent/qrom/support/v4/app/Fragment;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(I)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(IIII)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransition(I)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method

.method public abstract show(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
.end method
