.class final Lcom/nianticproject/ingress/common/model/u;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nianticproject/ingress/common/model/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/o;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/u;->b:Lcom/nianticproject/ingress/common/model/o;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/model/u;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 696
    check-cast p1, Lcom/nianticproject/ingress/common/model/l;

    :try_start_0
    const-string/jumbo v0, "PlayerModel."

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/l;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".onApChanged"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/u;->b:Lcom/nianticproject/ingress/common/model/o;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/o;->c(Lcom/nianticproject/ingress/common/model/o;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/u;->a:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(JLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
