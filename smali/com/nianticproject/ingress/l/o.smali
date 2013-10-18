.class final Lcom/nianticproject/ingress/l/o;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/nianticproject/ingress/l/o;->a:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 943
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 944
    iget-object v0, p0, Lcom/nianticproject/ingress/l/o;->a:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->f(Lcom/nianticproject/ingress/l/f;)V

    .line 945
    return-void
.end method
