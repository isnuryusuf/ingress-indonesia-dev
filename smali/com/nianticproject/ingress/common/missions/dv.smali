.class final Lcom/nianticproject/ingress/common/missions/dv;
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
    .line 396
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dv;->c:Lcom/nianticproject/ingress/common/missions/dl;

    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nianticproject/ingress/common/missions/z;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;ILcom/nianticproject/ingress/common/missions/aq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/z;->a()V

    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dv;->c:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->u()V

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dv;->c:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ad:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 403
    return-void
.end method
