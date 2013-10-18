.class final Lcom/nianticproject/ingress/common/missions/du;
.super Lcom/nianticproject/ingress/common/missions/z;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;Ljava/lang/String;Lcom/nianticproject/ingress/common/missions/aq;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/du;->c:Lcom/nianticproject/ingress/common/missions/dl;

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nianticproject/ingress/common/missions/z;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;ILcom/nianticproject/ingress/common/missions/aq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/z;->a()V

    .line 388
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/du;->c:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ab:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/du;->c:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->E:Lcom/nianticproject/ingress/common/missions/aq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/aq;->c()V

    .line 391
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/du;->c:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->u()V

    .line 392
    return-void
.end method
