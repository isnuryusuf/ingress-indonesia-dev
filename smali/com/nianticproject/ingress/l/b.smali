.class public abstract Lcom/nianticproject/ingress/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/b;->a:Landroid/os/Handler;

    .line 17
    return-void
.end method
