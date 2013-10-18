.class final Lcom/nianticproject/ingress/common/missions/dt;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 370
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    const-string/jumbo v3, "first_hacked_key_guidthirdPortal"

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/dl;->a(Lcom/nianticproject/ingress/common/missions/dl;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dt;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->i(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/16 v2, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/dl;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 379
    return-void
.end method
