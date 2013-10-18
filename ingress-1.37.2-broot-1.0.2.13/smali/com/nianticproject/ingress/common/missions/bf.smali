.class final Lcom/nianticproject/ingress/common/missions/bf;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bf;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bf;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bf;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->B:Lcom/nianticproject/ingress/common/w/d;

    const/4 v2, 0x4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/bd;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 325
    return-void
.end method

.method public final u_()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bf;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 332
    return-void
.end method
