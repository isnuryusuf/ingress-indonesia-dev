.class final Lcom/nianticproject/ingress/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/az;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nianticproject/ingress/p;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/p;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->c(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ak;->d(I)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/nianticproject/ingress/p;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v1}, Lcom/nianticproject/ingress/AndroidComm;->e(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/ui/t;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/p;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v2}, Lcom/nianticproject/ingress/AndroidComm;->d(Lcom/nianticproject/ingress/AndroidComm;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/ui/t;->a(Landroid/view/View;)V

    .line 294
    iget-object v1, p0, Lcom/nianticproject/ingress/p;->a:Lcom/nianticproject/ingress/AndroidComm;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    .line 295
    return-void
.end method

.method public final a(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 303
    return-void
.end method
