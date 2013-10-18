.class public abstract Lcom/nianticproject/ingress/n/p;
.super Lcom/nianticproject/ingress/cp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nianticproject/ingress/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final H()Lcom/nianticproject/ingress/n/q;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/p;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/n/r;

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/r;->c()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    return-object v0
.end method
