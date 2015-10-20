.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field public dismissable:Z

.field dreaming:Z

.field public enabled:Z

.field hidden:Z

.field inputRestricted:Z

.field public offReason:I

.field public screenIsOn:Z

.field secure:Z

.field showing:Z

.field showingAndNotHidden:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 50
    return-void
.end method
