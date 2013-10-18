.class final Lcom/nianticproject/ingress/common/missions/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cj;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ap;->a:Lcom/nianticproject/ingress/common/missions/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 2
    .parameter

    .prologue
    .line 434
    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ap;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ag:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 437
    :cond_0
    return-void
.end method
