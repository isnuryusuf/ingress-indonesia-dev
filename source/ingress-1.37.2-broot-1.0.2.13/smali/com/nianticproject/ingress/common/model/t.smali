.class final Lcom/nianticproject/ingress/common/model/t;
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
.field final synthetic a:J

.field final synthetic b:Lcom/nianticproject/ingress/common/model/z;

.field final synthetic c:Lcom/nianticproject/ingress/common/model/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/o;JLcom/nianticproject/ingress/common/model/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/t;->c:Lcom/nianticproject/ingress/common/model/o;

    iput-wide p2, p0, Lcom/nianticproject/ingress/common/model/t;->a:J

    iput-object p4, p0, Lcom/nianticproject/ingress/common/model/t;->b:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8
    .parameter

    .prologue
    .line 675
    move-object v0, p1

    check-cast v0, Lcom/nianticproject/ingress/common/model/l;

    :try_start_0
    const-string/jumbo v1, "PlayerModel."

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/l;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".onEnergyChanged"

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/t;->c:Lcom/nianticproject/ingress/common/model/o;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/model/o;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/model/t;->c:Lcom/nianticproject/ingress/common/model/o;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/model/o;->b(Lcom/nianticproject/ingress/common/model/o;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/model/t;->a:J

    iget-object v7, p0, Lcom/nianticproject/ingress/common/model/t;->b:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface/range {v0 .. v7}, Lcom/nianticproject/ingress/common/model/l;->a(JJJLcom/nianticproject/ingress/common/model/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
