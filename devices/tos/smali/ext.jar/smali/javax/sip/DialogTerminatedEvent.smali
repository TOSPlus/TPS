.class public Ljavax/sip/DialogTerminatedEvent;
.super Ljava/util/EventObject;
.source "DialogTerminatedEvent.java"


# instance fields
.field private mDialog:Ljavax/sip/Dialog;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "dialog"    # Ljavax/sip/Dialog;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object p2, p0, Ljavax/sip/DialogTerminatedEvent;->mDialog:Ljavax/sip/Dialog;

    .line 11
    return-void
.end method


# virtual methods
.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Ljavax/sip/DialogTerminatedEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method
