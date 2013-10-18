.class final Lcom/nianticproject/ingress/n/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/n/ad;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/s;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/nianticproject/ingress/n/t;->a:Lcom/nianticproject/ingress/n/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/n/ae;)V
    .locals 4
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/nianticproject/ingress/n/t;->a:Lcom/nianticproject/ingress/n/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/s;->b(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "modelObserver.onStateChanged(newState=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/nianticproject/ingress/n/t;->a:Lcom/nianticproject/ingress/n/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/s;->d(Lcom/nianticproject/ingress/n/s;)Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/n/t;->a:Lcom/nianticproject/ingress/n/s;

    invoke-static {v1}, Lcom/nianticproject/ingress/n/s;->c(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/n/z;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nianticproject/ingress/n/z;->a(Lcom/nianticproject/ingress/n/ae;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 540
    return-void
.end method
