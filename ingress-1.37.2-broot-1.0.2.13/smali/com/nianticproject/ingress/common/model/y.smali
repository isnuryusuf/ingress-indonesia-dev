.class final Lcom/nianticproject/ingress/common/model/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ba",
        "<",
        "Lcom/nianticproject/ingress/common/model/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/model/PlayerDamage;

.field final synthetic b:Lcom/nianticproject/ingress/common/model/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/o;Lcom/nianticproject/ingress/shared/model/PlayerDamage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/y;->b:Lcom/nianticproject/ingress/common/model/o;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/model/y;->a:Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 755
    check-cast p1, Lcom/nianticproject/ingress/common/model/l;

    :try_start_0
    const-string/jumbo v0, "PlayerModel."

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/l;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".onAttacked"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/y;->a:Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/model/PlayerDamage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
