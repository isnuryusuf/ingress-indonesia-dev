.class final Lcom/nianticproject/ingress/common/g/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/p;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/v;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/v;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->e(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/v;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/g/p;->d(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/b;->b(Lcom/nianticproject/ingress/common/g/f;)V

    .line 931
    return-void
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/v;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->e(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/v;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/g/p;->d(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/b;->a(Lcom/nianticproject/ingress/common/g/f;)V

    .line 926
    return-void
.end method
