.class public final Lcom/nianticproject/ingress/shared/rpc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->b(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/model/LevelUp;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/LevelUp;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->d(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
